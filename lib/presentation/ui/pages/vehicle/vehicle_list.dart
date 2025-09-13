import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/ui/pages/vehicle/vehicle_item.dart';
import 'package:flutter/cupertino.dart';


class VehicleList extends StatelessWidget {
  const VehicleList({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_list(), _updateButton()]);
  }

  Widget _list() {
    return ListView.separated(
      padding: EdgeInsets.only(
        right: padding16,
        left: padding16,
        top: padding16,
      ),
      itemBuilder: (BuildContext context, int index) {
        return VehicleItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: height8);
      },
      itemCount: 15,
    );
  }

  Widget _updateButton() {
    return Container();
  }
}

