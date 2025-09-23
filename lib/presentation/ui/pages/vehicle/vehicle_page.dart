import 'package:dispatcher_app/presentation/design/styles/styles.dart';
import 'package:dispatcher_app/presentation/design/widgets/app_bar_widget.dart';
import 'package:dispatcher_app/presentation/ui/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Kiparo.com Dispatcher',
        isBack: false,
        onBackPress: () {},
      ),
      body: Container(color: backgroundColor, child: VehicleList()),
    );
  }
}
