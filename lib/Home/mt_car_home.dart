import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import '../Const/mt_const.dart';

class CarHomeScreen extends StatefulWidget {
  const CarHomeScreen({Key? key}) : super(key: key);

  @override
  State<CarHomeScreen> createState() => _CarHomeScreenState();
}

class _CarHomeScreenState extends State<CarHomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';
  int currentIndex = 0;

  List<String> brandImage = [
    "assets/images/Honda.png",
    "assets/images/bmw-2 1.png",
    "assets/images/tesla.png",
    "assets/images/toyoto.png",
    "assets/images/mercedes.png"
  ];
  List<String> brandName = [
    "Honda",
    "BMW",
    "Tesla",
    "Toyota",
    "Mercedes",
  ];
  List<String> carName = [
    "Highlander Hybrid",
    "Mercedes-benz 5",
    "Highlander Hybrid",
    "Mercedes-benz 5",
  ];
  List<String> newCarName = [
    "Camaro Sports",
    "Audi Sports",
    "Camaro Sports",
    "Audi Sports",
  ];

  List<String> carImage = [
    "assets/images/car-white.png",
    "assets/images/car-blue.png",
    "assets/images/car-white.png",
    "assets/images/car-blue.png",
  ];
  List<String> newCarImage = [
    "assets/images/best1.png",
    "assets/images/best2.png",
  ];

  List<String> accessoriesImage = [
    "assets/images/ca1.png",
    "assets/images/ca2.png",
    "assets/images/ca3.png",
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
              style: TextStyle(color: kCarSubColor),
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
          child: Stack(children: [
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
                    color: kSearchColor,
                  ),
                  fillColor: kLikeWhiteColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide:
                      BorderSide(color: kpopularContainercolor.withOpacity(0.9))) ,
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
                      width: context.width() / 1.2,
                      height: context.height() / 5.2,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/car-banner.png"),
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
                              "20%",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: kTitleColor,
                                  fontSize: 20.0),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Week Deals!",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kCarweekColor,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Get a new car discount\nonly valid this week",
                              maxLines: 2,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: kTitleColor.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
              SizedBox(
                height: 24,
              ),
              HorizontalList(
                  itemCount: brandImage.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: kHondaContainerColor,
                              shape: BoxShape.circle),
                          child: Image.asset(
                            brandImage[index],
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          brandName[index],
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
                    "Top Deals",
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
                  itemCount: carImage.length,
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
                                  height: 105,
                                  width: context.width(),
                                  decoration:
                                      BoxDecoration(color: kCarContainerColor,borderRadius: BorderRadius.circular(6)),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Image.asset(carImage[index])
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kMTitlecolor,
                                  ),
                                ),

                                Positioned(
                                  left: 10,
                                  top: 0
                                  ,
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
                              height: 4,
                            ),
                            Text(
                              carName[index],
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text("Toyota",style: TextStyle(color: kSubTitleColor),),
                                Spacer(),
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
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$5,000",
                                  style: TextStyle(
                                      color: kTitleColor,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 4,),
                                Text(
                                  "\$6,000",

                                  style: TextStyle(
                                      color: kSubTitleColor,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
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
                    "Best Cars",
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
                  itemCount: newCarImage.length,
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
                                  height: 105,
                                  width: context.width(),
                                  decoration:
                                  BoxDecoration(color: kCarContainerColor,borderRadius: BorderRadius.circular(6)),
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Image.asset(newCarImage[index])
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    FeatherIcons.heart,
                                    color: kMTitlecolor,
                                  ),
                                ),


                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              newCarName[index],
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text("Honda",style: TextStyle(color: kSubTitleColor),),
                                Spacer(),
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
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "\$12,000",
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
                    "Car Accessories",
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
                  itemCount: accessoriesImage.length,
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
                                  child: Image.asset(accessoriesImage[index],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(FeatherIcons.heart,color: kMTitlecolor,),
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
                                      "Automatic Shifter",
                                      style: TextStyle(
                                          color: kTitleColor,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Cars",
                                      style: TextStyle(color: kSubTitleColor),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$5,000",
                                          style: TextStyle(
                                              color: kTitleColor,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: kAddContainerColor),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Icon(
                                              Icons.add,
                                              color: kAddColor,
                                            ),
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
