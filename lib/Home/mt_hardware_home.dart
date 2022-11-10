import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import '../Const/mt_const.dart';

class HardwareHomeScreen extends StatefulWidget {
  const HardwareHomeScreen({Key? key}) : super(key: key);

  @override
  State<HardwareHomeScreen> createState() => _HardwareHomeScreenState();
}

class _HardwareHomeScreenState extends State<HardwareHomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';
  int currentIndex = 0;

  List<String> categoryImage = [
    "assets/images/hardware/driller.png",
    "assets/images/hardware/grinder.png",
    "assets/images/hardware/chainshaw.png",
    "assets/images/hardware/fretshaw.png",
    "assets/images/hardware/hammer.png"
  ];
  List<String> categoryName = [
    "Driller",
    "Grinder",
    "Chainsaw",
    "Fretsaw",
    "Hammer",
  ];
  List<String> specialOffer = [
    "assets/images/hardware/special1.png",
    "assets/images/hardware/special2.png",
    "assets/images/hardware/special3.png",

  ];
  List<String> specialTittle = [
    "Cordless Screwdriver Drill 20 mm",
    "Electricians Tool Kit",
    "Powertec Cotton Gloves",
  ];

  List<String> bestSeller = [
    "assets/images/hardware/best1.png",
    "assets/images/hardware/best2.png",
    "assets/images/hardware/best3.png",

  ];

  List<String> bestSellerTiitle = [
    "Powertec Red  BS20 Band Saw 4-Inch",
    "Powertec GT 450 Band Saw 71-Inch",
    "Powertec Power Meter",

  ];
  List<String> newArrival = [
    "assets/images/hardware/new1.png",
    "assets/images/hardware/new2.png",

  ];
  List<String> newArrivalTittle = [
    "Powertec Demolishing Tool",
    "Powertec Multiple Hex keys",

  ];



  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    setBottomBarIndex(index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      backgroundColor: kLikeWhiteColor,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 6.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            horizontalTitleGap: 15,
            contentPadding: EdgeInsets.zero,
            leading: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage("assets/images/mobile-pro.png"),
                      fit: BoxFit.fill),
                  border: Border.all(color: kHardwaremainColor)),
            ),
            title: Text(
              "Hello, Sahidul",
              style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Let’s get something",
              style: TextStyle(color: kSubTitleColor),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: kHardwareSearchColor.withOpacity(0.1)),
                      color: kLikeWhiteColor),
                  child: Icon(
                    IconlyLight.search,
                    color: kCosmeticsTittleColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: kHardwareSearchColor.withOpacity(0.1)),
                        color: kLikeWhiteColor),
                    child: Badge(
                      badgeColor: kBadgeColor,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      position: BadgePosition(top: 7, end: 11),
                      child: Icon(
                        IconlyLight.notification,
                        color: kCosmeticsTittleColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15,
          ),
        ], borderRadius: BorderRadius.circular(40)),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: kLikeWhiteColor,
              selectedItemColor: kHardwaremainColor,
              unselectedItemColor: kCarweekColor.withOpacity(0.5),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    IconlyLight.bag,
                    color: kCarweekColor,
                  ),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.heart),
                  label: "Wishlist",
                ),
                BottomNavigationBarItem(
                  icon: Icon(IconlyLight.profile),
                  label: "Profile",
                ),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                width: context.width(),
                height: context.height() / 4.6,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/hardware/hardware-banner.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Best Drilling\nMachinery Kit",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kTitleColor,
                            fontSize: 18.0),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: kHardwaremainColor),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Shop Now",
                              style: TextStyle(
                                  color: kLikeWhiteColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: categoryImage.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: kHondaContainerColor,
                              shape: BoxShape.circle),
                          child: Image.asset(
                            categoryImage[index],
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          categoryName[index],
                          style: TextStyle(color: kTitleColor),
                        )
                      ],
                    );
                  }),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Special Offers",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: specialOffer.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 2.4,
                      height: 192,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kLikeWhiteColor,
                        border: Border.all(
                            color: kpopularContainercolor.withOpacity(0.9)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Container(
                                height: 100,
                              width: double.infinity,
                                decoration: BoxDecoration(
                                    color: kSpecialColor,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Image.asset(specialOffer[index],fit: BoxFit.cover,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  FeatherIcons.heart,
                                  color: kHeartColor,
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 0,
                                child: Container(
                                  height: 34,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        kpopularContainerSelectcolor,
                                        kGradientSecondColor
                                      ]),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      )),
                                  child: Center(
                                    child: Text(
                                      "-20%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: kLikeWhiteColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              specialTittle[index],
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4.9 (27 review)",
                                  style: TextStyle(color: kSubTitleColor),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                Text(
                                  "\$5,000",
                                  style: TextStyle(
                                      color: kTitleColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "\$6,000",
                                  style: TextStyle(
                                      color: kSubTitleColor,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bestsellers Products",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: bestSeller.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kLikeWhiteColor,
                        border: Border.all(
                            color: kpopularContainercolor.withOpacity(0.9)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              Container(
                                height: 105,
                                width: context.width(),
                                decoration: BoxDecoration(
                                    color: kSpecialColor,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Image.asset(bestSeller[index],fit: BoxFit.cover,)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  FeatherIcons.heart,
                                  color: kMTitlecolor,
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 0,
                                child: Container(
                                  height: 34,
                                  width: 28,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        kpopularContainerSelectcolor,
                                        kGradientSecondColor
                                      ]),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                      )),
                                  child: Center(
                                    child: Text(
                                      "-20%",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: kLikeWhiteColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              bestSellerTiitle[index],
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              children: [

                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "4.9 (27 review)",
                                  style: TextStyle(color: kSubTitleColor),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Text(
                                "\$5,000",
                                style: TextStyle(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$6,000",
                                style: TextStyle(
                                    color: kSubTitleColor,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor.withOpacity(0.3)),
                                child: Icon(
                                  IconlyLight.bag,
                                  color: kLikeWhiteColor,
                                ),
                              ),
                            ],),
                          ),

                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Arrivals",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: newArrival.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kLikeWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color:
                                    kpopularContainercolor.withOpacity(0.9))),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: kNewMotorContainerColor
                                          .withOpacity(0.7)),
                                  child: Image.asset(
                                    newArrival[index],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kMTitlecolor,
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      newArrivalTittle[index],
                                      style: TextStyle(
                                          color: kTitleColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      children: [

                                        Icon(
                                          IconlyBold.star,
                                          color: kStarColor,
                                          size: 18,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "4.9 (27 review)",
                                          style: TextStyle(color: kSubTitleColor),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$12,00",
                                          style: TextStyle(
                                              color: kTitleColor,
                                              fontWeight: FontWeight.w500),
                                        ),

                                        Container(
                                          padding: EdgeInsets.all(6),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kSubTitleColor.withOpacity(0.3)),
                                          child: Icon(
                                            IconlyLight.bag,
                                            color: kLikeWhiteColor,
                                          ),
                                        ),
                                      ],),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
