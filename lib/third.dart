import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'first.dart';
import 'forth.dart';
import 'second.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("3"),
        ),
        body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () => context.go("/"),
                    child: Text("Главная страница")),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FourthPage())),
                    child: Text("Страница 4 (Страничная)")),
                const SizedBox(
                  height: 20,
                ),
                CachedNetworkImage(
                  imageUrl: "https://ic.pics.livejournal.com/sasha_bogdanov/8603983/632487/632487_original.jpg",
                  height: 300,
                  width: 300,
                  errorWidget: (context, url, widget) => const Center(
                      child: Icon(
                        Icons.error,
                        color: Colors.red,
                      )
                  ),
                )
              ],
            )));
  }
}
