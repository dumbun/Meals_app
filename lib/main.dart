import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filter_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';
import 'constants.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        categoryMealsScreen: (context) => CategoriesMealsScreen(),
        mealDetailScreen: (context) => MealDetailScreen(),
        fileterScreen: (context) => FilterScreen(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: ((context) => CategoriesScreen()),
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
        // useMaterial3: true,
        canvasColor: Color.fromRGBO(225, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.tealAccent),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
              titleMedium:
                  TextStyle(fontSize: 24, fontFamily: 'RobotoCondensed'),
              bodyMedium: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyLarge: TextStyle(
                color: Color.fromRGBO(29, 83, 83, 1),
              ),
            ),
      ),
      home: TabsScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
