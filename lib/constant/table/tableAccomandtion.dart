
import 'package:aser_dash_board/constant/color.dart';
import 'package:aser_dash_board/widgets/customText/customtext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotelDateTableAccomandtion extends StatelessWidget {
  final PageController tableAccomandtion;

  HotelDateTableAccomandtion({super.key, required this.tableAccomandtion});

  List<DataRow> _createRows() {
    return List.generate(
      12,
          (index) => DataRow(

        onSelectChanged: (selected) {
          if (selected != null && selected) {
            tableAccomandtion.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
          }
        },
        cells: [
          DataCell(CustomText(text: "Moataz Elraw..", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(Text("14 Mai , 2024", style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color.fromRGBO(93, 102, 121, 1)
          ))),
          DataCell(CustomText(text: "King size room", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(CustomText(text: "2 Guests", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(CustomText(text: "14 Mai , 2024", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(CustomText(text: "18 Mai , 2024", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(CustomText(text: "500 EGP", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(CustomText(text: "Confirmed", size: 14.sp, color: Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w400)),
          DataCell(
            Container(
              width: 80.w,
              decoration: BoxDecoration(
                color: _getStatusColor(index),
                borderRadius: BorderRadius.circular(16.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 5.h),
              child: CustomText(text: _getStatusText(index), size: 14.sp, color: black, fontWeight: FontWeight.w400),
            ),
          ),

        ],
      ),
    );
  }

  static Color _getStatusColor(int index) {
    switch (index % 4) {
      case 0:
        return Color.fromRGBO(231, 248, 240, 1);
      case 1:
        return Color.fromRGBO(244, 244, 244, 1);
      case 2:
        return Color.fromRGBO(160, 185, 251, 1);
      case 3:
      default:
        return Color.fromRGBO(251, 201, 160, 1);
    }
  }

  static String _getStatusText(int index) {
    switch (index % 4) {
      case 0:
        return 'Paid';
      case 1:
        return 'UnPaid';
      case 2:
        return 'Paid';
      case 3:
      default:
        return 'UnPaid';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          DataColumn(label: CustomText(text: "Name", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Booking Date", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Room Type", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Guests", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Check in", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Check out", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Payment", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Booking Type", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),
          DataColumn(label: CustomText(text: "Status", size: 14.sp, color: const Color.fromRGBO(93, 102, 121, 1), fontWeight: FontWeight.w700)),


        ],
        rows: _createRows(),
      ),
    );
  }
}
