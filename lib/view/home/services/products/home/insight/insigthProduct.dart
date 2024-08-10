import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/constant/table/insigth_product.dart';
import 'package:aser_dash_board/logic/productCubit/products_cubit.dart';

import 'package:aser_dash_board/widgets/customText/customtext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class InsightsProducts extends StatelessWidget {
  PageController insightsProduct = PageController();
  InsightsProducts({super.key,required this.insightsProduct});

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
                        insightsProduct.previousPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                      },
                      child: CustomText(
                          text: "Products<<",
                          size: 12.sp,
                          color: darkGrey,
                          fontWeight: FontWeight.w600)),
                  CustomText(
                      text: "The grand Egyptian Museum.<<",
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
                  GestureDetector(
                    onTap:(){
                      insightsProduct.previousPage( duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                      ProductCubit.get(context).toggle(0);


                    },
                    child: Container(
                      width: 167.w,
                      height: 50.h,
                      color:ProductCubit.get(context).change == 0 ? orange : white,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 10.w,
                          ),
                          Image.asset(
                            "assets/images/home/services.png",

                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CustomText(
                            text: "Service",
                            size: 14.sp,
                            color: black,
                            fontWeight: FontWeight.w600,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      insightsProduct.animateToPage(3, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                      ProductCubit.get(context).toggle(1);


                    },
                    child: Container(
                      width: 167.w,
                      height: 50.h,
                      color:  ProductCubit.get(context).change == 1 ? orange : white,

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
                            text: "Orders",
                            size: 14.sp,
                            color: black,
                            fontWeight: FontWeight.w600,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      ProductCubit.get(context).toggle(2);


                    },
                    child: Container(
                      width: 167.w,
                      height: 50.h,
                      color: ProductCubit.get(context).change == 2 ? orange : white,
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

            /// left side

            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 40,
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20.r),
                            color: white
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadiusDirectional.circular(20.r)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomText(text: "Products Management", size: 20.sp, color: black, fontWeight: FontWeight.w600,),






                                    ],
                                  ),
                                  SizedBox(height: 40.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset("assets/images/home/room.png"),
                                          CustomText(text: "2000", size: 20.sp, color: text, fontWeight: FontWeight.w600),
                                          CustomText(text: "Product", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500)

                                        ],
                                      ),
                                      SizedBox(width: 80.w,),
                                      Column(
                                        children: [
                                          Image.asset("assets/images/home/aval.png"),
                                          CustomText(text: "150", size: 20.sp, color: text, fontWeight: FontWeight.w600),
                                          CustomText(text: "Sold", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500)

                                        ],
                                      ),
                                      SizedBox(width: 80.w,),
                                      Column(
                                        children: [
                                          Image.asset("assets/images/home/aval.png"),
                                          CustomText(text: "150", size: 20.sp, color: text, fontWeight: FontWeight.w600),
                                          CustomText(text: "Available", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500)

                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),

                      SizedBox(width: 30.w),

                      Expanded(
                          flex: 60,
                          child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20.r),
                            color: white
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                          child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadiusDirectional.circular(20.r)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomText(text: "Products Revenue", size: 20.sp, color: black, fontWeight: FontWeight.w600,),






                                    ],
                                  ),
                                  SizedBox(height: 40.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset("assets/images/home/room.png"),
                                          CustomText(text: "8500.00 EGP", size: 20.sp, color: text, fontWeight: FontWeight.w600),
                                          CustomText(text: "Total Balance", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500)

                                        ],
                                      ),
                                      SizedBox(width: 80.w,),
                                      Column(
                                        children: [
                                          Image.asset("assets/images/home/aval.png"),
                                          CustomText(text: "8500.00 EGP", size: 20.sp, color: text, fontWeight: FontWeight.w600),
                                          CustomText(text: "Paid Balance", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500)

                                        ],
                                      ),
                                      SizedBox(width: 80.w,),
                                      Column(
                                        children: [
                                          Image.asset("assets/images/home/aval.png"),
                                          CustomText(text: "8500.00 EGP", size: 20.sp, color: text, fontWeight: FontWeight.w600),
                                          CustomText(text: "Pending Balance", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500)

                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(height: 30.h,),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 0.w,vertical: 30.h),
                    child: Container(
                      height: 900.h,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadiusDirectional.circular(10.r)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 30.w),
                        child: Container(

                          padding: EdgeInsets.symmetric(horizontal: 0.w,vertical: 10.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(10.r),
                            color: white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CustomText(text: "Bookings", size: 20.sp, color: black, fontWeight: FontWeight.w600),
                                  SizedBox(width: 30.w,),
                                  CustomText(text: "( 200 clients)", size: 16.sp, color: darkGrey, fontWeight: FontWeight.w500),




                                ],
                              ),
                              SizedBox(height: 20.h),
                              Padding(

                                padding:  EdgeInsets.symmetric(vertical: 10.h),
                                child: SizedBox(


                                  child: TextFormField(
                                    controller: TextEditingController(),
                                    maxLines: 1,
                                    validator: (value) {},
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.search,
                                          color: darkGrey,
                                        ),
                                      ),
                                      //filled: true,

                                      fillColor: Color.fromRGBO(247, 247, 247, 1),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 13.w,
                                        vertical: 20.h,
                                      ),
                                      constraints: BoxConstraints(
                                        minHeight: 64.h,
                                        minWidth: 372.w,
                                      ),

                                      hintStyle: TextStyle(
                                        fontSize: 16.sp,
                                        color: darkGrey,
                                      ),
                                      hintText: 'search',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.r),
                                        borderSide: BorderSide(color: orange),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Container(
                                width: double.infinity,

                                child: InsightProductsTables(insightProduct: insightsProduct,),
                              ),
                              SizedBox(height: 20.h),
                              Row(

                                children: [
                                  GestureDetector(
                                    onTap:(){

                                    },
                                    child: Container(
                                      width: 109.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadiusDirectional.circular(10.r),
                                          border: Border.all(
                                              color: Colors.grey.shade500
                                          )
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(Icons.keyboard_arrow_left_sharp,color : Colors.grey.shade500,),

                                          CustomText(text: "Previous", size: 14.sp, color: Colors.grey.shade500, fontWeight: FontWeight.w600,alignment: Alignment.center,),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: (){

                                    },
                                    child: Container(
                                      width: 80.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadiusDirectional.circular(10.r),
                                          border: Border.all(
                                              color: Colors.grey.shade500
                                          )
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [


                                          CustomText(text: "Next", size: 14.sp, color: Colors.grey.shade500, fontWeight: FontWeight.w600,alignment: Alignment.center,),
                                          Icon(Icons.keyboard_arrow_right,color : Colors.grey.shade500,),
                                        ],
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
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
