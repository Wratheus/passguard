import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

sealed class LibHelper {
  // Убираем пробелы в строке
  static dynamic trim(a) {
    return a.replaceAll(RegExp(r"\s+\b|\b\s"), "");
  }

  /// Хэшируем строку в мд5
  static String convertToMd5(str) {
    Uint8List bytes = utf8.encode(str); // data being hashed
    return sha1.convert(bytes).toString();
  }

  static String enumToString({required dynamic type}) {
    try {
      List typeArr = (type.toString()).split('.');
      if (typeArr.length < 2) {
        return '';
      }

      return typeArr.last;
    } catch (e) {
      return '';
    }
  }

  static bool compareField(String text, String q) {
    return text.contains(q);
  }

  static T? enumFromString<T>(List<T> values, String? value) {
    if (value == null) {
      return null;
    }
    return values.firstWhereOrNull((v) => v.toString().split('.')[1] == value);
  }

  static List<T> toListEnumFromString<T>(List<T> enumTypesValue, List values) {
    List<T> enumsList = [];

    for (String value in values) {
      T? enumItem = enumTypesValue
          .firstWhereOrNull((v) => v.toString().split('.')[1] == value);
      if (enumItem != null) {
        enumsList.add(enumItem);
      }
    }

    return enumsList;
  }

  static Future<void> cancelToken(CancelToken? cancelToken) async {
    if (cancelToken != null &&
        !cancelToken.isCancelled &&
        cancelToken.requestOptions != null) {
      cancelToken.cancel();
    }
  }
}
