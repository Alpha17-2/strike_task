import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:strike_task/constants/constants.dart';
import 'package:strike_task/controller/dateTime_controller.dart';
import 'package:strike_task/controller/screen_controller.dart';
import 'package:strike_task/controller/textfield_controller.dart';
import 'package:strike_task/view/Common/body_with_appbar.dart';
import 'package:strike_task/view/Common/custom_text_field.dart';
import 'package:strike_task/view/Screens/HomeScreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context) => ScreenController(),),
        ChangeNotifierProvider(create: (context) => TextFieldController(),),
        ChangeNotifierProvider(create: (context) => DateTimeController(),),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: lato,
        ),
        debugShowCheckedModeBanner: false,
        home: BodyWithAppBar(),
      ),
    );
  }
}