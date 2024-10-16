import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(children: [
        Icon(Icons.home, color: Colors.black38,),

        Padding(
          padding: const EdgeInsets.all(4),
          child: Text('76,A eighth evenue, New York, US', style: TextStyle(color: Colors.black38, fontSize: 16), overflow: TextOverflow.ellipsis,),
        ),

        // Icon(Icons.notifications),
      ],),

        actions: [
          Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications),),
        ],
      ),

      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.local_grocery_store, color: Colors.white,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Colors.white,
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: IconButton(
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),

            Expanded(child: Text('')),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: IconButton(
                    icon: const Icon(
                      Icons.edit_note,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              //search card
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                elevation: 2,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(children: [
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            textInputAction: TextInputAction.go,
                            onSubmitted: (value){},
                            decoration: InputDecoration(
                              hintText: "Search food or restaurent here.....",
                              hintStyle: TextStyle(color: Colors.black38),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),

                      Expanded(flex : 1, child: Icon(Icons.search, color: Colors.black38,)),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),

            //banner
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(width: 160.0, color: Colors.red),
                  Container(width: 160.0, color: Colors.blue),
                  Container(width: 160.0, color: Colors.green),
                  Container(width: 160.0, color: Colors.yellow),
                  Container(width: 160.0, color: Colors.orange),
                ],
              ),
            ),
            SizedBox(height: 10,),



            //categories
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(children: [
                // Expanded(flex: 7, child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                // Expanded(flex: 2, child: Text('View all', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, decorationColor: Colors.green, color: Colors.green),))
                Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                Expanded(child: Text(''),),

                Text('View all', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, decorationColor: Colors.green, color: Colors.green),),
              ],),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(width: 160.0, color: Colors.red),
                    Container(width: 160.0, color: Colors.blue),
                    Container(width: 160.0, color: Colors.green),
                    Container(width: 160.0, color: Colors.yellow),
                    Container(width: 160.0, color: Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),

            //Popular Food Nearby
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(children: [
                // Expanded(flex: 7, child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                // Expanded(flex: 2, child: Text('View all', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, decorationColor: Colors.green, color: Colors.green),))
                Text('Popular Food Nearby', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                Expanded(child: Text(''),),

                Text('View all', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, decorationColor: Colors.green, color: Colors.green),),
              ],),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(width: 160.0, color: Colors.red),
                    Container(width: 160.0, color: Colors.blue),
                    Container(width: 160.0, color: Colors.green),
                    Container(width: 160.0, color: Colors.yellow),
                    Container(width: 160.0, color: Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),

            //Food Campaign
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(children: [
                // Expanded(flex: 7, child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)),
                // Expanded(flex: 2, child: Text('View all', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, decorationColor: Colors.green, color: Colors.green),))
                Text('Food Campaign', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),

                Expanded(child: Text(''),),

                Text('View all', style: TextStyle(fontSize: 16, decoration: TextDecoration.underline, decorationColor: Colors.green, color: Colors.green),),
              ],),
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(width: 160.0, color: Colors.red),
                    Container(width: 160.0, color: Colors.blue),
                    Container(width: 160.0, color: Colors.green),
                    Container(width: 160.0, color: Colors.yellow),
                    Container(width: 160.0, color: Colors.orange),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),





            ],
          ),
        ),
      ),

    );
  }
}
