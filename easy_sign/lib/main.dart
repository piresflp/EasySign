import 'package:easy_sign/constants.dart';
//import 'constants.dart';
//import 'model/category.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_sign/Screens/Home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasySign',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/icons/menu.svg"),
              ],
            ),
            SizedBox(height: 30),
            Text("Escolha uma categoria de palavras", style: kHeadingextStyle),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/icons/search.svg"),
                  SizedBox(width: 16),
                  Text(
                    "Busque por categorias",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFA0A5BD),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Categorias", style: kTitleTextStyle),
                Text(
                  "Ver todas",
                  style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    height: index.isEven ? 200 : 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          categories[index].name,
                          style: kTitleTextStyle,
                        ),
                        Text(
                          '${categories[index].numOfCourses} Courses',
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                          ),
                        )
                      ],
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
