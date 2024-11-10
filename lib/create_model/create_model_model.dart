import '/flutter_flow/flutter_flow_util.dart';
import 'create_model_widget.dart' show CreateModelWidget;
import 'package:flutter/material.dart';

class CreateModelModel extends FlutterFlowModel<CreateModelWidget> {
  ///  Local state fields for this page.

  String? htmlSelecionadoPage = '<div>\"nada\"</div>';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
