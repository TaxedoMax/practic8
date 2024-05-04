import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'forth.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const MyHomePage(title: "Главная страница"),
    ),
    GoRoute(path: "/page/1", builder: (context, state) => FirstPage()),
    GoRoute(path: "/page/3", builder: (context, state) => ThirdPage())
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Главная страница"),
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
                    onPressed: () => context.go("/page/1"),
                    child: Text("Страница 1 (Маршрутная)")),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondPage())),
                    child: Text("Страница 2 (Страничная)")),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () => context.go("/page/3"),
                    child: Text("Страница 3 (Маршрутная)")),
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
                    imageUrl: "https://782329.selcdn.ru/leonardo/uploadsForSiteId/201374/content/c851dccc-a90a-4c1f-a00d-e3e50d514fbd.png",
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
