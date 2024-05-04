import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'forth.dart';
import 'second.dart';

void popNavigator(context) {
  if (Navigator().pages.length > 0) Navigator.pop(context);
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("1"),
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
                        MaterialPageRoute(builder: (context) => SecondPage())),
                    child: const Text("Страница 2 (Страничная)")),
                const SizedBox(
                  height: 20,
                ),
                CachedNetworkImage(
                  imageUrl: "https://childrenart.ru/800/600/http/cdn5.coloringcrew.com/coloring-book/painted/201632/number-1-letters-and-numbers-numbers-painted-by-tintin-100735.jpg",
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
