import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Const/mt_const.dart';

class BicycleHomeScreen extends StatefulWidget {
  const BicycleHomeScreen({Key? key}) : super(key: key);

  @override
  State<BicycleHomeScreen> createState() => _BicycleHomeScreenState();
}

class _BicycleHomeScreenState extends State<BicycleHomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';

  int currentIndex = 0;

  List<String> cycleImage = [
    "assets/images/electick_cycle.png",
    "assets/images/classic-cycle.png",
    "assets/images/mountain-cycle.png"
  ];
  List<String> newCycleImage = [
    "assets/images/blue-big-cycle.png",
    "assets/images/white-cycle.png",
    "assets/images/big_cycle.png"
  ];
  List<String> popularCycleImage = [

    "assets/images/big_cycle.png",
    "assets/images/popular-cycle.png",
    "assets/images/white-cycle.png"
  ];
  List<String> accessoriesImage = [
    "assets/images/helmet.png",
    "assets/images/light.png",
    "assets/images/gloves.png",
  ];
  List<String> cycleName = ["Electric", "Classic", "Mountain bike"];
  List<String> newCycleName = ["City Bike", "Speed Bike", "Mountain bike"];
  List<String> accessoriesName = [
    "Helmet Abus Scraper",
    "Usb Bike Horn & Light",
    "Pro-Biker Gloves"
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
      backgroundColor: kScaffoldBGColor,
      appBar: AppBar(
        backgroundColor: kScaffoldBGColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            minLeadingWidth: 0.0,
            horizontalTitleGap: 0,
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 34,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/profile.png"),
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
                      color: kMainColor.withOpacity(0.10)),
                  child: Icon(
                    IconlyLight.search,
                    color: kMainColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kMainColor.withOpacity(0.10)),
                    child: Badge(
                      badgeColor: kBadgeColor,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      position: BadgePosition(top: 7, end: 11),
                      child: Icon(
                        IconlyLight.notification,
                        color: kMainColor,
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
            width: size.width,
            height: 80,
            child: Stack(
              //  overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        backgroundColor:kMainColor,
                        child: Icon(IconlyLight.bag),
                        elevation: 0.1,
                        onPressed: () {}),
                  ),
                  Container(
                      width: size.width,
                      height: 80,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    IconlyLight.home,
                                    color: currentIndex == 0
                                        ? kMainColor
                                        : kSubTitleColor,
                                  ),
                                  onPressed: () {
                                    setBottomBarIndex(0);

                                  },
                                  splashColor: Colors.white,
                                ),
                                Text("Home",style: TextStyle(color: kSubTitleColor),)
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      IconlyLight.search,
                                      color: currentIndex == 1
                                          ? kMainColor
                                          : kSubTitleColor,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(1);
                                    }),
                                Text("Search",style: TextStyle(color: kSubTitleColor),)
                              ],
                            ),
                            Container(
                              width: size.width * 0.20,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    icon: Icon(
                                      IconlyLight.heart,
                                      color: currentIndex == 2
                                          ? kMainColor
                                          : kSubTitleColor,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(2);
                                    }),
                                Text("Wishlist",style: TextStyle(color: kSubTitleColor),)
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                  padding: EdgeInsets.zero,
                                    icon: Icon(
                                      IconlyLight.profile,
                                      color: currentIndex == 3
                                          ? kMainColor
                                          : kSubTitleColor,
                                    ),
                                    onPressed: () {
                                      setBottomBarIndex(3);
                                    }),
                                Text("Profile",style: TextStyle(color: kSubTitleColor),)
                              ],
                            )
                          ]))
                ])),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: context.height() / 5,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/cycle.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Last Trending",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLikeWhiteColor,
                            fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Reaction C: 62 Pro",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLikeWhiteColor.withOpacity(0.8)),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        height: 30,
                        width: 109,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: kLikeWhiteColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Shop Now",
                              style: TextStyle(color: kTitleColor),
                            ),
                            Icon(
                              IconlyLight.arrow_right_3,
                              color: kTitleColor,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              HorizontalList(
                  itemCount: cycleName.length,
                  itemBuilder: (_, index) {
                    return Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: selectedItem == cycleName[index]
                              ? kMainColor
                              : kLikeWhiteColor,
                          borderRadius: BorderRadius.circular(98)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedItem == cycleName[index]
                                      ? kLikeWhiteColor
                                      : kMiniContainerColor),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ImageIcon(
                                  AssetImage(cycleImage[index]),
                                  color: selectedItem == cycleName[index]
                                      ? kMainColor
                                      : kTitleColor,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                cycleName[index],
                                style: TextStyle(
                                    color: selectedItem == cycleName[index]
                                        ? kLikeWhiteColor
                                        : kTitleColor,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ),
                    ).onTap(() {
                      setState(() {
                        selectedItem = cycleName[index];
                      });
                    });
                  }),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Most Popular",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sell All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 2.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kLikeWhiteColor),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Container(
                                  height: 110,
                                  width: 155,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              popularCycleImage[index]),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kMainColor.withOpacity(0.10)),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kMainColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Universal bike",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Wiler",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
                                Spacer(),
                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$5,000",
                                  style: TextStyle(color: kTitleColor),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "\$6,000",
                                  style: TextStyle(
                                      color: kSubTitleColor,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      gradient: LinearGradient(colors: [
                                        kGradientFirstColor,
                                        kGradientSecondColor
                                      ])),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Text(
                                      "-10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: kLikeWhiteColor),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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
                    "New Models",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sell All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 2.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kLikeWhiteColor),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Container(
                                  height: 110,
                                  width: 155,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(newCycleImage[index]),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kMainColor.withOpacity(0.10)),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kMainColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Universal bike",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Wiler",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
                                Spacer(),
                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                Text(
                                  "4.9",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$5,000",
                                  style: TextStyle(color: kTitleColor),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "\$6,000",
                                  style: TextStyle(
                                      color: kSubTitleColor,
                                      decoration: TextDecoration.lineThrough),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      gradient: LinearGradient(colors: [
                                        kGradientFirstColor,
                                        kGradientSecondColor
                                      ])),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Text(
                                      "-10",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: kLikeWhiteColor),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
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
                    "Accessories",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sell All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: kLikeWhiteColor),
                        child: ListTile(
                          leading: Container(
                           padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: kMiniContainerColor,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            child: Image.asset(accessoriesImage[index]),
                          ),
                          title: Text(
                            accessoriesName[index],
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            "\$40",
                            style: TextStyle(color: kSubTitleColor),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kMainColor.withOpacity(0.10)),
                            child: Icon(
                              FeatherIcons.heart,
                              color: kMainColor,
                            ),
                          ),
                        ),
                      ),
                    );
                  })
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
