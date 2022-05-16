import 'package:flutter/material.dart';

AssetImage assetImage = AssetImage('images/chamod.jpg');
Image myImage = Image(image: assetImage);

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0xffF9F9F9),
      /*
      child: Center(
        child: Text(
          "Staff Page",
          style: TextStyle(
            color: Colors.greenAccent[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      */
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              /*
              margin: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 12.0,
              ),
              */
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    child: Material(
                      child: Container(
                        height: 210.0,
                        width: screenWidth * 0.9,
                        //width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            new BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: new Offset(-10.0, 10.0),
                              blurRadius: 20.0,
                              spreadRadius: 4.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Card(
                      elevation: 10.0,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        height: 200,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            //image: AssetImage('images/chamod.jpg'),
                            image: NetworkImage('https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'),
                            //image: NetworkImage('https://www48.zippyshare.com/i/tDVsMMbb/17294/IMG-20220503-WA0016.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 160,
                    child: Container(
                      height: 150,
                      width: 180,
                      child: Column(
                        children: [
                          Text(
                            'Chamod Dananjaya',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF363f93),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container profileImage(var myImage) {
  return Container(
    child: myImage,
    height: 200,
    width: 150,
  );
}
