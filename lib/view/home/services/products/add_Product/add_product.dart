import 'dart:io';

import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/logic/productCubit/products_cubit.dart';

import 'package:aser_dash_board/widgets/customText/customtext.dart';
import 'package:aser_dash_board/widgets/formField/formField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class AddProducts extends StatelessWidget {
  PageController addProduct = PageController();
   AddProducts({super.key,required this.addProduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(

            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                child: Row(
                  children: [
                    CustomText(
                        text: "Services",
                        size: 12.sp,
                        color: darkGrey,
                        fontWeight: FontWeight.w600),
                    SizedBox(
                      width: 5.w,
                    ),
                    GestureDetector(
                        onTap: () {
                          addProduct.animateToPage(0,
                              duration: Duration(milliseconds: 5),
                              curve: Curves.easeIn);
                        },
                        child: CustomText(
                            text: "Products<<",
                            size: 12.sp,
                            color: darkGrey,
                            fontWeight: FontWeight.w600)),
                    CustomText(
                        text: "Add Product<<",
                        size: 12.sp,
                        color: black,
                        fontWeight: FontWeight.w700),

                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 60,
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          color: white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 40.h),
                              child: CustomText(text: "Product Details", size: 18.sp, color: black, fontWeight: FontWeight.w700,alignment: Alignment.centerLeft,),
                            ),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(text: "Product name", size: 14.sp, color: black, fontWeight: FontWeight.w500,alignment: Alignment.centerLeft,),
                            ),

                            SizedBox(height: 10.h,),

                            textFormFildBuilder(context, width: 597.w, hint: "Enter the product name", controller: TextEditingController(), validation: (){},
                            icon: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_up_rounded))
                            ),



                            SizedBox(height: 10.h,),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 10.w),
                              child: roomNumBuilder(
                                  function: ProductCubit.get(context).changeSingleRoomNum,
                                  number: ProductCubit.get(context).singleRoomNum,
                                  title: "For Piece"),
                            ),
                            SizedBox(height: 20.h,),
                            

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(text: "Product  Price (EGP)", size: 14.sp, color: black, fontWeight: FontWeight.w500,alignment: Alignment.centerLeft,),
                            ),
                            SizedBox(height: 10.h,),
                            
                            Row(
                              children: [
                                textFormFildBuilder(context, width: 500.w, hint: "Enter the product price", controller: TextEditingController(), validation: (){}),
                                SizedBox(width: 5.w,),
                                CustomText(text: "For Piece", size: 16.sp, color: black, fontWeight: FontWeight.w600)

                              ],
                            ),



                            SizedBox(height: 10.h,),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(text: "Product Type", size: 14.sp, color: black, fontWeight: FontWeight.w500,alignment: Alignment.centerLeft,),
                            ),
                            SizedBox(height: 10.h,),

                            textFormFildBuilder(context, width: 597.w, hint: "Enter the craft type", controller: TextEditingController(), validation: (){}),
                            SizedBox(height: 10.h,),
                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(text: "Product Description", size: 14.sp, color: black, fontWeight: FontWeight.w500,alignment: Alignment.centerLeft,),
                            ),
                            SizedBox(height: 10.h,),

                            textFormFildBuilder(context, width: 597.w, hint: "Enter the trip name", controller: TextEditingController(), validation: (){},manLines: 4,maxLines: 5),

                            SizedBox(height: 10.h,),


                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: CustomText(text: "Photo of destination", size: 14.sp, color: black, fontWeight: FontWeight.w500,alignment: Alignment.centerLeft,),
                            ),
                            SizedBox(height: 10.h,),

                            Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 20.w),
                              child: Container(
                                width: 597.w,
                                height: 200.h,


                                decoration: BoxDecoration(
                                    border: Border.all(color: darkGrey),
                                    borderRadius: BorderRadiusDirectional.circular(20.r)
                                ),
                                child: GestureDetector(
                                  onTap: (){
                                    ProductCubit.get(context).getImage(ImageSource.gallery);

                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset("assets/images/home/upload.png",color: orange,),

                                      SizedBox(height: 15.h,),
                                      CustomText(text: " Upload photo", size: 14.sp, color: orange, fontWeight: FontWeight.w600),
                                      ProductCubit.get(context).image == null  ? SizedBox.shrink() :
                                      Image.file(
                                        //height: 100.h,fit: BoxFit.cover,width: double.infinity,
                                          File(ProductCubit.get(context)
                                              .image!
                                              .path))



                                    ],
                                  ),
                                ),
                              ),
                            ),





                          ],
                        ),


                      )),
                  SizedBox(width: 40.w,),

                  Expanded(
                      flex: 40,
                      child: Column(

                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.r),
                              color: white,
                            ),

                            child: Padding(
                              padding:  EdgeInsets.symmetric(vertical: 20.h),
                              child: Column(
                                children: [

                                  Padding(
                                    padding:  EdgeInsets.symmetric(horizontal: 20.w),
                                    child: CustomText(text: "Company Name", size: 14.sp, color: black, fontWeight: FontWeight.w500,alignment: Alignment.bottomLeft,),
                                  ),
                                  SizedBox(height: 20.h,),
                                  textFormFildBuilder(context, width: 420.w, hint: "Enter company name", controller: TextEditingController(),
                                      icon: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_up)),
                                      validation: (){})

                                ],
                              ),
                            ),

                          ),

                          SizedBox(height: 40.h,),

                          Container(
                            width: double.infinity,
                            height: 60.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(10.r),
                                color: orange
                            ),
                            child: CustomText(text: "Add Products", size: 16.sp, color: white, fontWeight: FontWeight.w600,alignment: Alignment.center,),
                          ),
                          SizedBox(height: 20.h,),
                          Container(
                            width: double.infinity,
                            height: 60.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: darkGrey),
                              borderRadius: BorderRadiusDirectional.circular(10.r),

                            ),
                            child: CustomText(text: "Clear", size: 16.sp, color: orange, fontWeight: FontWeight.w600,alignment: Alignment.center,),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
ListTile roomNumBuilder({
  required Function function,
  required String title,
  required int number,
}) {
  return ListTile(
    title: Column(
      children: [
        CustomText(text: "Available number", size: 14.sp, color: black, fontWeight: FontWeight.w600,alignment: Alignment.centerLeft,),
        SizedBox(height: 10.h,),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                color: black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 20.w,),
            GestureDetector(
              onTap: () {
                function(isAdded: false);
              },
              child: Icon(
                Icons.remove_circle_outline,
                size: 24.sp,
              ),
            ),
            SizedBox(width: 20.w,),
            Text(
              number.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 20.w,),
            GestureDetector(
              onTap: () {
                function(isAdded: true);
              },
              child: Icon(
                Icons.add_circle_outline,
                size: 24.sp,
              ),
            ),
        
        
          ],
        ),
      ],
    ),

  );
}