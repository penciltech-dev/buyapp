import 'package:buy_app/router.dart';
import 'package:buy_app/screen/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';



import 'package:mvc_pattern/mvc_pattern.dart';

import 'bloc/app_bloc_provider.dart';
import 'bloc/app_info_bloc.dart';

//import 'package:english_words/english_words.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // print(CustomTrace(StackTrace.current, message: "api_base_url: ${GlobalConfiguration().getValue('api_base_url')}"));

  runApp(BuyApp(key: const Key("any_key"),));
}


class BuyApp extends StatefulWidget {
  const BuyApp({Key key}) : super(key: key);

  @override
  _KhaidaiAppState createState() => _KhaidaiAppState();
}

class _KhaidaiAppState extends State<BuyApp> {
  AppInfoBloc appInfoBloc = AppInfoBloc();


  @override
  void initState() {


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: appInfoBloc,
      key: Key("key"),
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.white,
            fontFamily: 'ProductSans'),

        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouterGenarator.generateRoute,
        home: SplashScreen() ,
      ),
    );
  }
}
