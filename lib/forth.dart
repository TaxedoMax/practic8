import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'first.dart';
import 'second.dart';

class FourthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("4"),
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
                  imageUrl: "https://thumbs.dreamstime.com/b/число-сделанное-из-оранжевого-изолированного-плода-138253207.jpg",
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
