// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/domain/core/entities/content/document.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Document fromJson', () {
    expect(
      Document.fromJson(<String, dynamic>{
        'ID': 1,
        'title': '1',
      }),
      isA<Document>(),
    );
  });

  test('Document initial is set', () {
    final Document initialAddress = Document.initial();

    expect(
      initialAddress.id,
      0,
    );
    expect(
      initialAddress.documentData,
      DocumentData.initial(),
    );
  });
  test('DocumentData fromJson', () {
    expect(
      DocumentData.fromJson(<String, dynamic>{
        'ID': 0,
        'title': 'test',
        'meta': <String, dynamic>{
          'documentDownloadUrl': 'test',
        }
      }),
      isA<DocumentData>(),
    );
  });

  test('DocumentMetaData fromJson', () {
    expect(
      DocumentMetaData.fromJson(<String, dynamic>{
        'documentDownloadUrl': UNKNOWN,
      }),
      isA<DocumentMetaData>(),
    );
  });
}
