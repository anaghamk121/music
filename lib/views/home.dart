import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/posts/colors.dart';
import '../posts/text_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgDarkColor,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: whiteColor,
              ))
        ],
        leading: const Icon(
          Icons.sort_rounded,
          color: whiteColor,
        ),
        title: Text(
          "Beats",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  title: Text(
                    "Music name",
                    style: TextStyle(fontSize: 15),
                  ),
                  subtitle: Text(
                    "Artist name",
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: const Icon(
                    Icons.music_note,
                    color: whiteColor,
                    size: 32,
                  ),
                  trailing: Icon(Icons.play_arrow, color: whiteColor, size: 26),
                ));
          }),
    );
  }
}
