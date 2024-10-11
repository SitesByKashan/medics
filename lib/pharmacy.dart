import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'DrugDetailed.dart';
import 'cart.dart';
import 'doctorProfile.dart';
import 'home.dart';
import 'profile.dart';

class Pharmacy extends StatefulWidget {
  const Pharmacy({super.key});

  @override
  State<Pharmacy> createState() => _PharmacyState();
}

class _PharmacyState extends State<Pharmacy> {
  List<Map<String, dynamic>> products = [
    {
      "name": "Panadol",
      "quantity": "20pcs",
      "price": 40,
      "image": "assets/Flechos.png",
      "detailDescription":
          "Panadol (Paracetamol) is a widely used over-the-counter medication primarily indicated for the relief of mild to moderate pain, including headaches, toothaches, and muscle aches.",
      "rating": 4.5,
    },
    {
      "name": "Bodrex Herbal",
      "quantity": "100ml",
      "price": 500,
      "image": "assets/Lysine.png",
      "detailDescription":
          "Bodrex Herbal is a herbal remedy designed to provide relief from headaches and fever.",
      "rating": 4.0,
    },
    {
      "name": "Konidin",
      "quantity": "3pcs",
      "price": 999,
      "image": "assets/Vitamin D.png",
      "detailDescription":
          "Konidin is an effective medication used to relieve allergy symptoms.",
      "rating": 4.8,
    },
  ];

  List<Map<String, dynamic>> filteredProducts = [];
  String searchQuery = '';
  List<Map<String, dynamic>> cart = [];
  String PharmacyPic = "assets/Pharmacy.png";
  int _selectedIndex = 0; // Track the selected index for bottom navigation

  @override
  void initState() {
    super.initState();
    filteredProducts =
        products; // Initialize filteredProducts with all products
  }

  void _showProductDialog(Map<String, dynamic> product) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        int quantity = 1; // Local quantity variable

        return AlertDialog(
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(product['image'], width: 100),
                    SizedBox(height: 10),
                    Text(
                      product['name'],
                      style: GoogleFonts.inter(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text("Price: Rs ${product['price']}"),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--; // Update quantity using setState
                              });
                            }
                          },
                        ),
                        Text("$quantity"),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              quantity++; // Update quantity using setState
                            });
                          },
                        ),
                      ],
                    ),
                    Text(
                      "Total: Rs ${product['price'] * quantity}", // Total price below quantity
                    ),
                    SizedBox(height: 10),
                    Text(
                      product['detailDescription'],
                      style: GoogleFonts.inter(fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Add product to cart logic
                        cart.add({
                          'product': product,
                          'quantity': quantity,
                        });
                        Navigator.pop(context); // Close the product dialog

                        // Show a confirmation dialog
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Success"),
                              content: Text(
                                  "${product['name']} successfully added to your bag."),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context); // Close the confirmation dialog
                                    // Navigate to the cart screen
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CartScreen(cart: cart),
                                      ),
                                    );
                                  },
                                  child: Text("OK"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: Text("Add to Bag"),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  void _filterProducts(String query) {
    final filteredList = products.where((product) {
      final nameLower = product['name'].toLowerCase();
      final queryLower = query.toLowerCase();
      return nameLower.contains(queryLower);
    }).toList();

    setState(() {
      filteredProducts = filteredList;
      searchQuery = query;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // Handle navigation to different screens based on index
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(user: null), // Update this line if needed
        ),
      );
    } else if (index == 1) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => CartScreen(cart: cart)));
    } else if (index == 2) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Profile()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF199A8E),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Pharmacy",
          style: GoogleFonts.inter(
            fontSize: 16,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(cart: cart),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap body with SingleChildScrollView
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 20),
            _buildSearchBar(),
            SizedBox(height: 20),
            _buildPrescriptionUploadSection(),
            SizedBox(height: 20),
            _buildProductSection("Popular Products"),
            SizedBox(height: 20),
            _buildProductSection("Products on Sale"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 79,
        width: double.infinity,
        color: Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              child: Icon(
                Icons.home_outlined,
                color: Color(0xFF199A8E),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(user: null),
                  ),
                );
              },
            ),
            InkWell(
              child: Icon(
                Icons.message_outlined,
                color: Color(0xFF199A8E),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorProfilesScreen(),
                  ),
                );
              },
            ),
            InkWell(
              child: Image.asset(
                PharmacyPic,
                height: 25,
                width: 25,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Pharmacy()));
              },
            ),
            InkWell(
              child: Icon(
                Icons.person_outlined,
                color: Color(0xFF199A8E),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile()));
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar() {
    return Center(
      child: Container(
        width: 324,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Color(0xFFFBFBFB),
          border: Border.all(color: Color(0xFFE8F3F1)),
        ),
        child: TextField(
          onChanged: _filterProducts,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: Icon(Icons.search, color: Color(0xFFADADAD)),
            ),
            hintText: "Search Drugs, Category",
            hintStyle:
                GoogleFonts.inter(fontSize: 12, color: Color(0xFFADADAD)),
          ),
        ),
      ),
    );
  }

  Widget _buildPrescriptionUploadSection() {
    return Container(
      width: 335,
      height: 135,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFE8F3F1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Order quickly with \n Prescription",
                style: GoogleFonts.inter(
                  color: Color(0xFF101623),
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF199A8E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Implement upload prescription functionality
                },
                child: Text(
                  "Upload Prescription",
                  style: GoogleFonts.inter(color: Colors.white),
                ),
              ),
            ],
          ),
          Image.asset(
            "assets/contractrqe 1.png",
            width: 100,
          ),
        ],
      ),
    );
  }

  Widget _buildProductSection(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              return _buildProductCard(filteredProducts[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(Map<String, dynamic> product) {
    return GestureDetector(
      onTap: () {
        _showProductDialog(product); // Show the product dialog on tap
      },
      child: Container(
        width: 140,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(product['image'], width: 100, height: 100),
            SizedBox(height: 5),
            Text(
              product['name'],
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Rs ${product['price']}",
              style: GoogleFonts.inter(fontSize: 12),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
