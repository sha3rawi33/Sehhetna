import 'package:flutter/material.dart';
import 'package:healthy_wealthy/sideDraw.dart';
import 'package:url_launcher/url_launcher.dart' as URLLauncher;

class NearHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Search"),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text('This widget isn\'t yet completed'),
                            Text('This is just a demo for the appplication'),
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
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'profile');
            },
            child: Icon(
              Icons.account_circle,
              size: 30,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 4)),
        ],
        title: Text("NEARBY SERVICE"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple.shade400,
      ),
      drawer: SideDraw(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopSection(),
            RecentHospital(),
            SizedBox(
              height: 20,
            ),
            RecentPharmacy(),
            SizedBox(
              height: 20,
            ),
            RecentDoctor(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class TopSection extends StatelessWidget {
  Widget _appBar(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints.expand(height: 56),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  constraints: BoxConstraints.expand(height: 230),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/home_app_bg_image.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.deepPurple.withOpacity(0.7),
                            BlendMode.srcOver),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _appBar(context),
                          Text(
                            "Find near hospitals.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'sans-serif-light'),
                          )
                        ],
                      ),
                    ),
                  )),
              Container(
                height: 180,
                margin: EdgeInsets.only(top: 125),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  itemExtent: 275,
                  children: <Widget>[
                    Card(
                      elevation: 5.0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 170,
                          width: 260,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 60.0, left: 4, top: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FIND INSTANT HOSPITAL",
                                  style: TextStyle(
                                      fontSize: 16,
                                      height: 0.9,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "NEARBY YOU",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5)),
                                Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/doctor_icon.png'),
                              alignment: Alignment.bottomRight,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      elevation: 5.0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 170,
                          width: 260,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 60.0, left: 4, top: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FIND INSTANT HOSPITAL",
                                  style: TextStyle(
                                      fontSize: 16,
                                      height: 0.9,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "NEARBY YOU",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5)),
                                Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/doctor_icon.png'),
                              alignment: Alignment.bottomRight,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                    Card(
                      elevation: 5.0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 170,
                          width: 260,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 60.0, left: 4, top: 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "FIND INSTANT HOSPITAL",
                                  style: TextStyle(
                                      fontSize: 16,
                                      height: 0.9,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "NEARBY YOU",
                                  style: TextStyle(fontSize: 13),
                                ),
                                Padding(
                                    padding: EdgeInsets.symmetric(vertical: 5)),
                                Text(
                                  "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/doctor_icon.png"),
                              alignment: Alignment.bottomRight,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class RecentHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Near Hospital",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("Show more"),
                  splashColor: Colors.transparent,
                )
              ],
            ),
          ),
          Container(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints.tightFor(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 120),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/hospital_image.jpg"),
                            fit: BoxFit.cover,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 1, 1, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.61,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "SOUAD KAFAFI PRIVATE HOSPITAL",
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Cosmetics & Plastic Surgery"),
                                Text("Dental Clinic"),
                                Text("Institute of Cancer"),
                                Text("Institute of Transplant, etc"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("6th of October City,"),
                                Text("26th of July cordor,"),
                                Text("6 October City(Egypt)"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                      child: GestureDetector(
                                        onTap: () {
                                          URLLauncher.launch(
                                              "tel:0238376630");
                                        },
                                        child: Text(
                                          "Call Now",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Know more.."),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              margin: EdgeInsets.all(0.0),
              elevation: 0.0,
              color: Colors.grey.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}

class RecentPharmacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Near Pharmacy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("Show more"),
                  splashColor: Colors.transparent,
                )
              ],
            ),
          ),
          Container(
            child: Card(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          constraints: BoxConstraints.tightFor(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 120),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage("assets/pharmacy.jpg"),
                            fit: BoxFit.cover,
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 1, 1, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.61,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "ROUSHDY PHARMACY",
                                  maxLines: 2,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("Speciality One"),
                                Text("Speciality Two"),
                                Text("Speciality Three"),
                                Text("Speciality Four"),
                                Text("Speciality Five, etc"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("214B hadayeq Al-Ahram,"),
                                Text("Giza,"),
                                Text("6th of October City (Egypt)"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    child: Container(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            4, 2, 4, 2),
                                        child: Text(
                                          "Call Now",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    child: Text("Know more.."),
                                    onTap: () {},
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              margin: EdgeInsets.all(0.0),
              elevation: 0.0,
              color: Colors.grey.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}

class RecentDoctor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Near Doctor",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("Show more"),
                  splashColor: Colors.transparent,
                )
              ],
            ),
          ),
          Container(
            child: Card(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.18,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/doctor.jpg"),
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Dr. RamKrishna",
                              style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 1,
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("MRCP (UK), MD-Physicia  n"),
                            Text("General Physician"),
                            Text("20+ year experience"),
                            SizedBox(
                              height: 8,
                            ),
                            GestureDetector(
                              child: Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                  child: Text(
                                    "Book Appointment",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.red),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                GestureDetector(
                                  child: Container(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                      child: Text(
                                        "Call Now",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text("Know more"),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              margin: EdgeInsets.all(0.0),
              elevation: 0.0,
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
