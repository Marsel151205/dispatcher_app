import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/images/images.dart';
import 'package:flutter/material.dart';

class VehicleItem extends StatelessWidget {
  const VehicleItem({super.key});

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
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: padding8, right: padding16, top: padding6, bottom: padding6),
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
        padding: const EdgeInsets.only(
          left: padding6,
          right: padding6,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              'BMW',
              style: TextStyle(
                color: secondaryColor,
                fontSize: fontSize14,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (false)
              Text(
                'No driver',
                style: TextStyle(
                  color: secondaryVariantColor,
                  fontSize: fontSize14,
                  fontWeight: FontWeight.w400,
                ),
              )
            else
              RichText(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: TextStyle(fontSize: fontSize14),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Driver: ',
                      style: TextStyle(
                        color: secondaryVariantColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Paul',
                      style: TextStyle(
                        color: secondaryColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _status() {
    return Padding(
      padding: const EdgeInsets.only(right: padding16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          icParkingImage,
          Text(
            'parking',
            style: TextStyle(
              color: secondaryColor,
              fontWeight: FontWeight.w400,
              fontSize: fontSize12,
            ),
          ),
        ],
      ),
    );
  }
}
