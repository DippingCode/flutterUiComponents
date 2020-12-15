import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'ui/environments.dart';
import 'screens/simpleScreen.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    //disponivel em services
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return simpleScreen();
  }
}
