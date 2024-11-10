// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:file_picker/file_picker.dart';
import 'dart:typed_data';
import 'dart:convert'; // Import added

class HtmlSelector extends StatefulWidget {
  const HtmlSelector({
    super.key,
    this.width,
    this.height,
    this.htmlStringAction,
  });

  final double? width;
  final double? height;
  final Future Function(String? htmlSelecionado)? htmlStringAction;

  @override
  State<HtmlSelector> createState() => _HtmlSelectorState();
}

class _HtmlSelectorState extends State<HtmlSelector> {
  String? _htmlContent;

  Future<void> _pickHtmlFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['html'],
    );

    if (result != null && result.files.isNotEmpty) {
      Uint8List? fileBytes = result.files.single.bytes;
      if (fileBytes != null) {
        String content = utf8.decode(fileBytes);
        setState(() {
          _htmlContent = content;
          if (widget.htmlStringAction != null) {
            widget.htmlStringAction!(_htmlContent);
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _pickHtmlFile,
            child: Text('Select HTML File'),
          ),
          if (_htmlContent != null)
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _htmlContent!,
                  style: TextStyle(fontFamily: 'monospace'),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
