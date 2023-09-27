import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BlogsRecord extends FirestoreRecord {
  BlogsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  bool hasAutor() => _autor != null;

  // "informacion" field.
  String? _informacion;
  String get informacion => _informacion ?? '';
  bool hasInformacion() => _informacion != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "clave" field.
  String? _clave;
  String get clave => _clave ?? '';
  bool hasClave() => _clave != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _image = snapshotData['image'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _autor = snapshotData['autor'] as String?;
    _informacion = snapshotData['informacion'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _clave = snapshotData['clave'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blogs');

  static Stream<BlogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BlogsRecord.fromSnapshot(s));

  static Future<BlogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BlogsRecord.fromSnapshot(s));

  static BlogsRecord fromSnapshot(DocumentSnapshot snapshot) => BlogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BlogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BlogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BlogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BlogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBlogsRecordData({
  String? titulo,
  String? descripcion,
  String? image,
  String? categoria,
  String? autor,
  String? informacion,
  DateTime? createdTime,
  String? clave,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'image': image,
      'categoria': categoria,
      'autor': autor,
      'informacion': informacion,
      'created_time': createdTime,
      'clave': clave,
    }.withoutNulls,
  );

  return firestoreData;
}

class BlogsRecordDocumentEquality implements Equality<BlogsRecord> {
  const BlogsRecordDocumentEquality();

  @override
  bool equals(BlogsRecord? e1, BlogsRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.image == e2?.image &&
        e1?.categoria == e2?.categoria &&
        e1?.autor == e2?.autor &&
        e1?.informacion == e2?.informacion &&
        e1?.createdTime == e2?.createdTime &&
        e1?.clave == e2?.clave;
  }

  @override
  int hash(BlogsRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.image,
        e?.categoria,
        e?.autor,
        e?.informacion,
        e?.createdTime,
        e?.clave
      ]);

  @override
  bool isValidKey(Object? o) => o is BlogsRecord;
}
