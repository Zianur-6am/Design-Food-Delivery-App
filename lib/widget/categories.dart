import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              // elevation: 10,
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.food_bank,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('All'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.coffee,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Coffee'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.local_drink_rounded,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Drink'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.fastfood,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Fast Food'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.cake,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Cake'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.local_pizza,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Pizza'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.fastfood_rounded,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('fast food'),
            ),
          ],),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: Column(children: [
            Card(
              color: Colors.white,
              //Use cacheImageNetwork here
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.local_drink_rounded,size: 40,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Drink'),
            ),
          ],),
        ),
      ],
    );
  }
}

