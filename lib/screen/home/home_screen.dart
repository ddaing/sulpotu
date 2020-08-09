import 'package:flutter/material.dart';
import 'package:sulpotu/components.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sulpotu",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      fontWeight: FontWeight.w700, color: Colors.white),
                ),
                Text(
                  "whisky tasting notes",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      .copyWith(color: Colors.white30),
                ),
                SizedBox(height: kDefaultPadding),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: kNoteColor,
                    ),
                    height: 500,
                    width: 500,
                    child: Con)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TasteCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: kNoteColor,
            ),
          ),
        ));
  }
}
