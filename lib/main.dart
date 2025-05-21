import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyIDCard(),
  ));
}

class MyIDCard extends StatelessWidget {
  const MyIDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        toolbarHeight: 150.0,
        leadingWidth: 110.0, // Add this to allow more horizontal space
        //AppBar defaults leadingWidth = 56.0.
        //So your image’s width gets clipped or ignored beyond that.
      // Setting leadingWidth gives it space to grow as wide as you need.
        leading: Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: SizedBox(
              width: 110,
              height: 120,
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'AMRITA',
              style: TextStyle(
                fontSize: 50,
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
            ),
            Text(
              'VISHWA VIDYAPEETHAM',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
            ),
            Text(
              'Amritanagar P.O.,Coimbatore - 641 112,Ph 04422 268 500',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      body:
        Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                  Icons.qr_code,
                  size: 50,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0), // Adjust radius here
                  child: Image.asset(
                    'assets/PP photo.jpg',
                    height: 270.0,
                    width: 230.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Center(
                child: Text(
                 'V.Sanjana',
                  style: TextStyle(
                    fontSize: 28.0,
                    )
                ),
              ),
              SizedBox(height:5.0),
              Center(
                child: Text(
                  'CB.SC.U4CSE23751',
                    style: TextStyle(
                    fontSize: 20.0,
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(1.0, 0.0, 1.0, 0.0), // optional spacing between images
                    child: Image.asset(
                      'assets/barcode.png',
                      width: 58,
                      height: 100,
                    ),
                  );
                }),
              ),
              Text(
                'B.Tech CSE 2023-2027',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Valid Upto: 31-07-2027',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          )
        )

    );
  }
}
