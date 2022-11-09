import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
import 'package:flutter_map/plugin_api.dart'; // Only import if required functionality is not exposed by default

import '../widgets/Map.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(25),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 30,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ],
            ),
          ),
          Map()
        ],
      ),
      bottomNavigationBar: TextButton(
        style: TextButton.styleFrom(
          primary: Color(0xFF69B289), // foreground
        ),
        onPressed: () {
          Navigator.pushNamed(context, "requestPage");
        },
        child: Text('Change Company'),
      ),
    );
  }
}
