import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({super.key});

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    bool isSelected = true;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade700,
          title: Text(
            'Catalogue',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text(
                  'Products',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                Column(
                  children: [
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/1.jpeg',
                        isSelected: isSelected,
                        price: '799',
                        size: Size,
                        title: 'Couch Potatoe | Women...'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/2.jpeg',
                        isSelected: isSelected,
                        price: '799',
                        size: Size,
                        title: 'Couch Potatoe | Men...'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/mug3.jpg',
                        isSelected: isSelected,
                        price: '399',
                        size: Size,
                        title: 'Mug | Explore'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/7.jpeg',
                        isSelected: isSelected,
                        price: '399',
                        size: Size,
                        title: 'Combo Blahst | Pack ...'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/10.jpeg',
                        isSelected: isSelected,
                        price: '399',
                        size: Size,
                        title: 'Combo Blahst | Pack ...'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/mug4.jpg',
                        isSelected: isSelected,
                        price: '399',
                        size: Size,
                        title: 'Combo Blahst | Pack ...'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/12.jpg',
                        isSelected: isSelected,
                        price: '399',
                        size: Size,
                        title: 'Combo Blahst | Pack ...'),
                    ListContainerProductsWidget(
                        imageSrc: 'assets/images/11.jpeg',
                        isSelected: isSelected,
                        price: '399',
                        size: Size,
                        title: 'Combo Blahst | Pack ...'),
                  ],
                ),
              ],
            ),
            const Center(
              child: Text('Categories Content'),
            ),
          ],
        ),
      ),
    );
  }
}

class ListContainerProductsWidget extends StatefulWidget {
  const ListContainerProductsWidget({
    super.key,
    required this.size,
    required this.isSelected,
    required this.title,
    required this.imageSrc,
    required this.price,
  });

  final Size size;
  final bool isSelected;
  final String title;
  final String imageSrc;
  final String price;

  @override
  State<ListContainerProductsWidget> createState() =>
      _ListContainerProductsWidgetState();
}

class _ListContainerProductsWidgetState
    extends State<ListContainerProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        height: widget.size.height / 3.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 0),
              blurRadius: 0.1,
              spreadRadius: 0,
            )
          ],
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      widget.imageSrc,
                      width: 110,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: widget.size.width - 130 - 25,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                widget.title,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(fontSize: 20),
                              ),
                            ),
                            const Icon(Icons.more_vert_outlined)
                          ],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '1 piece',
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: Colors.grey.shade600),
                      ),
                      const SizedBox(height: 9),
                      Text(
                        widget.price,
                        style: GoogleFonts.montserrat(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 9),
                      SizedBox(
                        width: widget.size.width - 130 - 25,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'In stock',
                                style: GoogleFonts.poppins(
                                    fontSize: 20, color: Colors.green),
                              ),
                            ),
                            Switch(
                                value: widget.isSelected, onChanged: (value) {})
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              Divider(color: Colors.grey.withOpacity(0.4), thickness: 1),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.share_outlined, size: 35),
                  const SizedBox(width: 10),
                  Text('Share Product',
                      style: GoogleFonts.poppins(fontSize: 20))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
