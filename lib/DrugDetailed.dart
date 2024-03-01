import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/cart.dart';

class DrugDetailed extends StatefulWidget {
  const DrugDetailed({super.key});

  @override
  State<DrugDetailed> createState() => _DrugDetailedState();
}

class _DrugDetailedState extends State<DrugDetailed> {
  int _quantity = 1;
  double _pricePerUnit = 1200;
  double _totalPrice = 1200;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
      _totalPrice = _quantity * _pricePerUnit;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
        _totalPrice = _quantity * _pricePerUnit;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Drugs Detail",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Color(0xFF101623),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart_checkout_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyCart()));
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/LysineDetail.png"),
            ],
          ),
          Container(
            width: 335,
            height: 140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "OBH Combi",
                      style: GoogleFonts.inter(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFF101623),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "75ml",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFADADAD),
                      ),
                    ),
                    Image.asset("assets/Heart.png")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/Star.png"),
                    Padding(padding: EdgeInsets.all(4)),
                    Image.asset("assets/Star.png"),
                    Padding(padding: EdgeInsets.all(4)),
                    Image.asset("assets/Star.png"),
                    Padding(padding: EdgeInsets.all(4)),
                    Image.asset("assets/Star.png"),
                    Padding(padding: EdgeInsets.all(4)),
                    Text(
                      "4.0",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF199A8E),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle,
                            color: Color(0xFF199A8E),
                          ),
                          onPressed: _decrementQuantity,
                        ),
                        Text(
                          '$_quantity',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.add_box_rounded,
                            color: Color(0xFF199A8E),
                          ),
                          onPressed: _incrementQuantity,
                        ),
                      ],
                    ),
                    Text(
                      'Rs $_totalPrice',
                      style: GoogleFonts.inter(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
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
            height: 109,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Description",
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Color(0xFF101623),
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "OBH COMBI is a cough medicine contain Paracetamol, \n Ephedrine HCL, and Chlorphenamine maleate which is \n used to relieve coughs accompanied by flu symtoms \n such as fever, headache, and sneezing...",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Color(0xFFADADAD),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "Read More",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Color(0xFF199A8E),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              width: 266,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF199A8E),
              ),
              child: Center(
                child: Text(
                  "Buy Now",
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: ((context) => MyCart())));
            },
          ),
        ],
      ),
    );
  }
}
