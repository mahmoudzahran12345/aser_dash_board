import 'package:aser_dash_board/logic/home/home_cubit.dart';
import 'package:aser_dash_board/logic/home/home_state.dart';
import 'package:aser_dash_board/view/home/services/servicesHome/servicesHome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Insights/Insights.dart';
import 'detailsServicesAccomandtion/detailsServicesAccomandtion.dart';

class Services extends StatelessWidget {
   Services({super.key});
  
  PageController servicesController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return PageView(
            controller: servicesController,
            children: [
              HomeServices(accomandtion: servicesController,),

              DetailsServices(detailsServices: servicesController,),
              ///  in sigths
              Insights(insights: servicesController,)
            ],
          );
        },
      ),
    );
  }
}
