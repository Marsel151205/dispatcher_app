import 'package:flutter/material.dart';

import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dispatchers',
          style: TextStyle(
            color: primaryColor,
            fontSize: fontSize16,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: surfaceColor,
        elevation: elevation0,
        centerTitle: true,
      ),
      body: Container(color: backgroundColor, child: const Text('Body')),
    );
  }
}
