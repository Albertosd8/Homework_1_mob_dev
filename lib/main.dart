import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  bool isPressed = true;
  bool isPressed2 = true;
  bool people_button_color = true;
  bool timer_button_color = true;
  bool phone1_button_color = true;
  bool phone2_button_color = true;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App iteso', 
      home: Scaffold(
        //key: scaffoldKey,
        appBar: AppBar(
          centerTitle: false,
          title: Text('Mc Flutter'), 
        ),
        body: Builder(
          builder: (context) => Container(
            child:Container( 
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 60
                            ),
                          Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Flutter McFlutter",
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    )
                                  ),
                                  Text("Experienced App Developer"),
                                ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height:15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("123 Main Street"),
                          Text("(415) 555-0198")
                        ],
                      ),
                      SizedBox(
                        height:15,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              people_button_color = !people_button_color;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Únete a un club con otras personas")
                                  ,duration: const Duration(seconds: 2)
                                  ),
                              );
                              (context as Element).markNeedsBuild();
                              },
                            icon: Icon(Icons.accessibility_sharp,
                            color: (people_button_color) ?
                              Color(0xFF000000)
                                : Color.fromARGB(255, 16, 45, 99))
                          ),
                          IconButton(
                            onPressed: () {
                              timer_button_color = !timer_button_color;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Cuenta regresiva para el evento: 31 días")
                                  ,duration: const Duration(seconds: 2)
                                  ),
                              );
                              (context as Element).markNeedsBuild();
                              },
                            icon: Icon(Icons.timer,
                            color: (timer_button_color) ?
                              Color(0xFF000000)
                                : Color.fromARGB(255, 16, 45, 99))
                          ),
                          IconButton(
                            onPressed: () {
                              phone1_button_color = !phone1_button_color;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Llama al número 4155550198")
                                  ,duration: const Duration(seconds: 2)
                                  ),
                              );
                              (context as Element).markNeedsBuild();
                              },
                            icon: Icon(Icons.phone_android,
                            color: (phone1_button_color) ?
                              Color(0xFF000000)
                                : Color.fromARGB(255, 16, 45, 99))
                          ),
                          IconButton(
                            onPressed: () {
                              phone2_button_color = !phone2_button_color;
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("Llama al celular 3317865113.")
                                  ,duration: const Duration(seconds: 2)
                                  ),
                              );
                              (context as Element).markNeedsBuild();
                              },
                            icon: Icon(Icons.phone_android_outlined,
                            color: (phone2_button_color) ?
                              Color(0xFF000000)
                                : Color.fromARGB(255, 16, 45, 99))
                          ),
                        ],
                      ),
                    ],
                  ),
                  )
                  
                ],
              )
            ),
        )
      ),
      )
    );
  }
}