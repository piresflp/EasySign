import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:easy_sign/model/category.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_sign/Screens/Words/words.dart';

class Dictionary extends StatelessWidget {
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
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Text(
                "Escolha uma letra",
                style: GoogleFonts.getFont('Roboto',
                    fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                //padding: EdgeInsets.all(0),
                crossAxisCount: 5,
                itemCount: categories.length,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Words(
                                  letraInicial: categories[index].name);
                            },
                          ),
                        );
                      },
                      child: new Container(
                        //padding: EdgeInsets.all(20),
                        height: 50,
                        width: 50,
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
                              categories[index].name,
                              style: GoogleFonts.getFont('Poppins',
                                  fontSize: 32,
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
