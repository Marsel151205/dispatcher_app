import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/images/images.dart';
import 'package:dispatcher_app/presentation/design/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectableItem extends StatelessWidget {
  final SvgPicture image;
  final double leftPadding;
  final String title;
  final bool isSelected;
  final Function() onTap;

  const SelectableItem({
    super.key,
    required this.image,
    required this.leftPadding,
    required this.onTap,
    required this.title,
    required this.isSelected
  });

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
            padding: EdgeInsets.only(
              left: leftPadding,
              right: padding16,
              top: padding6,
              bottom: padding6,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                image,
                const SizedBox(width: width16),
                Expanded(
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    title,
                    style: head2TextStyle,
                  ),
                ),
                if (isSelected) icCheckImage,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
