import 'package:easy_sign/Screens/Word/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:easy_sign/model/category.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_sign/model/wordsModel.dart';

class Words extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(18.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            iconSize: 35,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: Text(
          "Voltar",
          style: GoogleFonts.getFont('Roboto',
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 32),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 35, top: 10, right: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.only(bottom: 25.0),
                child: Container(
                  //padding: EdgeInsets.all(20),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Color.fromARGB(255, 48, 128, 224), width: 5)
                      /*image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.fill,
                      ),*/
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "A",
                        style: GoogleFonts.getFont('Poppins',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      /*Text(
                          '${categories[index].numOfCourses} Palavras',
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                          ),
                        )*/
                    ],
                  ),
                )),
            //SizedBox(height: 30),
            //Text("Escolha uma categoria de palavras", style: kHeadingextStyle),
            /*Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 16),
                  Container(
                      width: 240,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Digite categoria desejada:",
                            hintStyle: TextStyle(color: Colors.grey[500])),
                      ))
                ],
              ),
            ),*/
            /*Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //Text("Categorias", style: kTitleTextStyle),
              ],
            ),*/
            //SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                //padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: words.length,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Word(
                              word: words[index],
                            ),
                          ),
                        );
                      },
                      child: new Container(
                        //padding: EdgeInsets.all(20),
                        height: 89,
                        width: 164.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 48, 128, 224),
                          /*image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.fill,
                      ),*/
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              words[index].name,
                              style: GoogleFonts.getFont('Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            /*Text(
                          '${categories[index].numOfCourses} Palavras',
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                          ),
                        )*/
                          ],
                        ),
                      ));
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Word(
                        word: words[index],
                      ),
                    ),
                  );*/
}
