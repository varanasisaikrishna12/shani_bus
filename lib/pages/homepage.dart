import 'package:flutter/material.dart';
import 'package:shani_bus/pages/designs.dart';
import 'package:shani_bus/pages/booking.dart';
import 'package:shani_bus/pages/datepicker.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 400,
        color: Color.fromRGBO(255, 205, 5, 1),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/Yellowlightningiconbusinesslogo2.png'),
                      fit: BoxFit.fitWidth),
                )),
            // Figma Flutter Generator Rectangle13Widget - RECTANGLE
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              height: 250,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(250, 250, 250, 1),
              ),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: contdec('assets/images/Getonbus.png'),
                        hintText: 'Enter Source'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: contdec('assets/images/Getoffbus.png'),
                        hintText: 'Enter Destination'),
                  ),
                  DatePickerWidget(),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => busbook()),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 48,
                        decoration: design.boxdec(),
                        child: Center(
                            child: Text(
                          'Search',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(9, 9, 9, 1),
                            fontFamily: 'Inter',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 205, 5, 1),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Color.fromRGBO(255, 205, 5, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list, color: Colors.black),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help, color: Colors.black),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            title: Text('Home'),
          )
        ],
      ),
    );
  }

  Widget contdec(String img) {
    return Container(
        width: 30,
        height: 30,
        margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(img), fit: BoxFit.fitWidth),
        ));
  }
}
