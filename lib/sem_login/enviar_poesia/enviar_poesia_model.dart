import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'enviar_poesia_widget.dart' show EnviarPoesiaWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnviarPoesiaModel extends FlutterFlowModel<EnviarPoesiaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomePoeta widget.
  FocusNode? nomePoetaFocusNode;
  TextEditingController? nomePoetaTextController;
  String? Function(BuildContext, String?)? nomePoetaTextControllerValidator;
  String? _nomePoetaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Precisamos do seu nome para te chamar para recitar...';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for tituloPoesia widget.
  FocusNode? tituloPoesiaFocusNode;
  TextEditingController? tituloPoesiaTextController;
  String? Function(BuildContext, String?)? tituloPoesiaTextControllerValidator;
  String? _tituloPoesiaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Sua poesia precisa de um título';
    }

    return null;
  }

  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularTextController;
  final celularMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? celularTextControllerValidator;
  String? _celularTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Precisamos do seu número para';
    }

    return null;
  }

  // State field(s) for corpoPoesia widget.
  FocusNode? corpoPoesiaFocusNode;
  TextEditingController? corpoPoesiaTextController;
  String? Function(BuildContext, String?)? corpoPoesiaTextControllerValidator;
  String? _corpoPoesiaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Faltou sua poesia!';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    nomePoetaTextControllerValidator = _nomePoetaTextControllerValidator;
    tituloPoesiaTextControllerValidator = _tituloPoesiaTextControllerValidator;
    celularTextControllerValidator = _celularTextControllerValidator;
    corpoPoesiaTextControllerValidator = _corpoPoesiaTextControllerValidator;
  }

  @override
  void dispose() {
    nomePoetaFocusNode?.dispose();
    nomePoetaTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    tituloPoesiaFocusNode?.dispose();
    tituloPoesiaTextController?.dispose();

    celularFocusNode?.dispose();
    celularTextController?.dispose();

    corpoPoesiaFocusNode?.dispose();
    corpoPoesiaTextController?.dispose();
  }
}
