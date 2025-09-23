import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/styles/styles.dart';
import 'package:flutter/material.dart';

import '../images/images.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool isBack;
  final Function() onBackPress;

  const AppBarWidget({
    super.key,
    required this.title,
    required this.isBack,
    required this.onBackPress,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: primaryTextStyle),
      backgroundColor: surfaceColor,
      elevation: elevation0,
      centerTitle: true,
      leading: isBack
          ? IconButton(icon: icBackImage, onPressed: onBackPress)
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
