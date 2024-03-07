import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/pharmacy.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int _quantity = 1;
  int _quantity1 = 1;
  double _totalPrice = 1200;
  double _totalPrice1 = 68;
  double _pricePerUnit = 1200;
  double _pricePerUnit1 = 68;
  double _subtotal = 0;
  double _taxRate = 0.05;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
      _totalPrice = _quantity * _pricePerUnit;
      _calculateSubtotal();
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
        _totalPrice = _quantity * _pricePerUnit;
        _calculateSubtotal();
      }
    });
  }

  void _incrementQuantity1() {
    setState(() {
      _quantity1++;
      _totalPrice1 = _quantity1 * _pricePerUnit1;
      _calculateSubtotal();
    });
  }

  void _decrementQuantity1() {
    setState(() {
      if (_quantity1 > 1) {
        _quantity1--;
        _totalPrice1 = _quantity1 * _pricePerUnit1;
        _calculateSubtotal();
      }
    });
  }

  void _calculateSubtotal() {
    _subtotal = (_quantity * _pricePerUnit) + (_quantity1 * _pricePerUnit1);
  }

  double _calculateTax(double subtotal, double taxRate) {
    return subtotal * taxRate;
  }

  double _calculateTotal() {
    return _subtotal + _calculateTax(_subtotal, _taxRate);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF101623),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 334,
                height: 262,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 334,
                        height: 121,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xFFADADAD),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Image.asset("assets/Lysine.png")],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "OHB Combi",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                                Text(
                                  "75ml",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFADADAD),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove_circle,
                                        size: 18,
                                        color: Color(0xFF199A8E),
                                      ),
                                      onPressed: _decrementQuantity,
                                    ),
                                    Text(
                                      '$_quantity',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add_box_rounded,
                                        size: 18,
                                        color: Color(0xFF199A8E),
                                      ),
                                      onPressed: _incrementQuantity,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.delete_outline_rounded,
                                  color: Color(0xFF199A8E),
                                ),
                                Text(
                                  'Rs $_totalPrice',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 334,
                        height: 121,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xFFADADAD),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Image.asset("assets/Calvit.png")],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Panadol",
                                  style: GoogleFonts.inter(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                                Text(
                                  "20pcs",
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFADADAD),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.remove_circle,
                                        size: 18,
                                        color: Color(0xFF199A8E),
                                      ),
                                      onPressed: _decrementQuantity1,
                                    ),
                                    Text(
                                      '$_quantity1',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add_box_rounded,
                                        size: 18,
                                        color: Color(0xFF199A8E),
                                      ),
                                      onPressed: _incrementQuantity1,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.delete_outline_rounded,
                                  color: Color(0xFF199A8E),
                                ),
                                Text(
                                  'Rs $_totalPrice1',
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 335,
            height: 125,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Details",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF101623),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Subtotal",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF555555),
                      ),
                    ),
                    Text(
                      "Rs $_subtotal",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF555555),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Taxes",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF555555),
                      ),
                    ),
                    Text(
                      "Rs ${_calculateTax(_subtotal, _taxRate)}",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF555555),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF101623),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Rs ${_calculateTotal()}",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF101623),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 334,
            height: 83,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Method",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF101623),
                  ),
                ),
                Container(
                  width: 334,
                  height: 49,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: Color(0xFFE8F3F1),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 20,
                        ),
                        child: Text(
                          "VISA",
                          style: GoogleFonts.inter(
                            fontStyle: FontStyle.italic,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF1A1F71),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 20,
                        ),
                        child: Text(
                          "Change",
                          style: GoogleFonts.inter(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFADADAD),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 107,
                height: 51,
                child: Column(
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xFFADADAD),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Rs ${_calculateTotal()}",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Color(0xFF101623),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      backgroundColor: Color(0xFFFFFFFF),
                      content: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/Done.png"),
                          Container(
                            width: 273,
                            height: 135,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Payment Success",
                                  style: GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF101623),
                                  ),
                                ),
                                Text(
                                  "Your payment has been successful, you can have \n a consultation session \n with your trusted doctor",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFA1A8B0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Pharmacy()),
                              (route) => false,
                            );
                          },
                          child: Center(
                            child: Container(
                              width: 183,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color(0xFF199A8E),
                              ),
                              child: Center(
                                child: Text(
                                  "Back To Home",
                                  style: GoogleFonts.inter(
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: Container(
                  width: 192,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF199A8E),
                  ),
                  child: Center(
                    child: Text(
                      "Checkout",
                      style: GoogleFonts.inter(
                        color: Color(0xFFFFFFFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
