import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TapPart extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onPressed;
  TapPart({required this.selectedDate, required this.onPressed, Key? key}):super(key: key);
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Expanded(
        child: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'U&I',
            style: textTheme.headline1,
          ),
          Column(
            children: [
              Text(
                '처음 만난 날',
                style: textTheme.bodyText1,
              ),
              Text(
                '${selectedDate.year},${selectedDate.month},${selectedDate.day}',
                style: textTheme.bodyText2,
              ),
            ],
          ),
          IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 40,
              )),
          Text(
            'D+${DateTime(now.year, now.month, now.day).difference(selectedDate).inDays + 1}',
            style: textTheme.headline2,
          ),
        ],
      ),
    ));
  }
}
