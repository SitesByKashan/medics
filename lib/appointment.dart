import 'package:flutter/material.dart';
import 'home.dart'; // Importing the Home screen

class AppointmentScreen extends StatefulWidget {
  final Map<String, String> doctor;

  AppointmentScreen(this.doctor);

  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen>
    with SingleTickerProviderStateMixin {
  String? selectedPaymentMethod;
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  TextEditingController _cardHolderNameController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();
  TextEditingController _expiryDateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    _animationController.forward();
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _processPayment() {
    // Validate the form
    if (selectedPaymentMethod == null) {
      _showErrorDialog("Please select a payment method.");
      return;
    }

    if (selectedPaymentMethod == 'Credit Card' ||
        selectedPaymentMethod == 'Debit Card') {
      if (!_formKey.currentState!.validate()) {
        _showErrorDialog(
            "Please ensure all card details are correctly filled.");
        return;
      }
    }

    if (_dateController.text.isEmpty || _timeController.text.isEmpty) {
      _showErrorDialog("Please enter the date and time for your appointment.");
      return;
    }

    // If all validation passes, show success dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Payment Successful'),
          content: Text(
            'Your payment has been processed successfully, and your appointment with ${widget.doctor['name']} is confirmed for ${_dateController.text} at ${_timeController.text}.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) =>
                          Home(user: null)), // Navigate to Home
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Book Appointment',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor's Image
              Center(
                child: ClipOval(
                  child: Image.asset(
                    widget.doctor['image']!,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              // Doctor's Name
              Text(
                'Doctor: ${widget.doctor['name']}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              // Hospital Name
              Text(
                'Hospital: ${widget.doctor['hospital']}',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              SizedBox(height: 8),
              // About Doctor
              Text(
                'About: ${widget.doctor['about']}',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 8),
              // Timing Details
              Text(
                'Timing: ${widget.doctor['timing']}',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              SizedBox(height: 16),
              // Charges
              Text(
                'Charges: ${widget.doctor['charges']}',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
              SizedBox(height: 16),
              // Date and Time Selection
              Text(
                'Select Date and Time:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: 'Enter Date',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.all(12),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _timeController,
                decoration: InputDecoration(
                  labelText: 'Enter Time',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.all(12),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a time';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              // Payment Method
              Text(
                'Select Payment Method:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              // Dropdown for Payment Method
              DropdownButton<String>(
                isExpanded: true,
                value: selectedPaymentMethod,
                items: <String>['Credit Card', 'Debit Card', 'Cash']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPaymentMethod = newValue;
                  });
                },
                hint: Text('Choose payment method'),
              ),
              SizedBox(height: 16),
              // Animated Form Container
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(
                        0, _animation.value * 200), // Adjust the pop-up effect
                    child: child,
                  );
                },
                child: selectedPaymentMethod == 'Credit Card' ||
                        selectedPaymentMethod == 'Debit Card'
                    ? Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _cardHolderNameController,
                              decoration: InputDecoration(
                                labelText: 'Card Holder Name',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.grey[200],
                                contentPadding: EdgeInsets.all(12),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card holder name';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 8),
                            TextFormField(
                              controller: _cardNumberController,
                              decoration: InputDecoration(
                                labelText: 'Card Number',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.grey[200],
                                contentPadding: EdgeInsets.all(12),
                              ),
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter card number';
                                } else if (value.length != 16) {
                                  return 'Card number must be 16 digits';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: _cvvController,
                                    decoration: InputDecoration(
                                      labelText: 'CVV',
                                      border: OutlineInputBorder(),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding: EdgeInsets.all(12),
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter CVV';
                                      } else if (value.length != 3) {
                                        return 'CVV must be 3 digits';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: TextFormField(
                                    controller: _expiryDateController,
                                    decoration: InputDecoration(
                                      labelText: 'Expiry Date (MM/YY)',
                                      border: OutlineInputBorder(),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      contentPadding: EdgeInsets.all(12),
                                    ),
                                    keyboardType: TextInputType.datetime,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter expiry date';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : SizedBox.shrink(),
              ),
              SizedBox(height: 16),
              // Process Payment or Book Appointment Button
              Center(
                child: ElevatedButton(
                  onPressed: _processPayment,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 48), // Set the minimum button width
                  ),
                  child: Text(
                    selectedPaymentMethod == 'Credit Card' ||
                            selectedPaymentMethod == 'Debit Card'
                        ? 'Process Payment'
                        : 'Book Appointment',
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
