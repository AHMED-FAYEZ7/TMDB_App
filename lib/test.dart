import 'package:flutter/material.dart';
import 'package:movies_app/movies/presintation/screens/movies_screen.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const MoviesScreen()));
            },
            child: Text("go")));
  }
}
