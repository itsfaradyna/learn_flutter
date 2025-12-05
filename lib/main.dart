import 'package:flutter/material.dart';
import 'package:learn_flutter_provider/model/counter_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterModel(), // Provide the CounterModel to the app
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            // You can add other text styles here
          ),
        ),
        home: MyHomePage(), // Home page that will consume the CounterModel
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Use Consumer to listen to the CounterModel and rebuild the UI when it changes
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Provider Example'),
      ),
      body: Center(
        child: Consumer<CounterModel>(
          builder: (context, counterModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${counterModel.counter}',
                  style: Theme.of(context).textTheme.headlineLarge, // Now this works
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    counterModel.increment(); // Increment the counter
                  },
                  child: Text('Increment Counter'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}