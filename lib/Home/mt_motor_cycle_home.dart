import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Const/mt_const.dart';

class MotorCycleHomeScreen extends StatefulWidget {
  const MotorCycleHomeScreen({Key? key}) : super(key: key);

  @override
  State<MotorCycleHomeScreen> createState() => _MotorCycleHomeScreenState();
}

class _MotorCycleHomeScreenState extends State<MotorCycleHomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';
  int currentIndex = 0;

  List<String> motorCycleImage = [
    "assets/images/yamaha-fazer-fi-v2-img1 1.png",
    "assets/images/yamaha-r15-v3-2nd1 1.png",
    "assets/images/yamaha-fazer-fi-v2-img1 1.png",
    "assets/images/yamaha-r15-v3-2nd1 1.png",
  ];
  List<String> newMotorCycleImage = [
    "assets/images/EU-Website-Meteor 1.png",
    "assets/images/r15.png",
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
  List<String> motorCycleName = [
    "Honda",
    "Yamaha",
    "Kawasaki",
    "Royal Enfield",
    "Bajaj",
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
              style:
                  TextStyle(color: kMTitlecolor, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Let’s get something",
              style: TextStyle(color: kSubTitleColor),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kStrockColor),
                ),
                child: Badge(
                  badgeColor: kBadgeColor,
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  position: BadgePosition(top: 7, end: 11),
                  child: Icon(
                    IconlyLight.notification,
                    color: kMTitlecolor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
          width: size.width,
          height: 80,
          child: Stack(
              children: [
                CustomPaint(
                  size: Size(size.width, 80),
                  painter: BNBCustomPainter(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(
                      backgroundColor: kpopularContainerSelectcolor,
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
                                      ? kpopularContainerSelectcolor
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
                                        ? kpopularContainerSelectcolor
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
                                        ? kpopularContainerSelectcolor
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
                                        ? kpopularContainerSelectcolor
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
            children: [
              SizedBox(
                height: 12,
              ),
              AppTextField(
                textFieldType: TextFieldType.NAME,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(
                    FeatherIcons.search,
                    color: kMTitlecolor,
                  ),
                  fillColor: kStrockColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  hintText: "Search...",
                  hintStyle: TextStyle(color: kSubTitleColor),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              HorizontalList(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 1.3,
                      height: context.height() / 5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(
                                  "assets/images/motor-cycle-banner.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yammah Bike",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kLikeWhiteColor,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Get 25% OFF",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kLikeWhiteColor.withOpacity(0.9),
                              ),
                            ),
                           SizedBox(height: 16,),
                            Container(

                              width: 109,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: kLikeWhiteColor),
                                  color: kLikeWhiteColor.withOpacity(0.30)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Buy Now",
                                      style: TextStyle(
                                          color: kLikeWhiteColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      IconlyLight.arrow_right_3,
                                      color: kLikeWhiteColor,
                                    )
                                  ],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Brand",
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
                  itemCount: motorCycleName.length,
                  itemBuilder: (_, index) {
                    return Container(
                      height: 33,
                      decoration: BoxDecoration(
                          color: selectedItem == motorCycleName[index]
                              ? kpopularContainerSelectcolor
                              : kpopularContainercolor,
                          borderRadius: BorderRadius.circular(120)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motorCycleName[index],
                          style: TextStyle(
                            color: selectedItem == motorCycleName[index]
                                ? kLikeWhiteColor
                                : kMTitlecolor,
                          ),
                        ),
                      ),
                    ).onTap(() {
                      setState(() {
                        selectedItem = motorCycleName[index];
                      });
                    });
                  }),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: motorCycleImage.length,
                  itemBuilder: (_, index) {
                    return Container(
                      width: context.width() / 2.3,
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
                                  height: 110,
                                  width: 155,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              motorCycleImage[index]),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: kpopularContainercolor),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kMTitlecolor,
                                    size: 16,
                                  ),
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
                                      "4.9",
                                      style: TextStyle(color: kSubTitleColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Yamaha Fazer FI",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Status: Available",
                              style: TextStyle(color: kSubTitleColor),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "\$5,000",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
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
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: newMotorCycleImage.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kLikeWhiteColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: kpopularContainercolor.withOpacity(0.9))),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(

                                decoration: BoxDecoration(
                                    color:
                                        kNewMotorContainerColor.withOpacity(0.7)),
                                child: Image.asset(newMotorCycleImage[index]),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Yamaha Fazer FI",
                                      style: TextStyle(
                                          color: kTitleColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Status: Available",
                                      style: TextStyle(color: kSubTitleColor),
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
                                          "4.9",
                                          style: TextStyle(color: kSubTitleColor),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                      children: [
                                        Text(
                                          "\$5,000",
                                          style: TextStyle(
                                              color: kTitleColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(8.0),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: kpopularContainercolor),
                                          child: Icon(
                                            FeatherIcons.heart,
                                            color: kMTitlecolor,
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
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
