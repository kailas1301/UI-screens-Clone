import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:uiscreens/screens/aboutapp.dart';
import 'package:uiscreens/screens/additionalinformation.dart';
import 'package:uiscreens/screens/catalougue.dart';
import 'package:uiscreens/screens/ordersPage.dart';
import 'package:uiscreens/screens/paymentscreen.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({Key? key})
      : super(key: key); // Use 'Key?' instead of 'super.key'

  @override
  State<ManageStore> createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  int myIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text("Manage Store",
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500)),
        centerTitle: true,
        toolbarHeight: 60,
      ),
      body: Container(
        color: Colors.grey.shade300,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orange.shade700,
                              borderRadius: BorderRadius.circular(
                                  5), // Adjust the radius as needed
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Ionicons.megaphone_outline,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                          Text("Marketing \nDesigns",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PaymentScreen(),
                          ));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green.shade500,
                                borderRadius: BorderRadius.circular(
                                    5), // Adjust the radius as needed
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.currency_rupee_rounded,
                                  size: 25,
                                ),
                              ),
                            ),
                            Text("Online \nPayments",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 230, 187, 78),
                              borderRadius: BorderRadius.circular(
                                  5), // Adjust the radius as needed
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.calculate_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text("Discount \nCoupons",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 33, 131, 136),
                              borderRadius: BorderRadius.circular(
                                  5), // Adjust the radius as needed
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.person_2_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text("My \nCustomers",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade500,
                              borderRadius: BorderRadius.circular(
                                  5), // Adjust the radius as needed
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.qr_code_2_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text("Store QR \nCode",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AboutApp(),
                          ));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple.shade900,
                                borderRadius: BorderRadius.circular(
                                    5), // Adjust the radius as needed
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.currency_rupee_outlined,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text("Extra \nCharges",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 175,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          10), // Adjust the radius as needed
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink.shade500,
                                  borderRadius: BorderRadius.circular(
                                      5), // Adjust the radius as needed
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Icon(
                                    Icons.text_fields,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                  width: 45,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade600,
                                    borderRadius: BorderRadius.circular(
                                        5), // Adjust the radius as needed
                                  ),
                                  child: Center(
                                    child: Text("NEW",
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500)),
                                  )),
                            ],
                          ),
                          Text("Order\nForm",
                              style: GoogleFonts.poppins(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
            onTap: (Index) {
              setState(() {
                myIndex = Index;
                if (myIndex == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          OrderPage(), // Replace with your AccountPage widget
                    ),
                  );
                } else if (myIndex == 2) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          CataloguePage(), // Replace with your AccountPage widget
                    ),
                  );
                } else if (myIndex == 4) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          AdditionalInformation(), // Replace with your AccountPage widget
                    ),
                  );
                }
              });
            },
            currentIndex: myIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 35,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.currency_rupee_outlined,
                    size: 35,
                  ),
                  label: 'Orders'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.view_comfy_alt_outlined,
                    size: 35,
                  ),
                  label: 'Products'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.stacked_bar_chart_outlined,
                    size: 35,
                  ),
                  label: 'Manage'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_outlined,
                    size: 35,
                  ),
                  label: 'Account'),
            ]),
      ),
    );
  }
}
