import 'package:flutter/material.dart';
import 'package:flutter_authgear/flutter_authgear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  late Authgear _authgear;
  Future<void> _init() async {
    _authgear =
        Authgear(endpoint: "<AUTHGEAR_ENDPOINT>", clientID: "<ClIENT_ID>");
    await _authgear.configure();

    if (_authgear.sessionState == SessionState.authenticated) {
      final userInfo = await _authgear.getUserInfo();
      setState(() {
        _userInfo = userInfo;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  UserInfo? _userInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: (_userInfo != null)
            ? loggedInUserScreen(_userInfo!.sub)
            : Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("My Demo App"),
                TextButton(
                  onPressed: _onPressedAuthenticate,
                  child: Text("Login"),
                )
              ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget loggedInUserScreen(String userId) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Welcome user $userId"),
        TextButton(
          onPressed: _onPressedSettings,
          child: Text("User Settings"),
        ),
        TextButton(
          onPressed: _onPressedLogout,
          child: Text("Logout"),
        )
      ],
    );
  }

  Future<void> _onPressedAuthenticate() async {
    try {
      final userInfo = await _authgear.authenticate(
          redirectURI: "com.example.authgeardemo.flutter://host/path");
      setState(() {
        _userInfo = userInfo;
      });
    } catch (e) {
      print(e);
    } finally {}
  }

  Future<void> _onPressedSettings() async {
    await _authgear.open(page: SettingsPage.settings);
  }

  Future<void> _onPressedLogout() async {
    await _authgear.logout();
    setState(() {
      _userInfo = null;
    });
  }
}
