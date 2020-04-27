import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'add_alert'     : Icons.add_alert,
  'accesibility'  : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'all_inclusive' : Icons.all_inclusive,
  'inputs'        : Icons.input,
  'av_timer'      : Icons.av_timer,
};


Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.blue);
}
