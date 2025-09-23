import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/images/images.dart';
import 'package:dispatcher_app/presentation/design/styles/styles.dart';
import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  final Function() onTap;
  final Function() onStateTap;

  const VehicleItem({super.key, required this.onTap, required this.onStateTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height64,
      child: Card(
        color: surfaceColor,
        margin: EdgeInsets.zero,
        elevation: elevation006,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(
              left: padding8,
              right: padding16,
              top: padding6,
              bottom: padding6,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[icMotorcycleImage, _title(), _status()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _title() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: padding6, right: padding6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'BMW',
              style: head2TextStyle,
            ),
            if (false)
              Text('No driver', style: head2TextStyle)
            else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'Driver: ', style: head3TextStyle),
                    TextSpan(text: 'Paul', style: head2TextStyle),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _status() {
    return InkWell(
      onTap: onStateTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icParkingImage,
          Text('parking', style: additional1TextStyle),
        ],
      ),
    );
  }
}
