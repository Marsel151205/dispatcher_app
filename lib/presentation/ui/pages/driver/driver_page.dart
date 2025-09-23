import 'package:dispatcher_app/presentation/design/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import '../../../design/colors/colors.dart';
import 'driver_list.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'SelectDriver',
        isBack: true,
        onBackPress: () {
          Navigator.pop(context);
        },
      ),
      body: Container(color: backgroundColor, child: DriverList()),
    );
  }
}
