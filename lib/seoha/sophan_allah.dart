import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class allah extends StatefulWidget {
  const allah({Key? key}) : super(key: key);

  @override
  State<allah> createState() => _allahState();
}

class _allahState extends State<allah> {
  List sepha=["سبحان الله","الحمد الله ","الله اكبر"];
  int counter=0;
  int round=0;
  int newstart=0;
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" وَذَكِّرْ فَإِنَّ الذِّكْرَىٰ تَنفَعُ الْمُؤْمِنِينَ "),
        centerTitle: true,
        flexibleSpace: Image(
          image: AssetImage("images/barphoto.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      body: SingleChildScrollView(

        child: Stack(

          children: [
            Image.asset("images/coverphoto.jpeg"),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20),
              child: Lottie.asset(
                "images/animation_ll41bhsz.json",width: 200,height: 150


              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 200),

                  Text(
                    " ${
                        sepha[index]}",

                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "$counter",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        increment();
                      });
                    },

                    child: Text(
                      " اضغط",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: CircleBorder(),
                      side: BorderSide(width: 3, color: Colors.blue),
                      padding: EdgeInsets.all(30),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(top:70),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [

                        InkWell(
                          onTap: (){
                            setState(() {
                              restcounter();
                            });
                          },
                          child: Text(

                            " البدا من جديد$newstart",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                        ),
                        Text(
                          ":رقم الدوره$round",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );

  }
  void restcounter(){
    counter=0;
    index=0;
    round=0;
  }
  void increment() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
      if (index == 3) {
        index = 0;
        round++;
      }
    }
  }

}
