import 'package:dispatcher_app/presentation/design/colors/colors.dart';
import 'package:dispatcher_app/presentation/design/dimens/dimens.dart';
import 'package:dispatcher_app/presentation/design/styles/styles.dart';
import 'package:dispatcher_app/presentation/design/widgets/accent_button.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String description;

  const ErrorDialog({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Oops...',
              style: head1TextStyle,
            ),
            const SizedBox(height: height8),
            Text(
              description,
              style: body1TextStyle,
            ),
            const SizedBox(height: height20),
            Center(
              child: AccentButton(
                title: 'OK',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
