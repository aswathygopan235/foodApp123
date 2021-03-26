import 'package:flutter/material.dart';
import 'package:food_blog_app/screens/restaurants_screen.dart';
import 'package:food_blog_app/screens/reservation_screen.dart';

class FoodScreenDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 300.0,
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 80.0,
              backgroundColor: Colors.grey,
            ),
          ),
          NewListOption(
            iconColour: Colors.red,
            menuText: 'Home',
            iconImage: Icons.home,
            onPressedFunction: () {
              //do functions
              Navigator.pop(context);
            },
          ),
          NewListOption(
            iconColour: Colors.teal,
            menuText: 'Nearby Me',
            iconImage: Icons.pin_drop_rounded,
            onPressedFunction: () {
              //do functions
              Navigator.pop(context);
            },
          ),
          NewListOption(
            iconColour: Colors.indigoAccent,
            menuText: 'Restaurant',
            iconImage: Icons.restaurant,
            onPressedFunction: () {
              //do functions
              Navigator.pop(context);
              Navigator.pushNamed(context, RestaurantsScreen.id);
            },
          ),
          NewListOption(
            iconColour: Colors.yellow[800],
            menuText: 'Profile',
            iconImage: Icons.account_circle_rounded,
            onPressedFunction: () {
              //do functions
              Navigator.pop(context);
            },
          ),
          NewListOption(
            iconColour: Colors.red[200],
            menuText: 'Cart',
            iconImage: Icons.shopping_cart,
            onPressedFunction: () {
              //do functions
              Navigator.pop(context);
              Navigator.pushNamed(context, ReservationScreen.id);
            },
          ),
          NewListOption(
            iconColour: Colors.green,
            menuText: 'Dine In',
            iconImage: Icons.shopping_bag_rounded,
            onPressedFunction: () {
              //do functions
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 7.0,
          ),
          ListTile(
            tileColor: Colors.yellow[800],
            title: Container(
              alignment: Alignment.center,
              child: Text(
                'v 1.0.2',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewListOption extends StatelessWidget {
  final Color iconColour;
  final String menuText;
  final iconImage;
  final Function onPressedFunction;
  NewListOption(
      {this.iconColour, this.menuText, this.iconImage, this.onPressedFunction});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ListTile(
          onTap: onPressedFunction,
          title: Container(
            alignment: Alignment.center,
            height: 55.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: iconColour,
                      child: Icon(
                        iconImage,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      menuText,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // onTap: onPressedFunction,
        ),
        SizedBox(
          height: 1.0,
          width: 250.0,
          child: Container(
            color: Colors.grey[500],
          ),
        ),
      ],
    );
  }
}
