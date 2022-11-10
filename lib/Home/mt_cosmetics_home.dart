import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:iconly/iconly.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:slide_countdown/slide_countdown.dart';
import '../Const/mt_const.dart';

class CosmeticsHomeScreen extends StatefulWidget {
  const CosmeticsHomeScreen({Key? key}) : super(key: key);

  @override
  State<CosmeticsHomeScreen> createState() => _CosmeticsHomeScreenState();
}

class _CosmeticsHomeScreenState extends State<CosmeticsHomeScreen> {
  bool isChangeBG = false;
  String selectedItem = '';
  int currentIndex = 0;

  List<Color> categoryContainerColor = [
    kCosmeticsBottomColor.withOpacity(0.1),
    kMakeUpColor,
    kLipsticColor,
    kPerfumeColor,
    kEyeColor
  ];

  List<String> categoryImage = [
    "assets/images/Cosmetics/beauty.png",
    "assets/images/Cosmetics/make up.png",
    "assets/images/Cosmetics/lipstick.png",
    "assets/images/Cosmetics/perfume.png",
    "assets/images/Cosmetics/eye.png",
  ];
  List<String> categoryName = [
    "Beauty",
    "Makeup",
    "Lipstick",
    "Perfume",
    "Eyes Care",
  ];

  List<String> popularImage = [
    "assets/images/Cosmetics/pop1.png",
    "assets/images/Cosmetics/pop2.png",
    "assets/images/Cosmetics/pop3.png",
  ];

  List popularTittle = [
    "Fortunate Face",
    "Desodorante Para",
    "Fortunate Face",
  ];

  List<String> newArrivalImage = [
    "assets/images/Cosmetics/new1.png",
    "assets/images/Cosmetics/new2.png",
    "assets/images/Cosmetics/new3.png",
    "assets/images/Cosmetics/new4.png",
  ];
  List<String> newArrivalTittle= [
    "Moisturizing Serum",
    "Water Chalk",
    "Cosmetic Cream",
    "Cleanse & Tone Duo",
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
        backgroundColor: kScaffoldBGColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 6.0,
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListTile(
            horizontalTitleGap: 10,
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30,
              backgroundImage: AssetImage("assets/images/Cosmetics/pro.png"),
            ),
            title: Text(
              "Welcome to MaanStore ",
              style: TextStyle(color: kCosmeticsSubColor),
            ),
            subtitle: Text(
              "Jelly Emily",
              style: TextStyle(
                  color: kCosmeticsTittleColor, fontWeight: FontWeight.bold),
            ),
            trailing: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: kCosmeticsAppBarColor),
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
                  backgroundColor: kCosmeticsBottomColor,
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
                                  ? kCosmeticsBottomColor
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
                                    ? kCosmeticsBottomColor
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
                                    ? kCosmeticsBottomColor
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
                                    ? kCosmeticsBottomColor
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
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none),
                  hintText: "Search...",
                  hintStyle: TextStyle(color: kSubTitleColor),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: context.width(),
                height: context.height() / 5.4,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/Cosmetics/cos-banner.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "50% of on",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLikeWhiteColor,
                            fontSize: 20.0),
                      ),
                      Text(
                        "Cosmetics Produts",
                        style:
                            TextStyle(color: kLikeWhiteColor.withOpacity(0.8)),
                      ),
                      SizedBox(
                        height: 10,
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
                                  color: kCosmeticsBottomColor,
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
                height: 24,
              ),
              HorizontalList(
                  itemCount: categoryImage.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: categoryContainerColor[index],
                              shape: BoxShape.circle),
                          child: Image.asset(
                            categoryImage[index],
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          categoryName[index],
                          style: TextStyle(color: kMTitlecolor),
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
                    "Poplure Product",
                    style: TextStyle(
                        color: kTitleColor, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      color: kCarSubColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              HorizontalList(
                  itemCount: popularImage.length,
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
                                    color: kCarContainerColor,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Image.asset(popularImage[index])),
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
                              popularTittle[index],
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
                                Text(
                                  "AESOP",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
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
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              minVerticalPadding: 0,
                              dense: true,
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -2),
                              title: Text(
                                "\$5,000",
                                style: TextStyle(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                "\$6,000",
                                style: TextStyle(
                                    color: kSubTitleColor,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor.withOpacity(0.3)),
                                child: Icon(
                                  IconlyLight.bag,
                                  color: kLikeWhiteColor,
                                ),
                              ),
                            ),
                          )
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
                    "New Arrival",
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
                  itemCount: newArrivalImage.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.84,
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
                                    color: kCarContainerColor,
                                    borderRadius: BorderRadius.circular(6)),
                                child: Padding(
                                    padding: const EdgeInsets.only(top: 20.0),
                                    child: Image.asset(newArrivalImage[index])),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  FeatherIcons.heart,
                                  color: kMTitlecolor,
                                ),
                              ),
                            
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Text(
                              newArrivalTittle[index],
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
                                Text(
                                  "AESOP",
                                  style: TextStyle(color: kSubTitleColor),
                                ),
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
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: ListTile(
                              contentPadding: EdgeInsets.zero,
                              minVerticalPadding: 0,
                              dense: true,
                              visualDensity:
                                  VisualDensity(horizontal: 0, vertical: -2),
                              title: Text(
                                "\$5,000",
                                style: TextStyle(
                                    color: kTitleColor,
                                    fontWeight: FontWeight.w500),
                              ),
                              subtitle: Text(
                                "\$6,000",
                                style: TextStyle(
                                    color: kSubTitleColor,
                                    decoration: TextDecoration.lineThrough,
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: kSubTitleColor.withOpacity(0.3)),
                                child: Icon(
                                  IconlyLight.bag,
                                  color: kLikeWhiteColor,
                                ),
                              ),
                            ),
                          )
                        ],
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
