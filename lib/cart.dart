import 'package:Medics/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  final List<Map<String, dynamic>> cart;

  const CartScreen({Key? key, required this.cart}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late List<Map<String, dynamic>> cart;

  @override
  void initState() {
    super.initState();
    cart = widget.cart; // Initialize the cart from the widget
  }

  double getTotalAmount() {
    return cart.fold(
      0,
      (sum, item) => sum + (item['product']['price'] * item['quantity']),
    );
  }

  @override
  Widget build(BuildContext context) {
    double totalAmount = getTotalAmount();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Bag',
          style: TextStyle(
              color: Colors.white), // Set the title text color to white
        ),
        centerTitle: true, // Center the title
        backgroundColor: Color(0xFF199A8E), // Your theme color
        iconTheme:
            IconThemeData(color: Colors.white), // Set back icon color to white
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? Center(
                    child: Text(
                      "Your cart is empty",
                      style: GoogleFonts.inter(
                          fontSize: 20, color: Color(0xFF101623)),
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        child: ListTile(
                          leading:
                              Image.asset(item['product']['image'], width: 50),
                          title: Text(item['product']['name']),
                          subtitle: Text("Quantity: ${item['quantity']}"),
                          trailing: Text(
                              "Total: Rs ${item['product']['price'] * item['quantity']}"),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "Total Amount: Rs $totalAmount",
                  style: GoogleFonts.inter(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _showCheckoutDialog(context);
                    },
                    child: Text("Checkout"),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _clearCart();
                    },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: Text("Clear Cart",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCheckoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Checkout"),
          content: SingleChildScrollView(
            child: CheckoutForm(onSubmit: (String? paymentMethod) {
              if (paymentMethod != null) {
                _showOrderConfirmationDialog(context);
              } else {
                _showErrorDialog(context);
              }
            }),
          ),
        );
      },
    );
  }

  void _showOrderConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Order Confirmation"),
          content: Text("Your order has been successfully placed!"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                Navigator.of(context).pop(); // Close the checkout dialog
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home(user: null)),
                  (route) => false,
                ); // Navigate to home screen
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("Please fill out all fields before proceeding."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the error dialog
                Navigator.of(context).pop(); // Close the checkout dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _clearCart() {
    setState(() {
      cart.clear(); // Clear the cart list
    });
  }
}

class CheckoutForm extends StatefulWidget {
  final Function(String?) onSubmit;

  const CheckoutForm({Key? key, required this.onSubmit}) : super(key: key);

  @override
  _CheckoutFormState createState() => _CheckoutFormState();
}

class _CheckoutFormState extends State<CheckoutForm> {
  String? _paymentMethod;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  final TextEditingController _cardHolderNameController =
      TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();

  bool _validateForm() {
    return _nameController.text.isNotEmpty &&
        _addressController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _contactNumberController.text.isNotEmpty &&
        (_paymentMethod != 'Credit Card' && _paymentMethod != 'Debit Card' ||
            (_cardHolderNameController.text.isNotEmpty &&
                _cardNumberController.text.isNotEmpty &&
                _cvvController.text.isNotEmpty &&
                _expiryDateController.text.isNotEmpty));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _nameController,
          decoration: InputDecoration(labelText: "Name"),
        ),
        TextField(
          controller: _addressController,
          decoration: InputDecoration(labelText: "Address"),
        ),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(labelText: "Email"),
        ),
        TextField(
          controller: _contactNumberController,
          decoration: InputDecoration(labelText: "Contact Number"),
        ),
        DropdownButtonFormField<String>(
          value: _paymentMethod,
          onChanged: (String? newValue) {
            setState(() {
              _paymentMethod = newValue;
            });
          },
          items: <String>['Credit Card', 'Debit Card', 'Cash on Delivery']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          decoration: InputDecoration(labelText: "Payment Method"),
        ),
        if (_paymentMethod == 'Credit Card' ||
            _paymentMethod == 'Debit Card') ...[
          TextField(
            controller: _cardHolderNameController,
            decoration: InputDecoration(labelText: "Card Holder Name"),
          ),
          TextField(
            controller: _cardNumberController,
            decoration: InputDecoration(labelText: "Card Number"),
          ),
          TextField(
            controller: _cvvController,
            decoration: InputDecoration(labelText: "CVV"),
            obscureText: true,
          ),
          TextField(
            controller: _expiryDateController,
            decoration: InputDecoration(labelText: "Expiry Date (MM/YY)"),
          ),
        ],
        ElevatedButton(
          onPressed: () {
            if (_validateForm()) {
              widget.onSubmit(_paymentMethod);
            } else {
              _showErrorDialog(context);
            }
          },
          child: Text("Process Payment"),
        ),
      ],
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text("Please fill out all fields before proceeding."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the error dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
