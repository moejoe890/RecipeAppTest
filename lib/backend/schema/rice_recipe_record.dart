import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RiceRecipeRecord extends FirestoreRecord {
  RiceRecipeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "rice_recipe_name" field.
  String? _riceRecipeName;
  String get riceRecipeName => _riceRecipeName ?? '';
  bool hasRiceRecipeName() => _riceRecipeName != null;

  // "rice_recipe_ingredients" field.
  String? _riceRecipeIngredients;
  String get riceRecipeIngredients => _riceRecipeIngredients ?? '';
  bool hasRiceRecipeIngredients() => _riceRecipeIngredients != null;

  // "rice_recipe_steps" field.
  String? _riceRecipeSteps;
  String get riceRecipeSteps => _riceRecipeSteps ?? '';
  bool hasRiceRecipeSteps() => _riceRecipeSteps != null;

  void _initializeFields() {
    _riceRecipeName = snapshotData['rice_recipe_name'] as String?;
    _riceRecipeIngredients = snapshotData['rice_recipe_ingredients'] as String?;
    _riceRecipeSteps = snapshotData['rice_recipe_steps'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rice_recipe');

  static Stream<RiceRecipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RiceRecipeRecord.fromSnapshot(s));

  static Future<RiceRecipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RiceRecipeRecord.fromSnapshot(s));

  static RiceRecipeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RiceRecipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RiceRecipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RiceRecipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RiceRecipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RiceRecipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRiceRecipeRecordData({
  String? riceRecipeName,
  String? riceRecipeIngredients,
  String? riceRecipeSteps,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rice_recipe_name': riceRecipeName,
      'rice_recipe_ingredients': riceRecipeIngredients,
      'rice_recipe_steps': riceRecipeSteps,
    }.withoutNulls,
  );

  return firestoreData;
}

class RiceRecipeRecordDocumentEquality implements Equality<RiceRecipeRecord> {
  const RiceRecipeRecordDocumentEquality();

  @override
  bool equals(RiceRecipeRecord? e1, RiceRecipeRecord? e2) {
    return e1?.riceRecipeName == e2?.riceRecipeName &&
        e1?.riceRecipeIngredients == e2?.riceRecipeIngredients &&
        e1?.riceRecipeSteps == e2?.riceRecipeSteps;
  }

  @override
  int hash(RiceRecipeRecord? e) => const ListEquality()
      .hash([e?.riceRecipeName, e?.riceRecipeIngredients, e?.riceRecipeSteps]);

  @override
  bool isValidKey(Object? o) => o is RiceRecipeRecord;
}
