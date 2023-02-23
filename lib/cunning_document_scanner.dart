import 'dart:async';

import 'package:flutter/services.dart';

class CunningDocumentScanner {
  static const MethodChannel _channel =
      MethodChannel('cunning_document_scanner');

  /// Call this to start get Picture workflow.
  static Future<List<String>?> getPictures(
      var buttonColor, var backgroundColor) async {
    final List<dynamic>? pictures = await _channel.invokeMethod('getPictures', {
      'buttonColor': buttonColor,
      'backgroundColor': backgroundColor,
    });
    return pictures?.map((e) => e as String).toList();
  }
}
