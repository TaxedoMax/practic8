import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("2"),
        ),
        body: Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const Text('Конец маршрута'),
                const SizedBox(
                  height: 20,
                ),
                CachedNetworkImage(
                  imageUrl: "https://sovyatka.ru/800/600/http/d2homsd77vx6d2.cloudfront.net/cache/f2/3e/f23e07f1bb92c830e5daf1e05ab336f3.png",
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
