
import 'package:flutter/material.dart';

import '../dimens/dimens.dart';

double getListBottomPadding(BuildContext context) {
  final safeBottomPadding = MediaQuery.of(context).padding.bottom;
  return (safeBottomPadding + padding8) * 2 + height40;
}