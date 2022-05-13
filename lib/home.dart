import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  static const cardImage1 = NetworkImage('https://source.unsplash.com/random/800x600?house');
  static const supportingText1 = 'Moisture levels';
  static const cardImage2 = NetworkImage('https://source.unsplash.com/random/800x600?house');
  static const supportingText2 = 'NPK levels';

  Card buildCard(var cardImage, var supportingText) {
    //var heading = '\$2300 per month';
    //var subheading = '2 bed, 1 bath, 1300 sqft';
    //var cardImage = NetworkImage('https://source.unsplash.com/random/800x600?house');
    //var supportingText = 'Beautiful home to rent, recently refurbished with modern appliances...';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            /*
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Icon(Icons.favorite_outline),
            ),
            */
            Container(
              height: 150.0,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(
                supportingText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            /*
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('CONTACT AGENT'),
                  onPressed: () {
                   
                  },
                ),
                TextButton(
                  child: const Text('LEARN MORE'),
                  onPressed: () {
                    
                  },
                )
              ],
            )
            */
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF9F9F9),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      /*
      child: Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            color: Colors.greenAccent[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
            //backgroundColor: Colors.blue,
          ),
        ),
      ),
      */
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCard(cardImage1, supportingText1),
          Divider(),
          buildCard(cardImage2, supportingText2),
        ],
      ),
    );
  }
}
