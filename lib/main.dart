import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

enum SplashScreenLoading {
  loading,
  finished,
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FutureBuilder<SplashScreenLoading>(
        initialData: SplashScreenLoading.loading,
        future: Future.delayed(Duration(seconds: 3), () => SplashScreenLoading.finished),
        builder: (context, data) {
          switch(data.data) {
            case SplashScreenLoading.finished:
              return MyHomePage(title: 'My home page');
            case SplashScreenLoading.loading:
              return Material(child: SplashPage());
            default:
              throw Exception('Geht gar net');
          }
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// AppStart - SplashPage
// Nach 3 sec soll die Homepage angezeigt werden

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('splash-page')),
    );
  }
}
