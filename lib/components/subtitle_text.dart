import 'package:flutter/material.dart';
import 'package:sulpotu/size_config.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        fontSize: defaultSize * 2,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
