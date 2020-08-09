import 'package:flutter/material.dart';
import 'package:sulpotu/constants.dart';
import 'package:sulpotu/size_config.dart';
import 'package:sulpotu/components/title_text.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
            ),
            WhiskeyCard()
          ],
        ),
      ),
    );
  }
}

class WhiskeyCard extends StatelessWidget {
  const WhiskeyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
        padding: EdgeInsets.all(defaultSize * 2),
        child: SizedBox(
          width: defaultSize * 40,
          child: AspectRatio(
            aspectRatio: 5 / 6,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kNoteColor,
              ),
              child: Padding(
                padding: EdgeInsets.all(defaultSize * 2),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(defaultSize),
                      child: TitleText(
                        title: "title",
                      ),
                    ),
                    IntrinsicHeight(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(defaultSize),
                            child: Text(
                              "talisker",
                              style: TextStyle(fontSize: defaultSize * 2),
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.black,
                            // thickness: 1,
                            width: 0.5,
                            indent: 12,
                            endIndent: 12,
                          ),
                          Padding(
                            padding: EdgeInsets.all(defaultSize),
                            child: Text(
                              "12years",
                              style: TextStyle(fontSize: defaultSize * 2),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultSize),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("alc 43.5 "),
                          Text("region  Ske Island "),
                          Text("type Single molt "),
                          Text("cask somecask "),
                          Text("nose Peat "),
                          Text("taste sweet "),
                        ],
                      ),
                    )

                    // alc: 43.5,
                    // region: "Ske Island",
                    // type: "Single molt",
                    // cask: "somecask",
                    // nose: "Peat",
                    // taste: "sweet",
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
