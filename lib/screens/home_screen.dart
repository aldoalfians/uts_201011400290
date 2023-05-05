import 'package:flutter/material.dart';
import 'package:uts_201011400290/data/color_box_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Aldo Alfiansyah",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: COLOR_BOX_DATA
              .map(
                (item) => (Card(
                  color: item.color,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(item.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                )),
              )
              .toList(),
        ),
      ),
    );
  }
}
