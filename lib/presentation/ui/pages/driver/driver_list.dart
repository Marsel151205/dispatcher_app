import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/images/images.dart';
import 'package:dispatcher_app/presentation/design/utils/size_utils.dart';
import 'package:dispatcher_app/presentation/design/widgets/accent_button.dart';
import 'package:dispatcher_app/presentation/design/widgets/selectable_item.dart';
import 'package:flutter/material.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  int? _selectedDriverIndex;

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
        final bool isSelectedDriver = _selectedDriverIndex == index;
        return SelectableItem(
          image: icDriverImage,
          leftPadding: padding8 ,
          title: "Konstantin",
          isSelected: isSelectedDriver,
          onTap: () {
            setState(() {
              _selectedDriverIndex = index;
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
