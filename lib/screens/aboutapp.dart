import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: AboutApp(),
  ));
}

class AboutApp extends StatefulWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  bool isTextVisible = false;
  final controller = YoutubePlayerController;
  final videoId = YoutubePlayer.convertUrlToId(
          'https://youtu.be/1hy3R5giaY4?si=eqyBydYhipoIZHmI') ??
      '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Dukan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                color: Colors.blue,
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Container(
                    height: 250,
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 100,
                            width: 305,
                            child: Image.asset(
                                'assets/images/dukaan-logojpg.webp'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Text(
                            'Get Dukaan Premium for just ₹4999/year',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'All the advanced features for scaling your\nbusiness',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Features',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const FeaturesWidget(
                  circleIcon: Icons.language_outlined,
                  title: 'Custom domain name',
                  subTitle:
                      'Get your own custom domain and\nbuild your brand on the internet',
                ),
                const FeaturesWidget(
                  circleIcon: Icons.verified_outlined,
                  title: 'Verified seller badge',
                  subTitle:
                      'Get a green verified badge under your \nstore name and build trust',
                ),
                const FeaturesWidget(
                  circleIcon: Icons.laptop_chromebook_outlined,
                  title: 'Dukaan for PC',
                  subTitle:
                      'Access Dukaan on your PC and\nmanage your store easily',
                ),
                const FeaturesWidget(
                  circleIcon: Icons.headset_mic_outlined,
                  title: 'Priority Customer Support',
                  subTitle:
                      'Get your questions resolved with our\npriority customer support',
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 5,
            height: 2,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is Dukaan Premium?',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: YoutubePlayer(
                        controller: YoutubePlayerController(
                            initialVideoId: videoId,
                            flags: const YoutubePlayerFlags(autoPlay: false)))),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.grey.shade300,
            thickness: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Frequently asked questions',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What type of businesses can use Dukaan\nPremium?',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isTextVisible =
                                      !isTextVisible; // Toggle visibility
                                });
                              },
                              icon: Icon(
                                  isTextVisible ? Icons.remove : Icons.add),
                            ),
                          ],
                        ),
                        Visibility(
                          visible: isTextVisible,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Dukan caters to a wide variety of sellers.Be it a small grocery store or big legacy brand - anyone who wants to sell their products/service online-Dukaan is the perfect platform for you.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What is your refund policy',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Will there be an automatic charge after \nthe paid trail?',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What payment methods do you offer?',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What happens when my free trail ends?',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What is your refund policy',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What are the terms for the custom \ndomain?',
                              style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade300, thickness: 5),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  'Need help? Get in touch',
                  style: GoogleFonts.poppins(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 130,
                      width: 180,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 35,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Live Chat')
                          ]),
                    ),
                    Container(
                      height: 130,
                      width: 180,
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call, size: 35),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Phone Call')
                          ]),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: Colors.grey.shade400,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Select Domain',
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 2, 91, 116)),
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Get Premium',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.w500)),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class FeaturesWidget extends StatelessWidget {
  const FeaturesWidget({
    Key? key,
    required this.circleIcon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final IconData circleIcon;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color.fromARGB(255, 7, 95, 114),
                  width: 2,
                ),
              ),
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Icon(
                  circleIcon,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  subTitle,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
