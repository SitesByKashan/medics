// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:Medics/cart.dart';

// class DrugDetailed extends StatefulWidget {
//   const DrugDetailed({super.key});

//   @override
//   State<DrugDetailed> createState() => _DrugDetailedState();
// }

// class _DrugDetailedState extends State<DrugDetailed> {
//   int _quantity = 1;
//   double _pricePerUnit = 1200;
//   double _totalPrice = 1200;

//   void _incrementQuantity() {
//     setState(() {
//       _quantity++;
//       _totalPrice = _quantity * _pricePerUnit;
//     });
//   }

//   void _decrementQuantity() {
//     setState(() {
//       if (_quantity > 1) {
//         _quantity--;
//         _totalPrice = _quantity * _pricePerUnit;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Drugs Detail",
//           style: GoogleFonts.inter(
//             fontSize: 16,
//             fontWeight: FontWeight.w800,
//             color: Color(0xFF101623),
//           ),
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.shopping_cart_checkout_outlined,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => MyCart()));
//             },
//           )
//         ],
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset("assets/LysineDetail.png"),
//             ],
//           ),
//           Container(
//             width: 335,
//             height: 140,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       "OBH Combi",
//                       style: GoogleFonts.inter(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w900,
//                         color: Color(0xFF101623),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       "75ml",
//                       style: GoogleFonts.inter(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w700,
//                         color: Color(0xFFADADAD),
//                       ),
//                     ),
//                     Image.asset("assets/Heart.png")
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Image.asset("assets/Star.png"),
//                     Padding(padding: EdgeInsets.all(4)),
//                     Image.asset("assets/Star.png"),
//                     Padding(padding: EdgeInsets.all(4)),
//                     Image.asset("assets/Star.png"),
//                     Padding(padding: EdgeInsets.all(4)),
//                     Image.asset("assets/Star.png"),
//                     Padding(padding: EdgeInsets.all(4)),
//                     Text(
//                       "4.0",
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF199A8E),
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         IconButton(
//                           icon: Icon(
//                             Icons.remove_circle,
//                             color: Color(0xFF199A8E),
//                           ),
//                           onPressed: _decrementQuantity,
//                         ),
//                         Text(
//                           '$_quantity',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         IconButton(
//                           icon: Icon(
//                             Icons.add_box_rounded,
//                             color: Color(0xFF199A8E),
//                           ),
//                           onPressed: _incrementQuantity,
//                         ),
//                       ],
//                     ),
//                     Text(
//                       'Rs $_totalPrice',
//                       style: GoogleFonts.inter(
//                         fontSize: 26,
//                         fontWeight: FontWeight.w600,
//                         color: Color(0xFF101623),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: 334,
//             height: 109,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Description",
//                   style: GoogleFonts.inter(
//                     fontSize: 16,
//                     color: Color(0xFF101623),
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 Text(
//                   "OBH COMBI is a cough medicine contain Paracetamol, \n Ephedrine HCL, and Chlorphenamine maleate which is \n used to relieve coughs accompanied by flu symtoms \n such as fever, headache, and sneezing...",
//                   style: GoogleFonts.inter(
//                     fontSize: 12,
//                     color: Color(0xFFADADAD),
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//                 Text(
//                   "Read More",
//                   style: GoogleFonts.inter(
//                     fontSize: 12,
//                     color: Color(0xFF199A8E),
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           InkWell(
//             child: Container(
//               width: 266,
//               height: 50,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: Color(0xFF199A8E),
//               ),
//               child: Center(
//                 child: Text(
//                   "Buy Now",
//                   style: GoogleFonts.inter(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                     color: Color(0xFFFFFFFF),
//                   ),
//                 ),
//               ),
//             ),
//             onTap: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: ((context) => MyCart())));
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Medics/cart.dart';

class DrugDetailed extends StatefulWidget {
  final String name;
  final String size;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const DrugDetailed({
    Key? key,
    required this.name,
    required this.size,
    required this.description,
    required this.imageUrl,
    required this.price,
    required this.rating,
  }) : super(key: key);

  @override
  State<DrugDetailed> createState() => _DrugDetailedState();
}

class _DrugDetailedState extends State<DrugDetailed> {
  int _quantity = 1;

  double get _totalPrice => _quantity * widget.price;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Drug Details",
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
                context,
                MaterialPageRoute(
                    builder: (context) => CartScreen(
                          cart: [],
                        )),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset(widget.imageUrl),
            ),
            _buildDrugInfo(),
            _buildDescription(),
            _buildBuyNowButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildDrugInfo() {
    return Container(
      width: double.infinity,
      height: 140,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.name,
            style: GoogleFonts.inter(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color(0xFF101623),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.size,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFADADAD),
                ),
              ),
              Image.asset("assets/Heart.png"),
            ],
          ),
          _buildRating(),
          _buildQuantityAndPrice(),
        ],
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => Icon(
              index < widget.rating ? Icons.star : Icons.star_border,
              color: Colors.amber,
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          "${widget.rating}",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF199A8E),
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }

  Widget _buildQuantityAndPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
    );
  }

  Widget _buildDescription() {
    return Container(
      width: double.infinity,
      height: 129,
      child: Column(
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
          SizedBox(height: 4),
          Text(
            widget.description,
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
    );
  }

  Widget _buildBuyNowButton() {
    return InkWell(
      child: Container(
        width: double.infinity,
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
          context,
          MaterialPageRoute(
              builder: (context) => CartScreen(
                    cart: [],
                  )),
        );
      },
    );
  }
}
