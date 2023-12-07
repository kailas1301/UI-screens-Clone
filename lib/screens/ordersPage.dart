import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:ionicons/ionicons.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text('Order #1688068'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('May 31, 05:42 PM',
                      style: GoogleFonts.poppins(fontSize: 16)),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue.shade700,
                        radius: 7,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Delivered',
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: Colors.grey.shade600))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1 ITEM',
                    style: GoogleFonts.poppins(
                        fontSize: 16, color: Colors.grey.shade500),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.description_outlined,
                          color: Color.fromARGB(255, 6, 80, 95)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'RECEIPT',
                        style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: const Color.fromARGB(255, 6, 80, 95)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: Image.asset('assets/images/shirt.jpg'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Explore | Men | Navy Blue',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                          )),
                      Text('1 piece',
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                          )),
                      Text('Size XL',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 233, 241, 243),
                                    borderRadius: BorderRadius.circular(3.0),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 27, 86, 100),
                                        width: 1)),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: GoogleFonts.poppins(
                                      fontSize: 13,
                                      color: const Color.fromARGB(255, 27, 86,
                                          100), // You may want to set the text color to make it visible
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "x",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '₹799',
                                style: GoogleFonts.roboto(
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 190,
                          ),
                          Text(
                            '₹799',
                            style: GoogleFonts.roboto(fontSize: 15),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item Total',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    '₹799',
                    style: GoogleFonts.roboto(
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery',
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'FREE',
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 38, 122, 41)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Grand Total',
                    style: GoogleFonts.poppins(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '₹799',
                    style: GoogleFonts.roboto(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'CUSTOMER DETAILS',
                    style: GoogleFonts.poppins(
                        fontSize: 14, color: Colors.grey.shade600),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.share_outlined,
                        color: Color.fromARGB(255, 27, 116, 138),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'SHARE',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 27, 116, 138)),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deepa',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '+91-7829000484',
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Icon(
                        Ionicons.call_outline,
                        color: Color.fromARGB(255, 27, 116, 138),
                        size: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        IonIcons.logo_whatsapp,
                        color: Color.fromARGB(255, 38, 122, 41),
                        size: 30,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Address",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  Text("D 1101 Chartered Beverly \nHills ,Subramanyapuram P.O",
                      style: GoogleFonts.poppins(fontSize: 15)),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("City",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      Text("Banglore",
                          style: GoogleFonts.poppins(fontSize: 15)),
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Pincode",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      Text("560061", style: GoogleFonts.poppins(fontSize: 15)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Payment",
                          style: GoogleFonts.poppins(
                              fontSize: 15, fontWeight: FontWeight.w600)),
                      Text("Online", style: GoogleFonts.poppins(fontSize: 15)),
                    ],
                  ),
                  Container(
                      width: 65,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(
                            5), // Adjust the radius as needed
                      ),
                      child: Center(
                        child: Text("PAID",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: Colors.green.shade600,
                                fontWeight: FontWeight.w700)),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              const SizedBox(
                height: 10,
              ),
              Text('ADDITIONAL INFORMATIONS',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("State",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  Text("Karnataka", style: GoogleFonts.poppins(fontSize: 15)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w600)),
                  Text("greeniceaqua@gmail.com",
                      style: GoogleFonts.poppins(fontSize: 15)),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(
                          width: 1, color: Color.fromARGB(255, 27, 116, 138))
                      // Curved border
                      ),
                ),
                child: SizedBox(
                  height: 45,
                  width: double.infinity, // Infinite width
                  child: Center(
                    child: Text(
                      'Share Receipt',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 27, 116, 138),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
