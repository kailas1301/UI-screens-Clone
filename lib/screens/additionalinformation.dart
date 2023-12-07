import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class AdditionalInformation extends StatefulWidget {
  const AdditionalInformation({super.key});

  @override
  State<AdditionalInformation> createState() => _AdditionalInformationState();
}

class _AdditionalInformationState extends State<AdditionalInformation> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Additional Information"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.share_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Share Dukaan App",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500))
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      ">",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.language_outlined,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Change Language",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500))
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      ">",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Ionicons.logo_whatsapp,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("WhatsApp Chat Support",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w500))
                  ],
                ),
                Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
                    });
                  },
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.lock_outline,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("Privacy Policy",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.star_border_outlined,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("Rate Us",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.logout_outlined,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text("Sign Out",
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w500))
              ],
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Version',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '2.4.2',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.grey,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
