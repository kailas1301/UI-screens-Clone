import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payments",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey, // Shadow color
                    offset:
                        Offset(1, 1), // Shadow offset (horizontal, vertical)
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transaction Limit",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                            height: 8), // Add space between title and subtitle
                      ],
                    ),
                    subtitle: Text(
                      "A fee limit up to which you will receive the online payments directly in your bank.",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: LinearProgressIndicator(
                      minHeight: 10,
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.blue,
                      value: 0.3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "36,668 left out of 50,000",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Increase Limit",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Default Method",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Online Payments ",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Colors.grey.shade500,
                        ))
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
                Text(
                  "Payment Profile",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Bank Account ",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Colors.grey.shade500,
                        ))
                  ],
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Overview",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Life Time ",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_downward,
                          size: 25,
                          color: Colors.grey.shade500,
                        ))
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 180,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade800,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT ON HOLD',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '₹ 0',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 180,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AMOUNT RECIEVED',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '₹13,332',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Transactions",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade300),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "On hold",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Payouts(15)",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade300),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Refunds",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const ProductList(
                imgSrc: 'assets/images/images25.jpeg',
                orderNo: 'Order #1688068',
                price: '₹799',
                date: 'Apr 11,10.54 AM',
                depositedDetails: '₹799 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/mug.jpg',
                orderNo: 'Order #1457741',
                price: '₹397.4',
                date: 'Apr 26,07.47 AM',
                depositedDetails: '₹397.4 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt9.jpg',
                orderNo: 'Order #1408896',
                price: '₹799',
                date: 'Jul 12,02.06 PM',
                depositedDetails: '₹686.4 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt19.jpg',
                orderNo: 'Order #1369633',
                price: '₹1123.5',
                date: 'Apr 02,11.29 AM',
                depositedDetails: '₹1123.5 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt22.webp',
                orderNo: 'Order #1370125',
                price: '₹1722.75',
                date: 'Apr 02,11.29 AM',
                depositedDetails: '₹1722.75 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/download21.jpeg',
                orderNo: 'Order #1359971',
                price: '₹599.25',
                date: 'Apr 1,10.37 AM',
                depositedDetails: '₹599.25 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt23.webp',
                orderNo: 'Order #1265103',
                price: '₹2,297',
                date: 'Mar,11.19 AM',
                depositedDetails: '₹2,297 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/images16.jpeg',
                orderNo: 'Order #1173537',
                price: '₹599.25',
                date: 'Apr 11,10.54 AM',
                depositedDetails: '₹599.25 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/images17.jpeg',
                orderNo: 'Order #1173537',
                price: '₹524.25',
                date: 'Feb 21,01.25 PM',
                depositedDetails: '₹524.25 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt15.jpg',
                orderNo: 'Order #1174245',
                price: '₹699',
                date: 'Feb 21,10.20 AM',
                depositedDetails: '₹699 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt16.jpg',
                orderNo: 'Order #1177731',
                price: '₹1123.5',
                date: 'Feb 20,09.54 AM',
                depositedDetails: '₹1123.5 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/shirt18.jpg',
                orderNo: 'Order #1174282',
                price: '₹799',
                date: 'Feb 19,10.47 AM',
                depositedDetails: '₹799 deposited to 58860200000138 '),
            const ProductList(
                imgSrc: 'assets/images/hmgoepprod26.jpeg',
                orderNo: 'Order #1164892',
                price: '₹524.25',
                date: 'Feb 13,07.57 AM',
                depositedDetails: '₹524.25 deposited to 58860200000138 ')
          ],
        ),
      )),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.imgSrc,
    required this.orderNo,
    required this.price,
    required this.date,
    required this.depositedDetails,
  });
  final String imgSrc;
  final String orderNo;
  final String price;
  final String date;
  final String depositedDetails;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                height: 70,
                width: 70,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.asset(imgSrc)),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 157 + 156 - 43 - 39 + 40 + 15,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(orderNo,
                              style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                        ),
                        Text(price,
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.blue.shade600,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 212 - 15 + 16 + 15 + 30 + 17 + 11,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(date,
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 5,
                              backgroundColor: Colors.green,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text('Successfull',
                                style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w400)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(depositedDetails,
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic)),
          const SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey.shade600,
          )
        ],
      ),
    );
  }
}
