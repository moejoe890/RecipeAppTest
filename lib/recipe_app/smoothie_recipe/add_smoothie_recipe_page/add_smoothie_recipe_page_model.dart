import '/flutter_flow/flutter_flow_util.dart';
import 'add_smoothie_recipe_page_widget.dart' show AddSmoothieRecipePageWidget;
import 'package:flutter/material.dart';

class AddSmoothieRecipePageModel
    extends FlutterFlowModel<AddSmoothieRecipePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SmoothieNameTextField widget.
  FocusNode? smoothieNameTextFieldFocusNode;
  TextEditingController? smoothieNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      smoothieNameTextFieldTextControllerValidator;
  // State field(s) for SmoothieIngredientsTextField widget.
  FocusNode? smoothieIngredientsTextFieldFocusNode;
  TextEditingController? smoothieIngredientsTextFieldTextController;
  String? Function(BuildContext, String?)?
      smoothieIngredientsTextFieldTextControllerValidator;
  // State field(s) for SmoothieStepsTextField widget.
  FocusNode? smoothieStepsTextFieldFocusNode;
  TextEditingController? smoothieStepsTextFieldTextController;
  String? Function(BuildContext, String?)?
      smoothieStepsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    smoothieNameTextFieldFocusNode?.dispose();
    smoothieNameTextFieldTextController?.dispose();

    smoothieIngredientsTextFieldFocusNode?.dispose();
    smoothieIngredientsTextFieldTextController?.dispose();

    smoothieStepsTextFieldFocusNode?.dispose();
    smoothieStepsTextFieldTextController?.dispose();
  }
}
