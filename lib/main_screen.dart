import 'package:flutter/material.dart';
import 'package:touris_place_web/detail_screen.dart';
import 'package:touris_place_web/model/list_wisata.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tempat Wisata Jepang'),
        //Fungsi Dibawah Untuk Melihat Ukuran Lebar Sebuah Browser
        // title: Text('Place. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
        if (constraint.maxWidth <= 680) {
          return ListWisata();
        } else if (constraint.maxWidth <= 600) {
          return GridWisata(gridCount: 4,);
        }else {
          return GridWisata(gridCount: 6);
        }
      }),
    );
  }
}

class ListWisata extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        late final TempatWisata tempatWisata = tempatWisataList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(place: tempatWisata);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(flex: 1, child: Image.asset(tempatWisata.imageAsset)),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            tempatWisata.name,
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(tempatWisata.location)
                        ],
                      ),
                    )),
              ],
            ),
          ),
        );
      },
      itemCount: tempatWisataList.length,
    );
  }
}

class GridWisata extends StatelessWidget {

  late final int gridCount;
  GridWisata({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        isAlwaysShown: true,
        child: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          crossAxisCount: gridCount,
          children: tempatWisataList.map((datatmpwisata) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(place: datatmpwisata,);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Image.asset(
                        datatmpwisata.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        datatmpwisata.name,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 8, bottom: 8),
                      child: Text(datatmpwisata.location),)
                  ],
                ),
              ),
            );
          }).toList(),
        ))
        );
  }
}
