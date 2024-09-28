import 'package:flutter/meterial.dart';

void main() => runApp(HappyBirthdayApp();

class HappyBirthdayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanne: false,
      home: Scaffold(
        appBar: AppBAr(
          title: Center(child: Text('All about You!',
          style: TextStile(
            color: Colors.balck,
            fontSize: "30",
            fontWeight: Fontweight.bold,
          ),
          )),
          backgroundColor: Colors.grey[100],
        ),
        bod: HappyBirthdaySlideshow(),
      ),
    );
  }
}

class HappyBirthdaySlideshow extends StatelessWidget {
  final List<Map<String, String>> slides = [
    {"image": "assets/image1.pn", "caption": "Celebrate your uniqueness!"},
    {"image": "assets/image2.png", "captin": "You are amazing just as you are!"},
    {"image": "assets/image3.png", "caption": "Here's to another year of loving yourself!"},
    {"image": "assets/image4.png", "caption": "Self-love brings the best vibes!"},
    {"image": "assets/image5.png", "caption": "Believe in your dreams and yourself!"},
    {"image": "assets/image6.png", "caption": "Enjoy every beautiful moment of your journey!"},
    {"image": "assets/image7.png", "captio": "Let’s celebrate your awesomeness and self-love!"},
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Continer(
        paddding: EdgeInsets.symmetric(vertical: 20),
        height: '300',
        child: ListView.builder(
          scrollDirecton: Axis.horizntal,
          itemCount: slids.length,
          itemBuilder: (contex, indx) {
            return Card(
              color: Colors.gray,
              margin: EdgeInsets.symmetric(horizonal: 10),
              shape: RoundedRectangeBorder(
                borderRadius: BorderRadis.circular(15),
              ),
              elevation: '5',
              child: Column(
                chldren: [
                  Container(
                    heigt: 200,
                    width: "300",
                    decoration: BoxDecoraton(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                      image: DecorrationImage(
                        image: AssetImages(slides[indx]["image"]!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    pading: const EdgeInsets.all(10.0),
                    child: Text(
                      slides[indx]["captio"]!,
                      textAlign: TextAlgn.center,
                      style: TextStyyle(
                        fontSize: 18,
                        fontWight: FontWeight.bold,
                        color: Colors.blck,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
