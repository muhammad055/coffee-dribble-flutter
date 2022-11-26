import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee/utils/coffee_tiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text('Find the best coffee for you...!',
                textAlign: TextAlign.center,
                style: GoogleFonts.bebasNeue(fontSize: 50.0)),
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your coffee..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTiles(
                    pic: 'assets/images/Esp.png', details: 'Caffee Lattee!!'),
                CoffeeTiles(
                    pic: 'assets/images/Esp.png', details: '       Espresso'),
                CoffeeTiles(
                    pic: 'assets/images/Esp.png', details: 'New Caffee!!!'),
              ],
            ),
          ),
          Center(

            child: Container(
              height: 150,
              padding:const EdgeInsets.fromLTRB(20, 30, 20, 10),
              child: Text('Love at First Sip',style: TextStyle(
                fontSize: 45.0,
                fontFamily: 'GreatVibes'
              ),),
            ),
          ),

        ],
      ),
    );
  }
}
