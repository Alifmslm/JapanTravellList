import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:touris_place_web/model/list_wisata.dart';

class DetailScreen extends StatelessWidget {
  final TempatWisata place;
  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      if (constraint.maxWidth > 800) {
        return DetailWeb(placedetailweb: place);
      } else {
        return DetailMobile(placedetailmobile: place);
      }
    });
  }
}

class DetailWeb extends StatelessWidget {
  late final TempatWisata placedetailweb;

  DetailWeb({required this.placedetailweb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black87,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: ClipRRect(
                        child: Image.asset(placedetailweb.imageAsset),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 150,
                      padding: EdgeInsets.only(bottom: 16),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: placedetailweb.imageurls.map((jadiimageurl) {
                          return Padding(
                            padding: EdgeInsets.all(8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(jadiimageurl),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Expanded(
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            placedetailweb.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Oxygen',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.calendar_today),
                            SizedBox(height: 8),
                            Text(
                              placedetailweb.opendays,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.timer),
                            SizedBox(height: 8),
                            Text(
                              placedetailweb.opetimes,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.monetization_on),
                            SizedBox(height: 8),
                            Text(
                              placedetailweb.price,
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            placedetailweb.description,
                            style: TextStyle(fontSize: 16, fontFamily: 'Oxygen'),
                          ),
                        ),
                        FavouriteButton(),
                      ],
                    ),
                  ),
                  elevation: 5,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class DetailMobile extends StatelessWidget {
  late final TempatWisata placedetailmobile;
  DetailMobile({required this.placedetailmobile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:
                            Image.asset(placedetailmobile.imageAsset,
                              width: 300, height: 200, fit: BoxFit.cover,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SafeArea(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  )),
                ],
              ),
              //container bawah adlh judul
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Text(placedetailmobile.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Staatliches',
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              ),
              //container bawah adlh icon-iconya
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          placedetailmobile.opendays,
                          style: TextStyle(fontFamily: 'Staatliches'),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          placedetailmobile.opetimes,
                          style: TextStyle(fontFamily: 'Staatliches'),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Free',
                          style: TextStyle(fontFamily: 'Staatliches'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //container dibawah adlh untuk deskripsi
              Container(
                margin: EdgeInsets.only(bottom: 10, right: 20, left: 20),
                child: Text(placedetailmobile.description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Oxygen')),
              ),
              Container(
                height: 150,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: placedetailmobile.imageurls.map((urlgambar) {
                      return Padding(
                        padding: EdgeInsets.all(4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(urlgambar),
                        ),
                      );
                    }).toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key}) : super(key: key);

  @override
  _FavouriteButtonState createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isFavourite = !false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavourite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavourite = !isFavourite;
        });
      },
    );
  }
}
