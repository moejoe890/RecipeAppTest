import '/flutter_flow/flutter_flow_util.dart';
import 'smoothie_recipe_edit_page_widget.dart'
    show SmoothieRecipeEditPageWidget;
import 'package:flutter/material.dart';

class SmoothieRecipeEditPageModel
    extends FlutterFlowModel<SmoothieRecipeEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EditSmoothieNameTextField widget.
  FocusNode? editSmoothieNameTextFieldFocusNode;
  TextEditingController? editSmoothieNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      editSmoothieNameTextFieldTextControllerValidator;
  // State field(s) for EditSmoothieIngredientsTextField widget.
  FocusNode? editSmoothieIngredientsTextFieldFocusNode;
  TextEditingController? editSmoothieIngredientsTextFieldTextController;
  String? Function(BuildContext, String?)?
      editSmoothieIngredientsTextFieldTextControllerValidator;
  // State field(s) for EditSmoothieStepsTextField widget.
  FocusNode? editSmoothieStepsTextFieldFocusNode;
  TextEditingController? editSmoothieStepsTextFieldTextController;
  String? Function(BuildContext, String?)?
      editSmoothieStepsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editSmoothieNameTextFieldFocusNode?.dispose();
    editSmoothieNameTextFieldTextController?.dispose();

    editSmoothieIngredientsTextFieldFocusNode?.dispose();
    editSmoothieIngredientsTextFieldTextController?.dispose();

    editSmoothieStepsTextFieldFocusNode?.dispose();
    editSmoothieStepsTextFieldTextController?.dispose();
  }
}
