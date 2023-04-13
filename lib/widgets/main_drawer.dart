import 'package:flutter/material.dart';

import '../constants.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile({String title, IconData icon, Function onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoCondensed',
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 120.0,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              color: Theme.of(context).accentColor,
              child: Center(
                child: Text(
                  'Cooking UP!',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            buildListTile(
              title: 'Meals',
              icon: Icons.restaurant,
              onTap: () => Navigator.of(context).pushNamed('/'),
            ),
            buildListTile(
              title: 'Filters',
              icon: Icons.settings,
              onTap: () => Navigator.of(context).pushNamed(fileterScreen),
            ),
          ],
        ),
      ),
    );
  }
}
