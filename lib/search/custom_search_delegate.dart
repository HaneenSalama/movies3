import 'package:flutter/material.dart';

class CustomSearchDelegade extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 32,
          color: Colors.white,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.close,
        size: 32,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }

  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 18,
      )),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.grey),
        prefixIconColor: Colors.white,
        filled: true,
        fillColor: Colors.grey.withOpacity(0.3),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide: BorderSide.none,
        ),
        // border: UnderlineInputBorder(
        //   borderRadius: BorderRadius.none,
        // ),
      ),
      scaffoldBackgroundColor: Colors.black,
    );
  }
}
