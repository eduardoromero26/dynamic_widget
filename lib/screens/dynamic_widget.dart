import 'package:dynamic_widget_app/custom-widgets/button_widget.dart';
import 'package:dynamic_widget_app/custom-widgets/container_widget.dart';
import 'package:dynamic_widget_app/custom-widgets/icon_widget.dart';
import 'package:dynamic_widget_app/custom-widgets/text_widget.dart';
import 'package:dynamic_widget_app/custom-widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class DynamicWidgetScreen extends StatefulWidget {
  var numberWidgets;
  var widgetSelected;

  DynamicWidgetScreen(
      {Key? key, required this.numberWidgets, required this.widgetSelected})
      : super(key: key);

  @override
  State<DynamicWidgetScreen> createState() => _DynamicWidgetScreenState();
}

selectWidget(widgetSelected) {
  switch (widgetSelected) {
    case "TextField":
      return const TextFieldWidget();
    case "Text":
      return const TextWidget();
    case "Container":
      return const ContainerWidget();
    case "Button":
      return const ButtonWidget();
    case "Icon":
      return const IconWidget();
    default:
  }
}

class _DynamicWidgetScreenState extends State<DynamicWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.widgetSelected} Example"),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView.builder(
            itemCount: widget.numberWidgets,
            itemBuilder: (BuildContext context, int index) {
              return selectWidget(widget.widgetSelected);
            }),
      ),
    );
  }
}
