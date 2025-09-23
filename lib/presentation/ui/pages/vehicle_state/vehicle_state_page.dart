import 'package:dispatcher_app/presentation/design/widgets/app_bar_widget.dart';
import 'package:dispatcher_app/presentation/ui/pages/vehicle_state/vehicle_state_list.dart';
import 'package:flutter/material.dart';
import '../../../design/colors/colors.dart';

class VehicleStatePage extends StatelessWidget {
  const VehicleStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Update vehicle state',
        isBack: true,
        onBackPress: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: VehicleStateList()),
    );
  }
}
