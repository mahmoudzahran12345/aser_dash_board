import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/widgets/customText/customtext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsServices extends StatelessWidget {
  PageController detailsServices = PageController();

  DetailsServices({super.key, required this.detailsServices});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
              child: Row(
                children: [
                  CustomText(
                      text: "Home",
                      size: 12.sp,
                      color: darkGrey,
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    width: 5.w,
                  ),
                  GestureDetector(
                      onTap: () {
                        detailsServices.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: CustomText(
                          text: "Accommodations<<",
                          size: 12.sp,
                          color: darkGrey,
                          fontWeight: FontWeight.w600)),
                  CustomText(
                      text: "Sonesta St. George Hotel - Convention.<<",
                      size: 12.sp,
                      color: black,
                      fontWeight: FontWeight.w700),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                children: [
                  Container(
                    width: 167.w,
                    height: 50.h,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Image.asset(
                          "assets/images/home/services.png",
                          color: white,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CustomText(
                          text: "Service",
                          size: 14.sp,
                          color: white,
                          fontWeight: FontWeight.w600,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      detailsServices.animateToPage(2, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                    },
                    child: Container(
                      width: 167.w,
                      height: 50.h,
                      color: white,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Image.asset(
                            "assets/images/home/chart.png",
                            color: black,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            text: "Insights",
                            size: 14.sp,
                            color: black,
                            fontWeight: FontWeight.w600,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60.w,
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 1000,
                      padding: EdgeInsets.symmetric(
                          horizontal: 30.w, vertical: 10.h),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadiusDirectional.circular(20.r)),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: "Service Details",
                                size: 20.sp,
                                color: black,
                                fontWeight: FontWeight.w600),
                            SizedBox(
                              height: 30.h,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15.r),
                              child: Image.network(
                                "https://www.shutterstock.com/image-photo/credit-card-on-holiday-blurred-600nw-441566938.jpg",
                                height: 200.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 80.h,
                              child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(15.r),
                                        child: Image.network(
                                          "https://www.shutterstock.com/image-photo/credit-card-on-holiday-blurred-600nw-441566938.jpg",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                  itemCount: 6),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomText(
                                text: "Hotel Title",
                                size: 16.sp,
                                color: text,
                                fontWeight: FontWeight.w600),
                            CustomText(
                                text: "Sonesta St. George Hotel - Convention.",
                                size: 16.sp,
                                color: text,
                                fontWeight: FontWeight.w500),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomText(
                                text: "About",
                                size: 16.sp,
                                color: text,
                                fontWeight: FontWeight.w600),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              "The Grand Egyptian Museum in Giza, Egypt is set to be the largest archaeological museum in the world, showcasing over 100,000 artifacts from ancient Egyptian civilization. The museum is scheduled to open to the public in mid-2024 after years of delays and setbacks.When the museum fully opens, visitors will be able to see the complete collection of King Tutankhamun's treasures for the first time, including around 5,000 items from his tomb that have never been displayed before. Other highlights will include a 30-foot-tall granite statue of Ramses ",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: black,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomText(
                                text: "Amenities host have",
                                size: 16.sp,
                                color: text,
                                fontWeight: FontWeight.w600),
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.w,
                                childAspectRatio: (5).h,
                              ),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                var item = [
                                  {
                                    "image": 'assets/images/home/inrernet.png',
                                    "title": "internet",
                                  },
                                  {
                                    "image": 'assets/images/home/air.png',
                                    "title": "Private PathRoom",
                                  },
                                  {
                                    "image": 'assets/images/home/inrernet.png',
                                    "title": "workSpace",
                                  },
                                ];
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3.r),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10.w, vertical: 10.h),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        item[index]["image"]!,
                                        width: 20.w,
                                        height: 20.h,
                                      ),
                                      SizedBox(height: 10.w),
                                      Text(
                                        item[index]["title"]!,
                                        style: TextStyle(
                                          color: black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomText(
                                text: " Special features host have",
                                size: 16.sp,
                                color: text,
                                fontWeight: FontWeight.w600),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                Image.asset("assets/images/home/air.png"),
                                SizedBox(
                                  width: 10.w,
                                ),
                                CustomText(
                                    text: "Outdoor Pool",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w500)
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomText(
                                text: " Staff languages",
                                size: 16.sp,
                                color: text,
                                fontWeight: FontWeight.w600),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                CustomText(
                                    text: "Arabic",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w500),
                                SizedBox(
                                  width: 100.w,
                                ),
                                CustomText(
                                    text: "English",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w500)
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            CustomText(
                                text: "Room details",
                                size: 20.sp,
                                color: text,
                                fontWeight: FontWeight.w600),
                            SizedBox(
                              height: 20.h,
                            ),
                            GridView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.3.h,
                                crossAxisSpacing: 5.w,
                                mainAxisSpacing: 10.h,
                              ),
                              itemBuilder: (context, index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // args.room[index].roomType! == "Single"
                                    //     ? "Services.oneRoom".tr()
                                    //     : args.room[index].roomType! == "Double"
                                    //     ? "Services.doubleRoom".tr()
                                    //     : args.room[index].roomType! == "Triple"
                                    //     ? "Services.threeRoom".tr()
                                    "SingleRoom",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: black,
                                        fontSize: 16.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(15.r),
                                    child: Image.network(
                                      "https://static01.nyt.com/images/2019/03/24/travel/24trending-shophotels1/24trending-shophotels1-superJumbo.jpg",
                                      width: 200.w,
                                      height: 200.h,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Price" + " : ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              color: black,
                                              fontSize: 14.sp),
                                        ),
                                        TextSpan(
                                          text: "5000 EGP",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: black,
                                              fontSize: 14.sp),
                                        ),
                                        TextSpan(
                                          text: "                   Night",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: orange,
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "Price Include BreakFast",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: black,
                                        fontSize: 12.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                          text: " :Enough for ",
                                          size: 14.sp,
                                          color: darkGrey,
                                          fontWeight: FontWeight.w500),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      CustomText(
                                          text: "2  Guest",
                                          size: 14.sp,
                                          color: darkGrey,
                                          fontWeight: FontWeight.w500),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  width: 60.w,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius:
                                BorderRadiusDirectional.circular(20.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(
                                    "assets/images/home/pesrson.png"),
                              ),
                              CustomText(
                                text: "Al Amal Company",
                                size: 20.sp,
                                color: black,
                                fontWeight: FontWeight.w600,
                                textDecoration: TextDecoration.underline,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/home/profile.png"),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  CustomText(
                                    text: "mahmoud",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CustomText(
                                    text: "(Owner)",
                                    size: 14.sp,
                                    color: darkGrey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: " : Status  ",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  CustomText(
                                    text: "Active",
                                    size: 14.sp,
                                    color: Colors.green,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 120.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                10.r),
                                        border: Border.all(color: darkGrey)),
                                    child: CustomText(
                                      text: "Delete ",
                                      size: 16.sp,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w600,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Container(
                                    width: 120.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadiusDirectional.circular(
                                                10.r),
                                        border: Border.all(color: darkGrey)),
                                    child: CustomText(
                                      text: "Restrict ",
                                      size: 16.sp,
                                      color: black,
                                      fontWeight: FontWeight.w600,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: CustomText(
                                  text: "Contact Details",
                                  size: 20.sp,
                                  color: black,
                                  fontWeight: FontWeight.w600,
                                  alignment: Alignment.centerLeft,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/home/address.png"),
                                    CustomText(
                                        text:
                                            "23 Abbas El Aqqad st - Naser city - Cairo",
                                        size: 16.sp,
                                        color: black,
                                        fontWeight: FontWeight.w400)
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 40.w),
                                child: CustomText(
                                  text: "Address Link",
                                  size: 16.sp,
                                  color: orange,
                                  fontWeight: FontWeight.w400,
                                  alignment: Alignment.centerLeft,
                                  textDecoration: TextDecoration.underline,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Row(
                                  children: [
                                    Image.asset("assets/images/home/phon.png"),
                                    CustomText(
                                        text: "20 1057842254+",
                                        size: 16.sp,
                                        color: black,
                                        fontWeight: FontWeight.w400)
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Row(
                                  children: [
                                    Image.asset(
                                        "assets/images/home/location.png"),
                                    CustomText(
                                      text: "Website",
                                      size: 16.sp,
                                      color: orange,
                                      fontWeight: FontWeight.w400,
                                      textDecoration: TextDecoration.underline,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius:
                                BorderRadiusDirectional.circular(20.r)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 10.h, horizontal: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  text: "Service Reviews",
                                  size: 20.sp,
                                  color: black,
                                  fontWeight: FontWeight.w600),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: "Overall Rating",
                                    size: 16.sp,
                                    color: Color.fromRGBO(53, 71, 100, 1),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    width: 30.w,
                                  ),
                                  CustomText(
                                    text: "Recommend",
                                    size: 16.sp,
                                    color: Color.fromRGBO(53, 71, 100, 1),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: "4.8",
                                    size: 24.sp,
                                    color: black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  SizedBox(
                                    width: 85.w,
                                  ),
                                  CustomText(
                                    text: "88%",
                                    size: 24.sp,
                                    color: black,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(
                                    text: "140  ",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  CustomText(
                                    text: "Reviews",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(
                                    width: 85.w,
                                  ),
                                  CustomText(
                                    text: "Recommended",
                                    size: 14.sp,
                                    color: black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Container(
                                decoration: BoxDecoration(color: white),
                                child: SizedBox(
                                  height: 400.h,
                                  child: ListView.builder(
                                      itemCount: 6,
                                      itemBuilder: (context, index) => Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.h,
                                                right: 20.w,
                                                left: 20.w),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                ListTile(
                                                  contentPadding:
                                                      EdgeInsets.zero,
                                                  leading: const CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        "assets/images/home/profile.png"),
                                                  ),
                                                  title: Text(
                                                    "Mahmoud Zahran",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: const Color.fromRGBO(
                                                            17, 17, 17, 1),
                                                        fontSize: 14.sp),
                                                  ),
                                                  subtitle: Text(
                                                    "5 : am ",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: const Color.fromRGBO(
                                                            126, 126, 126, 1),
                                                        fontSize: 12.sp),
                                                  ),
                                                  trailing: SizedBox(
                                                    width: 100.w,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: List.generate(
                                                        3,
                                                        (index) => Icon(
                                                          Icons.star_rounded,
                                                          color: orange,
                                                          size: 20.r,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Just wanted to remind everyone that we have a team building event planned for next Wednesday, don't forget to sign up!",
                                                  // "Services.contentComment".tr(),
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Color.fromRGBO(
                                                          97, 97, 97, 1),
                                                      fontSize: 14.sp),
                                                ),
                                              ],
                                            ),
                                          )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 60.w,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
