import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tripLogin/models/user.dart';
import 'package:tripLogin/routes/routes.dart';
import 'package:tripLogin/screens/initial.dart';
import 'routes/router.dart' as router;

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserModel()),
      ],
      child: MaterialApp(
        home: Initial(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Consolas',
          canvasColor: Colors.transparent,
        ),
        onGenerateRoute: router.generateRoute,
        initialRoute: InitialRoute,
      ),
    ),
  );
}
