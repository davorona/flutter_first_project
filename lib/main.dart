import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xFFeceff1), width: 2));
    const LinkTextStyle = TextStyle(
        fontSize: 16,
        color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
          body: Container (
            width: double.infinity,
            child: Column (children: [
              SizedBox(height: 60),
        SizedBox(width: 110, height: 84, child: Placeholder(),),
              SizedBox(height: 20),
              Text('Добро пожаловать',
                  style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 6))),
              SizedBox(height: 20),
              SizedBox( width: 260,
                child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      labelText: 'Телефон',
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                    )

                ),
              ),
              SizedBox(height: 20),
              SizedBox( width: 260,
                child: TextField(
                  obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFeceff1),
                      labelText: 'Введите пароль',
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                    )

                ),
              ),
              SizedBox(height: 28),
              SizedBox(height: 60, width: 150,
                  child: ElevatedButton(onPressed: (){}, child: Text ('Войти'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36)
                    )
                  ))),
              SizedBox(height: 20),
              InkWell(child: Text('Регистрация',
                  style: LinkTextStyle),
                  onTap: (){} ),
              SizedBox(height: 20),
              InkWell(child: Text('Забыли пароль?',
                  style: LinkTextStyle),
                  onTap: (){} ),

          ],)
    )
    ),
    );
  }
}

