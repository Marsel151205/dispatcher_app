import 'package:dispatcher_app/presentation/design/dialogs/error_dialog.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/utils/size_utils.dart';
import 'package:dispatcher_app/presentation/design/widgets/accent_button.dart';
import 'package:dispatcher_app/presentation/ui/pages/driver/driver_page.dart';
import 'package:dispatcher_app/presentation/ui/pages/vehicle/vehicle_item.dart';
import 'package:dispatcher_app/presentation/ui/pages/vehicle_state/vehicle_state_list.dart';
import 'package:dispatcher_app/presentation/ui/pages/vehicle_state/vehicle_state_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(context),
        Align(alignment: Alignment.bottomCenter, child: _updateButton(context)),
      ],
    );
  }

  Widget _list(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        right: padding16,
        left: padding16,
        top: padding16,
        bottom: getListBottomPadding(context),
      ),
      itemBuilder: (BuildContext context, int index) {
        return VehicleItem(
          onTap: () async {
            await _showDriverPage(context);
          },
          onStateTap: () async {
            await _showVehicleStatePage(context);
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: height8);
      },
      itemCount: 15,
    );
  }

  Widget _updateButton(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: padding16,
          right: padding16,
          bottom: padding8,
        ),
        child: AccentButton(
          title: "Update",
          onTap: () {
            _showErrorDialog(context);
          },
        ),
      ),
    );
  }

  void _showErrorDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ErrorDialog(
          description: 'Server is unavailable. Please try again later.',
        );
      },
    );
  }

  Future<void> _showDriverPage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const DriverPage();
        },
      ),
    );
  }

  Future<void> _showVehicleStatePage(BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const VehicleStatePage();
        },
      ),
    );
  }
}
