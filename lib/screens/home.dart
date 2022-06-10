import 'package:dynamic_widget_app/screens/dynamic_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var widgetSelected = "TextField";
  var numberWidgets = 0;
  var emptyField = "";

  final TextEditingController _numberWidgetsCtrl =
      TextEditingController(text: "100");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select your widget"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _numberWidgetsCtrl.text = "";
                  widgetSelected = "TextField";
                });
              },
              icon: Icon(Icons.restart_alt))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 28,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: TextField(
                  controller: _numberWidgetsCtrl,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Number of Widgets',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  RadioListTile(
                      title: const Text('TextField'),
                      value: 'TextField',
                      groupValue: widgetSelected,
                      onChanged: (value) {
                        setState(() {
                          widgetSelected = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text('Text'),
                      value: 'Text',
                      groupValue: widgetSelected,
                      onChanged: (value) {
                        setState(() {
                          widgetSelected = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text('Container'),
                      value: 'Container',
                      groupValue: widgetSelected,
                      onChanged: (value) {
                        setState(() {
                          widgetSelected = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text('Button'),
                      value: 'Button',
                      groupValue: widgetSelected,
                      onChanged: (value) {
                        setState(() {
                          widgetSelected = value.toString();
                        });
                      }),
                  RadioListTile(
                      title: const Text('Icon'),
                      value: 'Icon',
                      groupValue: widgetSelected,
                      onChanged: (value) {
                        setState(() {
                          widgetSelected = value.toString();
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      numberWidgets = int.parse(_numberWidgetsCtrl.text);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DynamicWidgetScreen(
                                  numberWidgets: numberWidgets,
                                  widgetSelected: widgetSelected,
                                )),
                      );
                    },
                    child: const Text("Continue")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
