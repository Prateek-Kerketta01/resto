import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: resto(),
  ));
}

class resto extends StatefulWidget {
  const resto({super.key});

  @override
  State<resto> createState() => _restoState();
}

class _restoState extends State<resto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
        shrinkWrap: true,
        children: [
          // 1st row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // 1st container
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Icon(
                        Icons.bike_scooter,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Delivery',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              // 2nd container
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Icon(
                        Icons.card_giftcard_rounded,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Pickup',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              // 3rd container
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: Icon(
                        Icons.table_bar_outlined,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'To the table',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // 2nd row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Ryazansky pr.,2/1 building 2',
                  style: TextStyle(fontFamily: 'Quicksand', fontSize: 20),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
                child: Icon(
                  Icons.person_2_outlined,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // 3rd row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 40,
                  margin: EdgeInsets.only(left: 10, right: 20),
                  child: Row(
                    children: [Icon(Icons.search), Text('Search')],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
                child: Icon(
                  Icons.filter_center_focus_outlined,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // 4th row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                8,
                (index) => Container(
                  width: 150,
                  height: 180,
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://qph.cf2.quoracdn.net/main-qimg-da705939af9ce38d8a9f6e9ec9289526-lq'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 140, left: 10, bottom: 10),
                        child: Text(
                          'Discount \n 20%',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Restaurants\t\t' + '26',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //  5th row
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin:
                      EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 144, 233, 146),
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Text(
                    'All',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Text(
                    'Tandoori',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Text(
                    'First course',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Text(
                    'Pizza ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 1),
                    ],
                  ),
                  child: Text(
                    'Chicken',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // 6th
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              8,
              (index) => Container(
                width: 350,
                height: 250,
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 1),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://www.sheknowsgrub.com/wp-content/uploads/2016/06/HungryBird_Burger-940x649.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 200,
                        left: 10,
                      ),
                      child: Text(
                        'Burger King',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 10, left: 10),
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_clock,
                            color: Colors.red,
                          ),
                          Text(' ~ 30 min')
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 50, left: 10),
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.red,
                          ),
                          Text('5.0')
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 300),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(blurRadius: 1),
                        ],
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
