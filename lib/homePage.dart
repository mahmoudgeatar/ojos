import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import 'custemwidget/categoryHeader.dart';
import 'custemwidget/custemText.dart';
import 'style/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 1;

  List CatName = ["نظارات شمسية", "نظارات طبيه", "عدسات لاصقه", "اكسسوارات"];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color(0xffF8F8F8),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                appBar(),
                SizedBox(height: 8),
                textFeild(),
                SizedBox(height: 6.5),
                slider(),
                CategoryHeader(text: "تصنيفات المنتجات"),
                catBody(context),
                catOffer(),
                SizedBox(height: 9.5),
                Row(
                  children: [
                    styles("ستايل الرجال", "assets/manstyle.png"),
                    SizedBox(width: 8),
                    styles("ستايل النساء", "assets/womanstyle.png"),
                  ],
                ),
                video(),
                CategoryHeader(text: "أحدث المنتجات"),
                newSection(),
                SizedBox(height: 6.5),
                Row(
                  children: [
                    Expanded(child: trySection()),
                    Expanded(child: trySection2()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: mini(1)),
                    Expanded(child: mini(2)),
                  ],
                )
              ],
            ),
          )),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: borderGrey, width: .5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: BottomNavigationBar(
                    backgroundColor: mainWhite,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.business),
                        label: 'Business',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(null),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.business),
                        label: 'Business',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.school),
                        label: 'School',
                      ),
                    ],
                    elevation: 2,
                    selectedItemColor: mainBlue,
                    unselectedItemColor: mainDark,
                    type: BottomNavigationBarType.fixed,
                  ),
                ),
                Container(
                  height: 43,
                  width: 43,
                  decoration: BoxDecoration(
                      color: mainBlue,
                      border: Border.all(color: lorange, width: 1),
                      borderRadius: BorderRadius.circular(42)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        "assets/Path 3037.png",
                        color: lorange,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: borderGrey, width: .5),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            width: 38,
            height: 38,
            child: Center(
              child: Icon(
                Icons.menu,
                color: mainDark,
                size: 24,
              ),
            ),
          ),
        ),
        Image.asset(
          "assets/title.png",
          height: 24,
          width: 111,
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(color: borderGrey, width: .5),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: Icon(
                    Icons.notifications_none,
                    size: 24,
                    color: mainDark,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  color: lorange,
                  width: 16,
                  height: 16,
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(color: mainWhite),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget slider() {
    return Stack(
      children: [
        SizedBox(
            height: 184,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: .5, color: borderGrey),
                  borderRadius: BorderRadius.circular(8),
                  color: mainWhite,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: Carousel(
                    dotBgColor: Colors.transparent,
                    dotIncreasedColor: lorange,
                    borderRadius: true,
                    dotVerticalPadding: -10,
                    images: [
                      ExactAssetImage("assets/slider.png"),
                      ExactAssetImage("assets/slider.png"),
                      ExactAssetImage("assets/slider.png"),
                      ExactAssetImage("assets/slider.png"),
                    ],
                  ),
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustemText(
                text: "خصم",
                size: 25,
                fontWeight: FontWeight.bold,
                tColor: mainWhite,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustemText(
                    text: "99",
                    tColor: lorange,
                    size: 31,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(width: 6),
                  CustemText(
                    text: "ريال",
                    size: 13,
                    tColor: mainWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget textFeild() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            color: mainWhite,
            border: Border.all(color: borderGrey, width: 1),
            borderRadius: BorderRadius.circular(8)),
        height: 48,
        child: Row(
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Icon(
                Icons.search,
                color: mainDark,
              )),
            )),
            SizedBox(
              height: double.infinity,
              width: 1,
              child: Container(
                color: borderGrey,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "ابحث عن منتجك من هنا...",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: hintGrey,
                        )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: double.infinity,
              width: 1,
              child: Container(
                color: borderGrey,
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset(
                  "assets/Group 10324.png",
                  fit: BoxFit.cover,
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  Container catBody(BuildContext context) {
    return Container(
      height: 109,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: borderGrey, width: .5),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Center(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                selected = index + 1;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 67,
                      height: 67,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                index == selected - 1 ? mainBlue : borderGrey,
                            width: .5),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "assets/cat${index + 1}.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 9),
                    CustemText(
                      text: CatName[index],
                      tColor: mainDark,
                      size: 10,
                      fontWeight: FontWeight.normal,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      )),
    );
  }

  Widget catOffer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: borderGrey, width: .5),
            borderRadius: BorderRadius.circular(8),
            color: mainBlue,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset(
                    "assets/sheet.png",
                    width: 49,
                    height: 49,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustemText(
                            text: "سجل الاختبار لعرض افضل النتائج لك",
                            tColor: lorange,
                            size: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: mainWhite,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      CustemText(
                        text:
                            "قمنا بتنفيذ اختبار يقوم بفحص المتطلبات الخاصة\n بك ،ويعرض لك افضل نتائج حسب طلبك قم بتقديم \nالاختبار الان.",
                        tColor: mainWhite,
                        size: 11,
                        fontWeight: FontWeight.normal,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Widget styles(String text, String path) {
    return Expanded(
      child: Container(
        height: 168,
        decoration: BoxDecoration(
          border: Border.all(color: borderGrey, width: .5),
          borderRadius: BorderRadius.circular(10),
          color: mainWhite,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Column(
            children: [
              ClipRRect(
                  child: Image.asset(
                    path,
                    fit: BoxFit.cover,
                    height: 130,
                    width: double.infinity,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              Padding(
                padding: const EdgeInsets.only(left: 4, right: 9),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Container(
                      child: CustemText(
                        text: text,
                        size: 11,
                        fontWeight: FontWeight.bold,
                        tColor: mainDark,
                      ),
                    )),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(color: borderGrey, width: .5),
                        borderRadius: BorderRadius.circular(19),
                        color: Colors.white,
                      ),
                      width: 63,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Container(
                              color:
                                  text == "ستايل الرجال" ? lorange : styleGrey,
                              width: 19,
                              height: 19,
                              child: Center(
                                child: text == "ستايل الرجال"
                                    ? Icon(
                                        Icons.check,
                                        color: mainWhite,
                                        size: 12,
                                      )
                                    : null,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          CustemText(
                            text: "اختيار",
                            size: 9,
                            fontWeight: FontWeight.bold,
                            tColor: mainDark,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget video() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 184,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: borderGrey, width: .5),
            borderRadius: BorderRadius.circular(10),
            color: mainWhite,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/video.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              "assets/play.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  Widget newSection() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: borderGrey, width: .5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(7.5),
                  child: Image.asset(
                    "assets/new.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          patch(
                              "4", "assets/Shape.png", mainWhite, mainDark, 15),
                          SizedBox(width: 4),
                          patch("جديد", "assets/fire.png", mainBlue, mainWhite,
                              18),
                        ],
                      ),
                      SizedBox(height: 70),
                      Row(
                        children: [
                          patch("نسائية", "assets/person.png", mainWhite,
                              mainDark, 20),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 6, bottom: 6, right: 12.5, left: 12.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "حصرياً :",
                            style: TextStyle(
                                color: mainBlue,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "نظارات شركة ايكيا الطبية",
                                  style: TextStyle(
                                      color: mainDark,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      Row(children: [
                        Image.asset(
                          "assets/Icons-icon-checkmark-stroke.png",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 2),
                        CustemText(
                          text: "عدسات مجانية",
                          size: 9,
                          fontWeight: FontWeight.bold,
                          tColor: mainDark,
                        )
                      ])
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: borderGrey, width: .5),
                          borderRadius: BorderRadius.circular(20),
                          color: mainWhite,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustemText(
                                text: "89",
                                tColor: mainBlue,
                                size: 17,
                                fontWeight: FontWeight.bold,
                              ),
                              SizedBox(width: 4),
                              CustemText(
                                text: "ريال",
                                tColor: mainDark,
                                size: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 4),
                      bigShape(),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12.5, right: 12.5),
              height: 58,
              decoration: BoxDecoration(
                border: Border.all(color: borderGrey, width: .5),
                color: scafoldColor,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustemText(
                          text: "الاحجام المتوفرة",
                          tColor: mainDark,
                          fontWeight: FontWeight.normal,
                          size: 10,
                        ),
                        Row(
                          children: [
                            textPatch(
                              "40 - 48",
                            ),
                            SizedBox(width: 6),
                            textPatch(
                              "40 - 48",
                            ),
                            SizedBox(width: 6),
                            textPatch(
                              "40 - 48",
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                  SizedBox(
                    child: Container(
                      width: 1,
                      height: double.infinity,
                      color: borderGrey,
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustemText(
                            text: "الاحجام المتوفرة",
                            tColor: mainDark,
                            fontWeight: FontWeight.normal,
                            size: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Circle(color: orange, check: false),
                              Circle(color: green, check: true),
                              Circle(color: blue, check: true),
                              Circle(color: pink, check: true),
                              Circle(color: mainBlue, check: false),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  patch("جرب النظارة قبل الشراء", "assets/camira.png",
                      mainWhite, mainDark, 15),
                  SizedBox(width: 5),
                  Container(
                    width: 33,
                    height: 33,
                    decoration: BoxDecoration(
                      border: Border.all(color: borderGrey, width: .5),
                      borderRadius: BorderRadius.circular(33),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: mainDark,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  patch("إضافة للسلة", "assets/Path 3037.png", mainWhite,
                      mainBlue, 15)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget trySection() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderGrey, width: .5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            stake(path: "assets/glass.png"),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustemText(
                        text: "نظارات جلاس طبية",
                        size: 12,
                        fontWeight: FontWeight.bold,
                        tColor: mainDark,
                      ),
                      Row(children: [
                        Image.asset(
                          "assets/Icons-icon-checkmark-stroke.png",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 2),
                        CustemText(
                          text: "عدسات مجانية",
                          size: 9,
                          fontWeight: FontWeight.bold,
                          tColor: mainDark,
                        )
                      ])
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustemText(
                        text: "89",
                        tColor: mainBlue,
                        size: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(width: 4),
                      CustemText(
                        text: "ريال",
                        tColor: mainDark,
                        size: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12.5, right: 12.5),
              height: 58,
              decoration: BoxDecoration(
                border: Border.all(color: borderGrey, width: .5),
                color: mainWhite,
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustemText(
                        text: "الاحجام المتوفرة",
                        tColor: mainDark,
                        fontWeight: FontWeight.normal,
                        size: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Circle(color: orange, check: false),
                          Circle(color: green, check: true),
                          Circle(color: blue, check: true),
                          Circle(color: pink, check: true),
                          Circle(color: mainBlue, check: false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 33,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: borderGrey, width: .5),
                color: scafoldColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Path 36085.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 6),
                  CustemText(
                    text: "جرب النظارة قبل الشراء",
                    size: 10,
                    tColor: mainDark,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7.5, horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(
                      text: "الاحجام المتوفرة",
                      tColor: mainDark,
                      fontWeight: FontWeight.normal,
                      size: 10,
                    ),
                    Row(
                      children: [
                        textPatch(
                          "40 - 48",
                        ),
                        SizedBox(width: 6),
                        textPatch(
                          "40 - 48",
                        ),
                        SizedBox(width: 6),
                        textPatch(
                          "40 - 48",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderGrey, width: .5),
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: mainDark,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    patch("إضافة للسلة", "assets/Path 3037.png", mainWhite,
                        mainBlue, 15)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget trySection2() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderGrey, width: .5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            stake1(path: "assets/glass2.png"),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustemText(
                        text: "نظارات جلاس طبية",
                        size: 12,
                        fontWeight: FontWeight.bold,
                        tColor: mainDark,
                      ),
                      Row(children: [
                        Image.asset(
                          "assets/Icons-icon-checkmark-stroke.png",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 2),
                        CustemText(
                          text: "عدسات مجانية",
                          size: 9,
                          fontWeight: FontWeight.bold,
                          tColor: mainDark,
                        )
                      ])
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustemText(
                        text: "89",
                        tColor: mainBlue,
                        size: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(width: 4),
                      CustemText(
                        text: "ريال",
                        tColor: mainDark,
                        size: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 12.5, right: 12.5),
              height: 58,
              decoration: BoxDecoration(
                border: Border.all(color: borderGrey, width: .5),
                color: mainWhite,
              ),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustemText(
                        text: "الاحجام المتوفرة",
                        tColor: mainDark,
                        fontWeight: FontWeight.normal,
                        size: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Circle(color: orange, check: false),
                          Circle(color: green, check: true),
                          Circle(color: blue, check: true),
                          Circle(color: pink, check: true),
                          Circle(color: mainBlue, check: false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 33,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: borderGrey, width: .5),
                color: scafoldColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Path 36085.png",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 6),
                  CustemText(
                    text: "جرب النظارة قبل الشراء",
                    size: 10,
                    tColor: mainDark,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7.5, horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(
                      text: "الاحجام المتوفرة",
                      tColor: mainDark,
                      fontWeight: FontWeight.normal,
                      size: 10,
                    ),
                    Row(
                      children: [
                        textPatch(
                          "40 - 48",
                        ),
                        SizedBox(width: 6),
                        textPatch(
                          "40 - 48",
                        ),
                        SizedBox(width: 6),
                        textPatch(
                          "40 - 48",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderGrey, width: .5),
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: mainDark,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    patch("إضافة للسلة", "assets/Path 3037.png", mainWhite,
                        mainBlue, 15)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget patch(
      String text, String path, Color color, Color tColor, double raduis) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: borderGrey, width: .5),
        borderRadius: BorderRadius.circular(raduis),
        color: color,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              path,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 4),
            CustemText(
              text: text,
              tColor: tColor,
              size: 11,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget textPatch(String text) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(color: borderGrey, width: .5),
        borderRadius: BorderRadius.circular(15),
        color: mainWhite,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustemText(
              text: text,
              tColor: mainDark,
              size: 11,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget bigShape() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: borderGrey, width: .5),
        borderRadius: BorderRadius.circular(20),
        color: mainWhite,
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/Group 34871.png",
              fit: BoxFit.cover,
            ),
            SizedBox(width: 4),
            CustemText(
              text: "30%",
              tColor: mainBlue,
              size: 11,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(width: 4),
            CustemText(
              text: "خصم",
              tColor: mainDark,
              size: 11,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget Circle({Color color, bool check}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: check ? null : Border.all(color: borderGrey, width: .5),
        color: mainWhite,
      ),
      child: Padding(
        padding: EdgeInsets.all(3),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: color,
            width: 19,
            height: 19,
            child: check
                ? Center(
                    child: Icon(
                      Icons.check,
                      color: mainWhite,
                      size: 14,
                    ),
                  )
                : null,
          ),
        ),
      ),
    );
  }

  Widget stake({String path}) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(7.5),
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  patch("4", "assets/Shape.png", mainWhite, mainDark, 15),
                ],
              ),
              SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  patch("جديد", "assets/fire.png", mainBlue, mainWhite, 9),
                  SizedBox(width: 2),
                  patch("4", "assets/Shape.png", mainWhite, mainDark, 12),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget stake1({String path}) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(7.5),
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  patch("3", "assets/Shape.png", mainWhite, mainDark, 15),
                  SizedBox(width: 4),
                  patch("جديد", "assets/fire.png", mainBlue, mainWhite, 18),
                ],
              ),
              SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  patch("4", "assets/Shape.png", mainWhite, mainDark, 12),
                  bigShape(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget stake2({String path}) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(7.5),
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  patch("4", "assets/Shape.png", mainWhite, mainDark, 15),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  patch("جديد", "assets/fire.png", mainBlue, mainWhite, 9),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget mini(int image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderGrey, width: .5),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            stake2(path: "assets/mini$image.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustemText(
                      text: "عدسات لاصقة",
                      size: 12,
                      fontWeight: FontWeight.bold,
                      tColor: mainDark,
                    ),
                    Row(children: [
                      Image.asset(
                        "assets/Icons-icon-checkmark-stroke.png",
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 2),
                      CustemText(
                        text: "10 الوان متوفرة",
                        size: 9,
                        fontWeight: FontWeight.bold,
                        tColor: mainDark,
                      )
                    ])
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustemText(
                      text: "89",
                      tColor: mainBlue,
                      size: 17,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: 4),
                    CustemText(
                      text: "ريال",
                      tColor: mainDark,
                      size: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 33,
                      height: 33,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderGrey, width: .5),
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: mainDark,
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    patch("إضافة للسلة", "assets/Path 3037.png", mainWhite,
                        mainBlue, 15)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
