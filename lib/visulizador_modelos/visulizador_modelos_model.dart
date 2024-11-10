import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'visulizador_modelos_widget.dart' show VisulizadorModelosWidget;
import 'package:flutter/material.dart';

class VisulizadorModelosModel
    extends FlutterFlowModel<VisulizadorModelosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Tabe widget.
  final tabeController = FlutterFlowDataTableController<ModelosRecord>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabeController.dispose();
  }
}
