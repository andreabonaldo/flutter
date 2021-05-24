import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'schema_util.dart';
import 'serializers.dart';

part 'dati_meteo_marini_record.g.dart';

abstract class DatiMeteoMariniRecord
    implements Built<DatiMeteoMariniRecord, DatiMeteoMariniRecordBuilder> {
  static Serializer<DatiMeteoMariniRecord> get serializer =>
      _$datiMeteoMariniRecordSerializer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(DatiMeteoMariniRecordBuilder builder) =>
      builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DatiMeteoMarini');

  static Stream<DatiMeteoMariniRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  DatiMeteoMariniRecord._();
  factory DatiMeteoMariniRecord(
          [void Function(DatiMeteoMariniRecordBuilder) updates]) =
      _$DatiMeteoMariniRecord;
}

Map<String, dynamic> createDatiMeteoMariniRecordData() =>
    serializers.serializeWith(
        DatiMeteoMariniRecord.serializer, DatiMeteoMariniRecord((d) => d));

DatiMeteoMariniRecord get dummyDatiMeteoMariniRecord {
  final builder = DatiMeteoMariniRecordBuilder();
  return builder.build();
}

List<DatiMeteoMariniRecord> createDummyDatiMeteoMariniRecord({int count}) =>
    List.generate(count, (_) => dummyDatiMeteoMariniRecord);
