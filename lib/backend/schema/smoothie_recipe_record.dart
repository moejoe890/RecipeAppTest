import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SmoothieRecipeRecord extends FirestoreRecord {
  SmoothieRecipeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "smoothie_recipe_name" field.
  String? _smoothieRecipeName;
  String get smoothieRecipeName => _smoothieRecipeName ?? '';
  bool hasSmoothieRecipeName() => _smoothieRecipeName != null;

  // "smoothie_recipe_ingredients" field.
  String? _smoothieRecipeIngredients;
  String get smoothieRecipeIngredients => _smoothieRecipeIngredients ?? '';
  bool hasSmoothieRecipeIngredients() => _smoothieRecipeIngredients != null;

  // "smoothie_recipe_steps" field.
  String? _smoothieRecipeSteps;
  String get smoothieRecipeSteps => _smoothieRecipeSteps ?? '';
  bool hasSmoothieRecipeSteps() => _smoothieRecipeSteps != null;

  void _initializeFields() {
    _smoothieRecipeName = snapshotData['smoothie_recipe_name'] as String?;
    _smoothieRecipeIngredients =
        snapshotData['smoothie_recipe_ingredients'] as String?;
    _smoothieRecipeSteps = snapshotData['smoothie_recipe_steps'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('smoothie_recipe');

  static Stream<SmoothieRecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SmoothieRecipeRecord.fromSnapshot(s));

  static Future<SmoothieRecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SmoothieRecipeRecord.fromSnapshot(s));

  static SmoothieRecipeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SmoothieRecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SmoothieRecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SmoothieRecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SmoothieRecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SmoothieRecipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSmoothieRecipeRecordData({
  String? smoothieRecipeName,
  String? smoothieRecipeIngredients,
  String? smoothieRecipeSteps,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'smoothie_recipe_name': smoothieRecipeName,
      'smoothie_recipe_ingredients': smoothieRecipeIngredients,
      'smoothie_recipe_steps': smoothieRecipeSteps,
    }.withoutNulls,
  );

  return firestoreData;
}

class SmoothieRecipeRecordDocumentEquality
    implements Equality<SmoothieRecipeRecord> {
  const SmoothieRecipeRecordDocumentEquality();

  @override
  bool equals(SmoothieRecipeRecord? e1, SmoothieRecipeRecord? e2) {
    return e1?.smoothieRecipeName == e2?.smoothieRecipeName &&
        e1?.smoothieRecipeIngredients == e2?.smoothieRecipeIngredients &&
        e1?.smoothieRecipeSteps == e2?.smoothieRecipeSteps;
  }

  @override
  int hash(SmoothieRecipeRecord? e) => const ListEquality().hash([
        e?.smoothieRecipeName,
        e?.smoothieRecipeIngredients,
        e?.smoothieRecipeSteps
      ]);

  @override
  bool isValidKey(Object? o) => o is SmoothieRecipeRecord;
}
