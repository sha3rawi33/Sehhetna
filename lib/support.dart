import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:pigment/pigment.dart';

import 'dart:math' as Math;


class SupportPage extends StatefulWidget {
  final String submitted;

  SupportPage({Key key, @required this.submitted}) : super(key: key);

  @override
  _SupportPage createState() => _SupportPage();
}

class _SupportPage extends State<SupportPage> {
  final List<String> messages = [];
  final TextEditingController textController = TextEditingController();

  _onMessageSubmitted(BuildContext context, String message) {
    if (messages.length == 0 && message != null && message.isNotEmpty) {
      messages.add(message);
      setState(() {});
    }
  }

  Widget _buildTextComposer(BuildContext context) {
    return Hero(
        tag: "composer",
        child: SizedBox(
            height: 56.0,
            child: Material(
                type: MaterialType.canvas,
                color: Colors.white,
                elevation: 6.0,
                child: Row(
                    children: <Widget>[
                      Flexible(
                          child: TextField(
                              controller: textController,
                              onSubmitted: (text) {
                                _onMessageSubmitted(context, text);
                              },
                              decoration: InputDecoration(
                                  hintText: 'Type your message here...',
                                  contentPadding: EdgeInsets.all(16.0) +
                                      EdgeInsets.only(top: 2.0),
                                  border: InputBorder.none))),
                      IconButton(
                          icon: Icon(Icons.camera_alt),
                          onPressed: () {},
                          padding: EdgeInsets.all(8.0) +
                              EdgeInsets.only(right: 8.0)),
                      IconButton(
                          icon:
                          Icon(Icons.send, color: ThemeColors.primaryColor),
                          onPressed: () {
                            _onMessageSubmitted(context, textController.text);
                            textController.text = "";
                          },
                          padding:
                          EdgeInsets.all(8.0) + EdgeInsets.only(right: 8.0))
                    ],
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch))));
  }

  Widget _buildLeftMessage(BuildContext context, String message) {
    final TextTheme textTheme = Theme
        .of(context)
        .textTheme;
    final MediaQueryData query = MediaQuery.of(context);

    return SizedBox(
        width: query.size.width,
        child: Stack(children: [
          Container(
              alignment: AlignmentDirectional.bottomStart,
              padding: EdgeInsets.all(8.0) + EdgeInsets.only(left: 4.0),
              margin: EdgeInsets.only(bottom: 8.0, left: 16.0),
              width: Math.min(320.0, message.length * 25.0),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(4.0),
                      bottomRight: Radius.circular(12.0))),
              child: Text(message, style: textTheme.subhead))
        ]));
  }

  Widget _buildRightMessage(BuildContext context, String message) {
    final TextTheme textTheme = Theme
        .of(context)
        .textTheme;

    return Container(
        alignment: AlignmentDirectional.bottomEnd,
        padding: EdgeInsets.all(8.0) + EdgeInsets.only(right: 4.0),
        margin: EdgeInsets.only(bottom: 8.0, right: 16.0),
        width: Math.min(260.0, message.length * 15.0),
        decoration: BoxDecoration(
            color: ThemeColors.accentColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(8.0))),
        child: Text(message,
            style: textTheme.subhead.copyWith(color: Colors.white)));
  }

  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme
        .of(context)
        .textTheme;

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text("Live Support"),
            textTheme: TextTheme(
                title: textTheme.title.copyWith(
                    fontFamily: "RobotoSlab", fontWeight: FontWeight.bold)),
            elevation: 1.0,
            iconTheme: IconThemeData(color: Colors.black)),
        body: Column(
            children: <Widget>[
              Header(title: "You're currently 6th in line."),
              Flexible(child: Container()),
              _buildRightMessage(context, widget.submitted),
              _buildLeftMessage(context,
                  "Dominion Energy has received your request. You're currently 6th in line..."),
              _buildLeftMessage(context,
                  "You can either stay in this window or close the app, we'll notify you once we connect you to a specialist."),
              _buildLeftMessage(context, "Thanks!"),
            ]
              ..addAll(messages
                  .map((message) => _buildRightMessage(context, message)))
              ..add(_buildTextComposer(context)),
            crossAxisAlignment: CrossAxisAlignment.end));
  }
}


class ThemeColors {
  static Color primaryColor = Pigment.fromString("#0072CE");
  static Color accentColor = Pigment.fromString("#1D4F91");

  static Color textColor = Colors.black87;

  static Color background = Pigment.fromString("#FAF9FA");
  static Color backgroundAlt = Pigment.fromString("#DFD1A7");
}

ThemeData getTheme() {
  return ThemeData(
    fontFamily: "WorkSans",
    primaryColor: ThemeColors.primaryColor,
    accentColor: ThemeColors.accentColor,
    textTheme: getTextTheme(),
  );
}

TextTheme getTextTheme() {
  final defaultTheme = ThemeData
      .light()
      .textTheme;

  return defaultTheme.copyWith(
    title: defaultTheme.title.copyWith(
        color: ThemeColors.textColor,
        fontSize: 18.0,
        fontWeight: FontWeight.w500),
  );
}

class Header extends StatelessWidget {
  final String title;

  Header({Key key, @required this.title}) : super(key: key);

  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme
        .of(context)
        .textTheme;

    return SizedBox(
      height: 48.0,
      child: Material(
          child: Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(title,
                      style: textTheme.subhead.copyWith(
                          color: Colors.black45,
                          fontWeight: FontWeight.w500))))),
    );
  }
}

