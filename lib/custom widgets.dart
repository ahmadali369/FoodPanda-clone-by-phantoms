import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.star  ,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmad Ali',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
        ],
      ),
    );
  }
}


class DealsChips extends StatefulWidget {

  final String img;
  DealsChips({Key? key,required this.img}) : super(key: key);

  @override
  State<DealsChips> createState() => _DealsChipsState();
}

class _DealsChipsState extends State<DealsChips> {
  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.of(context).size.height;
    final Width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: Height * .18,
        width: Width * .3,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            "${widget.img}",
            // , // Replace with your asset image path
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


class RestChip extends StatefulWidget {
  final String img;
  RestChip({Key? key, required this.img}) : super(key: key);

  @override
  State<RestChip> createState() => _RestChipState();
}

class _RestChipState extends State<RestChip> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        // color: Colors.cyan,
        width: Width * .66,
        height: Height * .31,
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: Height * .18,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.asset(
                      "${widget.img}",
                      // , // Replace with your asset image path
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 16.0,
                  left: 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    color: Colors.pinkAccent,
                    child: const Text(
                      'Krunch Burger Meal in Rs. 520',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      '45 min',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Text(
              'KFC - Defence H Block',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            const Text(
              '\$\$\$ - Broast, Wraps & Rolls',
              style: TextStyle(fontSize: 16.0),
            ),
            const Text(
              'PKF 50 delivery fee',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodChips extends StatefulWidget {
  final String img;

  FoodChips({Key? key,required this.img}) : super(key: key);

  @override
  State<FoodChips> createState() => _FoodChipsState();
}

class _FoodChipsState extends State<FoodChips> {
  @override
  Widget build(BuildContext context) {
    // final Width = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;

    return Container(
      width: 100,
      height: 100,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child:                 Container(
              height: Height * .18,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  "${widget.img}",
                  // , // Replace with your asset image path
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // child: Image.asset(
            //   'assets/square_image.png', // Replace with your asset image path
            // ),
          ),
          SizedBox(height: 16),
          Text(
            'Bold Text',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
