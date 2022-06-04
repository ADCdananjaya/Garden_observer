import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 12.0,
              ),
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    //top: 35,
                    //left: 20,
                    //right: 5,
                    child: Material(
                      child: Container(
                        height: 210.0,
                        width: screenWidth - 10,
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
                            image: AssetImage('images/chamod1.png'),
                            //image: NetworkImage('https://www37.zippyshare.com/i/3CNHqHvZ/24986/IMG_20220221_2004.png'),
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
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Chamod',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF363f93),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'University of Kelaniya',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Project group 6',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.mail, color: Colors.blue),
                                onPressed: () => launchEmail(
                                  toEmail: 'chamoddananjaya49@gmail.com',
                                  subject: '',
                                  message: '',
                                ),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.phone, color: Colors.blue),
                                onPressed: () => launchCall(number: '0701404279'),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.facebook, color: Colors.blue),
                                onPressed: () => toFacebook(url: 'https://www.facebook.com/chamod.dananjaya.5/'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 12.0,
              ),
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    //top: 35,
                    //left: 20,
                    //right: 5,
                    child: Material(
                      child: Container(
                        height: 210.0,
                        width: screenWidth - 10,
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
                            image: AssetImage('images/madurangaya.png'),
                            //image: NetworkImage('https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'),
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
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Maneesha',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF363f93),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'University of Kelaniya',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Project group 6',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.mail, color: Colors.blue),
                                onPressed: () => launchEmail(
                                  toEmail: 'maneeshamaduranga22@gmail.com',
                                  subject: '',
                                  message: '',
                                ),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.phone, color: Colors.blue),
                                onPressed: () => launchCall(number: '0763565630'),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.facebook, color: Colors.blue),
                                onPressed: () => toFacebook(url: 'https://www.facebook.com/chamod.dananjaya.5/'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 12.0,
              ),
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    //top: 35,
                    //left: 20,
                    //right: 5,
                    child: Material(
                      child: Container(
                        height: 210.0,
                        width: screenWidth - 10,
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
                            image: AssetImage('images/tharinduwa.png'),
                            //image: NetworkImage('https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'),
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
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Tharindu',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF363f93),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'University of Kelaniya',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Project group 6',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.mail, color: Colors.blue),
                                onPressed: () => launchEmail(
                                  toEmail: 'aatm.tharindumadushan@gmail.com',
                                  subject: '',
                                  message: '',
                                ),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.phone, color: Colors.blue),
                                onPressed: () => launchCall(number: '0766274063'),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.facebook, color: Colors.blue),
                                onPressed: () => toFacebook(url: 'https://www.facebook.com/profile.php?id=100010191430483'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 12.0,
              ),
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                    //top: 35,
                    //left: 20,
                    //right: 5,
                    child: Material(
                      child: Container(
                        height: 210.0,
                        width: screenWidth - 10,
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
                            image: AssetImage('images/malitha.jpg'),
                            //image: NetworkImage('https://cdn.pixabay.com/photo/2016/04/01/10/11/avatar-1299805_960_720.png'),
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
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Malith',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0xFF363f93),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'University of Kelaniya',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Divider(color: Colors.black),
                          Text(
                            'Project group 6',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.mail, color: Colors.blue),
                                onPressed: () => launchEmail(
                                  toEmail: 'malithshehan1999@gmail.com',
                                  subject: '',
                                  message: '',
                                ),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.phone, color: Colors.blue),
                                onPressed: () => launchCall(number: '0716190380'),
                              ),
                              IconButton(
                                iconSize: 40,
                                icon: Icon(Icons.facebook, color: Colors.blue),
                                onPressed: () => toFacebook(url: 'https://www.facebook.com/profile.php?id=100013738928346'),
                              ),
                            ],
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

Future launchEmail({
  required String toEmail,
  required String subject,
  required String message,
}) async {
  final url = 'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';

  if (await canLaunch(url)) {
    await launch(url);
  }
}

Future launchCall({required String number}) async {
  launch('tel://$number');
}

Future toFacebook({required String url}) async {
  var urlLaunchable = await canLaunch(url);
  if (urlLaunchable) {
    await launch(url);
  } else {
    print('URL can\'t be launched');
  }
}
