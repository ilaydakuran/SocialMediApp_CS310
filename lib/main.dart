import 'package:flutter/material.dart';

void main() {
  runApp(ChipView());
}

class ChipView extends StatelessWidget {
  const ChipView({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(

        children: [
          Chip(label: Text('I')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('need')),
          Chip(label: Text('a')),
          Chip(label: Text('good')),
          Chip(label: Text('grade')),
        ]);


  }
}
/*
class Wrapper extends StatelessWidget {

  //Initialize firebase here
  //final Future<FirebaseApp> _initialization =Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {

    //Handle firebase connectivity here
    return FutureBuilder(
      future: _initialization,
      builder: (context.snapshot){,
        if(snapshot.hasError){
          print('Firebase not connected' +snapshot.error);
          return MaterialApp(
            home: NoFireBaseView(),
          );
    }
    if(snapshot.connectionState== ConnectionState.done){
      print('Firebase connected');
      return StreamProvider<User>.value(
        value.AuthService().user,
        child: MaterialApp(
          home: Authenticate();
        ),
      );
    }
    return MaterialApp(
        print('Waiting for response' +snapshot.error);
      home: WaitingView();
    );


    }
    );
  }
}
*/

