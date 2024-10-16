import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


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
        elevation: 5,
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
    );
  }
}
