import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:slide_countdown/slide_countdown.dart';
import '../Const/mt_const.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({Key? key}) : super(key: key);

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';
  int currentIndex = 0;

  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;

  List<Color> brandContainerColor = [
    kAppleContainerColor,
    kSamsungContainerColor,
    kHuaweiContainerColor,
    kVivoContainerColor,
    kOppoContainerColor
  ];

  List<String> mobileBrandImage = [
    "assets/images/Mobile/apple.png",
    "assets/images/Mobile/samsung.png",
    "assets/images/Mobile/huawei.png",
    "assets/images/Mobile/vivo-logo-2019.png",
    "assets/images/Mobile/oppo-logo-2019.png",
  ];
  List<String> mobileBrandName = [
    "Apple",
    "Samsung",
    "Huawei",
    "VIVO",
    "Oppo",
  ];

  List<String> mobileFlashImage = [
    "assets/images/Mobile/finix.png",
    "assets/images/Mobile/iphone.png",
    "assets/images/Mobile/finix.png",
    "assets/images/Mobile/iphone.png",
  ];

  List<String> bestSellingMobileImage = [
    "assets/images/Mobile/best1.png",
    "assets/images/Mobile/best2.png",
    "assets/images/Mobile/best1.png",
    "assets/images/Mobile/best2.png",
  ];


  List<String> newMobileImage = [
    "assets/images/Mobile/new1.png",
    "assets/images/Mobile/new2.png",
    "assets/images/Mobile/new3.png",
    "assets/images/Mobile/new4.png",
    "assets/images/Mobile/new1.png",
    "assets/images/Mobile/new2.png",
    "assets/images/Mobile/new3.png",
    "assets/images/Mobile/new4.png",
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
      backgroundColor: kMobileBgColor,
      appBar: AppBar(
        backgroundColor: kScaffoldBGColor,
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
                  border: Border.all(color: kAppBarStrokeColor)),
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
                          color: kAppBarStrokeColor.withOpacity(0.1)),
                      color: kLikeWhiteColor),
                  child: Icon(
                    IconlyLight.search,
                    color: kAppBarStrokeColor,
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
                            color: kAppBarStrokeColor.withOpacity(0.1)),
                        color: kLikeWhiteColor),
                    child: Badge(
                      badgeColor: kBadgeColor,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      position: BadgePosition(top: 7, end: 11),
                      child: Icon(
                        IconlyLight.notification,
                        color: kAppBarStrokeColor,
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
          child: Stack(children: [
            CustomPaint(
              size: Size(size.width, 80),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                  backgroundColor: kAppBarStrokeColor,
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
                                  ? kAppBarStrokeColor
                                  : kSubTitleColor,
                            ),
                            onPressed: () {
                              setBottomBarIndex(0);
                            },
                            splashColor: Colors.white,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(color: kSubTitleColor),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: Icon(
                                IconlyLight.search,
                                color: currentIndex == 1
                                    ? kAppBarStrokeColor
                                    : kSubTitleColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(1);
                              }),
                          Text(
                            "Search",
                            style: TextStyle(color: kSubTitleColor),
                          )
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
                                    ? kAppBarStrokeColor
                                    : kSubTitleColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(2);
                              }),
                          Text(
                            "Wishlist",
                            style: TextStyle(color: kSubTitleColor),
                          )
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
                                    ? kAppBarStrokeColor
                                    : kSubTitleColor,
                              ),
                              onPressed: () {
                                setBottomBarIndex(3);
                              }),
                          Text(
                            "Profile",
                            style: TextStyle(color: kSubTitleColor),
                          )
                        ],
                      )
                    ]))
          ])),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 1.3,
                      height: context.height() / 5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image:
                                  AssetImage("assets/images/mobile-banner.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Up To 30% Off",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kLikeWhiteColor,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Mobile Collection",
                              style: TextStyle(
                                  color: kLikeWhiteColor.withOpacity(0.8)),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                              width: 88,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                  color: kLikeWhiteColor),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Shop Now",
                                    style: TextStyle(
                                        color: kShopNowColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 24,
              ),
              HorizontalList(
                  itemCount: mobileBrandImage.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: brandContainerColor[index],
                              shape: BoxShape.circle),
                          child: Image.asset(
                            mobileBrandImage[index],
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          mobileBrandName[index],
                          style: TextStyle(color: kMTitlecolor),
                        )
                      ],
                    );
                  }),
              SizedBox(
                height: 24,
              ),
              Text(
                "Flash Sale",
                style:
                    TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Closing In:",
                    style: TextStyle(
                        color: kCarSubColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 4,),
                  SlideCountdownSeparated(
                    duration: const Duration(days: 2),
                    decoration: BoxDecoration(
                      color: kShopNowColor,
                      borderRadius: BorderRadius.circular(3)

                    ),

                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: kCarSubColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              HorizontalList(
                  itemCount: mobileFlashImage.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 1.9,
                      decoration: BoxDecoration(
                          color: kLikeWhiteColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: kpopularContainercolor.withOpacity(0.9))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              width: 84,
                              decoration: BoxDecoration(color: kStrockColor),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  mobileFlashImage[index],
                                  height: 60,
                                  width: 85,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Infinix Hot 12i\n4GB RAM",
                                    style: TextStyle(
                                      color: kMTitlecolor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "\$5,000",
                                    style: TextStyle(
                                        color: kCarSubColor,
                                        decoration: TextDecoration.lineThrough,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "\$5,000",
                                    style: TextStyle(
                                        color: kMTitlecolor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
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
                    "Best Selling",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kLikeWhiteColor,
                        border: Border.all(
                            color: kpopularContainercolor.withOpacity(0.9)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Container(
                                  height: 120,
                                  width: context.width(),
                                  decoration: BoxDecoration(
                                      color: kBestSellingContainerColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/Mobile/best1.png",
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kHeartContainerColor),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kShopNowColor,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Apple iPhone 14\nPro Max",
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
                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                Text(
                                  "4.9 (27 review)",
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
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kLikeWhiteColor,
                        border: Border.all(
                            color: kpopularContainercolor.withOpacity(0.9)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Container(
                                  height: 120,
                                  width: context.width(),
                                  decoration: BoxDecoration(
                                      color: kBestSellingContainerColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/Mobile/best2.png",
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kHeartContainerColor),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kShopNowColor,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "vivo v25e 8GB RAM\n128GB ROM Sunr...",
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
                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                Text(
                                  "4.9 (27 review)",
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
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Phones",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: kSubTitleColor),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              GridView.builder(
                  shrinkWrap: true,
                itemCount: 8,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (_, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kLikeWhiteColor,
                        border: Border.all(
                            color: kpopularContainercolor.withOpacity(0.9)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.topEnd,
                              children: [
                                Container(
                                  height: 120,
                                  width: context.width(),
                                  decoration: BoxDecoration(
                                      color: kBestSellingContainerColor,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      newMobileImage[index],
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kHeartContainerColor),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kShopNowColor,
                                    size: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Apple iPhone 14\nPro Max",
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
                                Icon(
                                  IconlyBold.star,
                                  color: kStarColor,
                                  size: 18,
                                ),
                                Text(
                                  "4.9 (27 review)",
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
