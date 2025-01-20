import '/flutter_flow/flutter_flow_util.dart';
import 'add_rice_recipe_page_widget.dart' show AddRiceRecipePageWidget;
import 'package:flutter/material.dart';

class AddRiceRecipePageModel extends FlutterFlowModel<AddRiceRecipePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RecipeNameTextField widget.
  FocusNode? recipeNameTextFieldFocusNode;
  TextEditingController? recipeNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipeNameTextFieldTextControllerValidator;
  // State field(s) for RecipeIngredientsTextField widget.
  FocusNode? recipeIngredientsTextFieldFocusNode;
  TextEditingController? recipeIngredientsTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipeIngredientsTextFieldTextControllerValidator;
  // State field(s) for RecipeStepsTextField widget.
  FocusNode? recipeStepsTextFieldFocusNode;
  TextEditingController? recipeStepsTextFieldTextController;
  String? Function(BuildContext, String?)?
      recipeStepsTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    recipeNameTextFieldFocusNode?.dispose();
    recipeNameTextFieldTextController?.dispose();

    recipeIngredientsTextFieldFocusNode?.dispose();
    recipeIngredientsTextFieldTextController?.dispose();

    recipeStepsTextFieldFocusNode?.dispose();
    recipeStepsTextFieldTextController?.dispose();
  }
}
