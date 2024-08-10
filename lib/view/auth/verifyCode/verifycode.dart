
import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/constant/route/route.dart';
import 'package:aser_dash_board/logic/auth/auth/authCubit.dart';
import 'package:aser_dash_board/logic/auth/auth/authState.dart';
import 'package:aser_dash_board/widgets/button/customButton.dart';
import 'package:aser_dash_board/widgets/customText/customtext.dart';
import 'package:aser_dash_board/widgets/formField/formField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodee extends StatelessWidget {


  VerifyCodee({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: white,
              elevation: 0.0,
              leading: IconButton(onPressed: (){
                Navigator.pop(context);
              },icon: const Icon(Icons.arrow_back,color: Colors.black),),
            ),
            backgroundColor:white,
            body: Row(

              children: [

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20.w),
                      child: Container(
                          width: 568.w,
                          height: 688.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(20.r),
                              color: orange
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Text("Nomadica",style: TextStyle(fontWeight:FontWeight.w700,letterSpacing : 10.w,fontSize: 60.sp,color: white),)),
                              Center(child: Text("Unleash the explorer within you",style: TextStyle(fontWeight:FontWeight.w700,letterSpacing : 5.w ,fontSize: 10.sp,color: white),)),

                            ],
                          )),
                    ),
                  ],
                ),

               SizedBox(width: 250.w,),

                Container(

                  height: 1024.h,
                  decoration: BoxDecoration(color: white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        height: 20.h,
                      ),
                      CustomText(
                          text: 'Confirm Email',
                          size: 48.sp,
                          fontWeight: FontWeight.w700,
                          color: orange),
                      SizedBox(
                        height: 50.h,
                      ),

                      SizedBox(
                        width: 400.w,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: PinCodeTextField(
                            appContext: context,
                            pastedTextStyle: TextStyle(
                              color: Colors.green.shade600,
                              fontWeight: FontWeight.bold,
                            ),
                            length: 4,

                            blinkWhenObscuring: true,
                            animationType: AnimationType.fade,

                            pinTheme: PinTheme(
                              shape: PinCodeFieldShape.box,
                              borderRadius: BorderRadius.circular(5),
                              fieldHeight: 50,
                              fieldWidth: 100,
                              activeFillColor: Colors.white,
                              selectedColor: Colors.black,
                              selectedFillColor: Colors.white,
                              inactiveColor: Colors.black,
                              inactiveFillColor: Colors.white,
                              activeColor: Colors.black,
                            ),
                            cursorColor: Colors.black,
                            animationDuration: const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            controller: AuthCubit.get(context).verifyCode,
                            keyboardType: TextInputType.number,
                            errorTextSpace: 30.sp,
                            validator: (String? value) {
                              if (value!.isEmpty) {

                              }
                              return null;
                            },
                            boxShadows: const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                color: Colors.black12,
                                blurRadius: 10,
                              )
                            ],
                            onCompleted: (v) {
                              debugPrint("Completed");
                            },
                            textStyle: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600, color: black),
                            // onTap: () {
                            //   print("Pressed");
                            // },
                            onChanged: (value) {
                              debugPrint(value);

                            },
                            beforeTextPaste: (text) {
                              debugPrint("Allowing to paste $text");
                              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                              //but you can show anything you want here, like your pop up saying wrong paste format or etc
                              return true;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50.h,
                      ),

                      Padding(
                        padding: EdgeInsets.only(right: 10.0.w),
                        child: CustomButton(
                          width: 400.w,
                          height: 72.h,
                          text: 'Confirm',
                          backgroudColor: orange,
                          size: 24.sp,
                          fontWeight: FontWeight.w700,
                          function: () {
                            // AuthCubit.get(context).login();
                            Navigator.pushNamed(context, "forgotPassword");
                          },
                        ),
                      )







                    ],
                  ),
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
