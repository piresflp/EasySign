import 'package:easy_sign/Screens/Word/word.dart';
import 'package:easy_sign/models/WordModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_sign/controllers/DictionaryController.dart';

class Words extends StatefulWidget {
  String letraInicial;

  Words({this.letraInicial});
  //Future<List<WordsModel>> lista = fetchWordsByLetter(letraInicial);

  @override
  _WordsState createState() => _WordsState();
}

class _WordsState extends State<Words> {
  final DictionaryController _dictionaryController = DictionaryController();
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
                          color: Color.fromARGB(255, 48, 128, 224), width: 5)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.letraInicial,
                        style: GoogleFonts.getFont('Poppins',
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                )),
            Expanded(
                child: FutureBuilder(
              future:
                  _dictionaryController.fetchWordsByLetter(widget.letraInicial),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return Center(child: CircularProgressIndicator());
                var words = snapshot.data;
                return StaggeredGridView.countBuilder(
                  //padding: EdgeInsets.all(0),
                  crossAxisCount: 2,
                  itemCount: words.length,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {
                          print(words[index]);
                          WordModel model = new WordModel(
                              words[index].palavra,
                              words[index].significado,
                              words[index].genero,
                              words[index].origem,
                              words[index].enderecoGif,
                              words[index].exemploPortugues,
                              words[index].exemploLibras);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Word(
                                word: model,
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
                                words[index].palavra,
                                style: GoogleFonts.getFont('Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ));
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}

/*,*/
