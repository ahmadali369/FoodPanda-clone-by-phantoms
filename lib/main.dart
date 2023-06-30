import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodPand Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Food Panda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
    final Height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //
        //   actions: <Widget>[
        //     IconButton(
        //       icon: Icon(Icons.favorite_border),
        //       onPressed: () {
        //         // Add your onPressed logic here
        //       },
        //     ),
        //     IconButton(
        //       icon: Icon(Icons.shopping_cart),
        //       onPressed: () {
        //         // Add your onPressed logic here
        //       },
        //     ),
        //   ],
        //
        //   iconTheme: IconThemeData(
        //   color: Colors.white, // Set the desired color here
        //   ),
        //   backgroundColor: Colors.pinkAccent,
        //   // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //
        //   title: Text(widget.title, style: TextStyle(color: Colors.white),),
        // ),
        // drawer: CustomDrawer(),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.pinkAccent,
                width: double.infinity,
                height: Height * .2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: Height * .018),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          Icons.line_weight,
                          color: Colors.white,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Food Panda",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const Text("Lahore",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            SizedBox(width: Width * .5),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: Height * .02),
                    Container(
                      width: Width * .95,
                      height: Height * .06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: Width * .45,
                    height: Height * .25,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(
                              0, 3), // changes the position of the shadow
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Food Delivery",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Order from your favourite restaurants',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset('assets/images/img (2).jpg',
                                width: double.infinity),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: Width * .45,
                    height: Height * .25,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.7),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(
                              0, 3), // changes the position of the shadow
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Pandamart",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        const Text(
                          'Convenience, delivered',
                          style: TextStyle(fontSize: 14),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Image.asset('assets/food_imgs/img (11).jpeg',
                                width: double.infinity),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Width * .43,
                      height: Height * .11,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes the position of the shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Shops",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Everyday essentials",
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),

                            // Expanded(
                            //   child: Align(
                            //     alignment: Alignment.bottomLeft,
                            //
                            //     child: Image.asset('assets/images/img (1).jpg', width: double.infinity),
                            //
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Width * .43,
                      height: Height * .11,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes the position of the shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pick-up ",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Enjou up to 50% off..",
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),

                            // Expanded(
                            //   child: Align(
                            //     alignment: Alignment.bottomLeft,
                            //
                            //     child: Image.asset('assets/images/img (1).jpg', width: double.infinity),
                            //
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Width * .43,
                      height: Height * .11,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes the position of the shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dine-in",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Eat out and save",
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),

                            // Expanded(
                            //   child: Align(
                            //     alignment: Alignment.bottomLeft,
                            //
                            //     child: Image.asset('assets/images/img (1).jpg', width: double.infinity),
                            //
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: Width * .43,
                      height: Height * .11,
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.7),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                                0, 3), // changes the position of the shadow
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pandago",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Parcel Delivery",
                                    style: TextStyle(fontSize: 14)),
                              ],
                            ),

                            // Expanded(
                            //   child: Align(
                            //     alignment: Alignment.bottomLeft,
                            //
                            //     child: Image.asset('assets/images/img (1).jpg', width: double.infinity),
                            //
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              ///====================================================

              Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Height * .02,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Popular Restaurants",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Height * .01,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            RestChip(img: 'assets/food_imgs/img (1).jpg'),
                            RestChip(img: 'assets/food_imgs/img (2).jpg'),
                            RestChip(img: 'assets/food_imgs/img (1).jpeg'),
                            RestChip(img: 'assets/food_imgs/img (2).jpeg'),
                            RestChip(img: 'assets/food_imgs/img (3).jpeg'),
                            RestChip(img: 'assets/food_imgs/img (4).jpeg'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Height * .02,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Cuisines",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Height * .01,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FoodChips(img: 'assets/food_imgs/img (1).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (1).jpg'),

                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FoodChips(img: 'assets/food_imgs/img (2).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (2).jpg'),


                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                FoodChips(img: 'assets/food_imgs/img (3).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (3).jpg'),

                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FoodChips(img: 'assets/food_imgs/img (4).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (4).jpg'),

                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                FoodChips(img: 'assets/food_imgs/img (5).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (6).jpeg'),


                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                FoodChips(img: 'assets/food_imgs/img (7).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (8).jpeg'),


                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FoodChips(img: 'assets/food_imgs/img (9).jpeg'),
                                FoodChips(img: 'assets/food_imgs/img (10).jpeg'),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

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

class RestChip extends StatefulWidget {
  String img;
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
  String img;

  FoodChips({Key? key,required this.img}) : super(key: key);

  @override
  State<FoodChips> createState() => _FoodChipsState();
}

class _FoodChipsState extends State<FoodChips> {
  @override
  Widget build(BuildContext context) {
    final Width = MediaQuery.of(context).size.width;
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
