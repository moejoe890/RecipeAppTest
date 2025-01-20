import '/flutter_flow/flutter_flow_util.dart';
import 'rice_recipe_edit_page_widget.dart' show RiceRecipeEditPageWidget;
import 'package:flutter/material.dart';

class RiceRecipeEditPageModel
    extends FlutterFlowModel<RiceRecipeEditPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EditRiceNameTextField widget.
  FocusNode? editRiceNameTextFieldFocusNode;
  TextEditingController? editRiceNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      editRiceNameTextFieldTextControllerValidator;
  // State field(s) for EditRiceIngredientsTextField widget.
  FocusNode? editRiceIngredientsTextFieldFocusNode;
  TextEditingController? editRiceIngredientsTextFieldTextController;
  String? Function(BuildContext, String?)?
      editRiceIngredientsTextFieldTextControllerValidator;
  // State field(s) for EditRiceStepsTextField widget.
  FocusNode? editRiceStepsTextFieldFocusNode;
  TextEditingController? editRiceStepsTextFieldTextController;
  String? Function(BuildContext, String?)?
      editRiceStepsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    editRiceNameTextFieldFocusNode?.dispose();
    editRiceNameTextFieldTextController?.dispose();

    editRiceIngredientsTextFieldFocusNode?.dispose();
    editRiceIngredientsTextFieldTextController?.dispose();

    editRiceStepsTextFieldFocusNode?.dispose();
    editRiceStepsTextFieldTextController?.dispose();
  }
}
