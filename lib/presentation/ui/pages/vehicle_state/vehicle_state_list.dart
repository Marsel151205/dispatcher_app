import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/images/images.dart';
import 'package:dispatcher_app/presentation/design/utils/size_utils.dart';
import 'package:dispatcher_app/presentation/design/widgets/accent_button.dart';
import 'package:dispatcher_app/presentation/design/widgets/selectable_item.dart';
import 'package:flutter/material.dart';

class VehicleStateList extends StatefulWidget {
  const VehicleStateList({super.key});

  @override
  State<VehicleStateList> createState() => _VehicleStateList();
}

class _VehicleStateList extends State<VehicleStateList> {
  int? _selectedStateIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _list(),
        Align(alignment: Alignment.bottomCenter, child: _saveButton()),
      ],
    );
  }

  Widget _list() {
    return ListView.separated(
      padding: EdgeInsets.only(
        right: padding16,
        left: padding16,
        top: padding16,
        bottom: getListBottomPadding(context),
      ),
      itemBuilder: (BuildContext context, int index) {
        final bool isSelectedDriver = _selectedStateIndex == index;
        return SelectableItem(
          image: icPickUpImage,
          leftPadding: padding16 ,
          title: "Pickup",
          isSelected: isSelectedDriver,
          onTap: () {
            setState(() {
              _selectedStateIndex = index;
            });
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: height8);
      },
      itemCount: 15,
    );
  }

  Widget _saveButton() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: padding16,
          right: padding16,
          bottom: padding8,
        ),
        child: AccentButton(title: "Save", onTap: () {}),
      ),
    );
  }
}
