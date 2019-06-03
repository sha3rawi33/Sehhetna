import 'package:flutter/material.dart';
import 'package:healthy_wealthy/sideDraw.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  double bannerHeight, listHeight, listPaddingTop;
  double cardContainerHeight, cardContainerTopPadding;

  @override
  Widget build(BuildContext context) {
    bannerHeight = MediaQuery.of(context).size.height * .25;
    listHeight = MediaQuery.of(context).size.height * .75;
    cardContainerHeight = 200;
    cardContainerTopPadding = bannerHeight / 2;
    listPaddingTop = cardContainerHeight - (bannerHeight / 2);
    return Scaffold(
      drawer: SideDraw(),
      body: Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              topBanner(context),
              Expanded(child: bodyBloodRequestList(context))
            ],
          ),
          bannerContainer(),
          cardContainer(context),
        ],
      ),
    );
  }

  Container bodyBloodRequestList(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade300,
      padding:
          new EdgeInsets.only(top: listPaddingTop, right: 10.0, left: 10.0),
      child: Column(
        children: <Widget>[
          rowRecentUpdates(),
          Expanded(child: listRecentUpdates())
        ],
      ),
    );
  }

  ListView listRecentUpdates() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: false,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return RecentUpdateListWidget();
        });
  }

  Row rowRecentUpdates() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Recent Updates",
              style: TextStyle(color: Colors.black87, fontSize: 17.0)),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("View All",
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0)),
        )
      ],
    );
  }

  Container topBanner(BuildContext context) {
    return Container(
      height: bannerHeight,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        const Color.fromARGB(1000, 157, 37, 24),
        const Color.fromARGB(1000, 212, 47, 33),
      ])),
    );
  }

  Container bannerContainer() {
    return Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
        child: Text(
          "Blood Requests",
          style: TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
        ));
  }

  Container cardContainer(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(
          top: cardContainerTopPadding, right: 20.0, left: 20.0),
      child: Container(
        height: cardContainerHeight,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                PercentageWidget(
                  size: 120.0,
                  title: 'Available',
                  count: 126,
                  percentage: 22,
                  countLeft: true,
                ),
                PercentageWidget(
                  size: 120.0,
                  title: 'Requests',
                  count: 248,
                  percentage: 56,
                  countLeft: false,
                ),
                SizedBox(
                  height: 60.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PercentageWidget extends StatelessWidget {
  final double size;
  final int count;
  final int percentage;
  final String title;
  final bool countLeft;

  const PercentageWidget(
      {Key key,
      this.size,
      this.count,
      this.percentage,
      this.title,
      this.countLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            countLeft ? leftWidget() : rightWidget(),
            Text(
              title,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  Row leftWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 2,
            child: Center(
              child: Text('$count',
                  style:
                      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
            )),
        Expanded(
            flex: 1,
            child: Center(
                child: Text('$percentage %',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: getPercentageColor(percentage)))))
      ],
    );
  }

  Row rightWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
            flex: 1,
            child: Center(
                child: Text('$percentage %',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                        color: getPercentageColor(percentage))))),
        Expanded(
            flex: 2,
            child: Center(
              child: Text('$count',
                  style:
                      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold)),
            )),
      ],
    );
  }
}

Color getPercentageColor(int p) {
  return p > 50.0 ? Colors.green : Colors.red;
}

class RecentUpdateListWidget extends StatelessWidget {
  final String receiverName;
  final String receiverAge;
  final String receiverSex;
  final String receiverDistance;
  final String postedAtTime;

  const RecentUpdateListWidget({
    Key key,
    this.receiverName,
    this.receiverAge,
    this.receiverSex,
    this.receiverDistance,
    this.postedAtTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (GestureDetector(
      onTap: () {
        return showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  "Donate",
                  style: TextStyle(),
                ),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: <Widget>[
                      Text('This widget will take you to  the donation page'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.white54,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: BloodGroupThumbnailWidget(),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    receiverName != null ? receiverName : "Ahmed Saad",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  child: Text(
                    getSecondlineDesc(),
                    style: TextStyle(color: Colors.black87, fontSize: 15.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

  String getSecondlineDesc() {
    String age = receiverAge != null ? receiverAge : '17';
    String sex = receiverSex != null ? receiverSex : 'Male';
    String distance = receiverDistance != null ? receiverDistance : '20KM';
    String time = postedAtTime != null ? postedAtTime : '3 Hrs ago';
    return '$age * $sex * $distance * $time';
  }
}

class BloodGroupThumbnailWidget extends StatelessWidget {
  final String requirement;
  final String bloodGroup;

  const BloodGroupThumbnailWidget({Key key, this.requirement, this.bloodGroup})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            height: 120.0,
            width: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(requirement != null ? requirement : "URGENT",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.black87,
                    child: Text(bloodGroup != null ? bloodGroup : "B+ve",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            )),
      ],
    );
  }
}
