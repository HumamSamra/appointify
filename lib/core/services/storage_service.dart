import 'dart:convert';

import 'package:appointment/data/model/appointment_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class StorageKeys {
  static const appointments = 'APPOINTMENTS';
  static const isDark = "IS_DARK";
}

class StorageService {
  final SharedPreferences _prefs;
  StorageService(this._prefs);

  static Future<StorageService> init() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      return StorageService(prefs);
    } catch (e) {
      rethrow;
    }
  }

  Future<AppointmentModel> getAppointment(String id) async {
    final result = await getAppointments();
    return result.firstWhere((x) => x.id == id);
  }

  Future<List<AppointmentModel>> getAppointments() async {
    final result = _prefs.getStringList(StorageKeys.appointments);

    List<AppointmentModel> temp = [];
    if (result != null) {
      for (var item in result) {
        temp.add(AppointmentModel.fromJson(json.decode(item)));
      }
    }
    return temp;
  }

  Future<bool> addAppointment(AppointmentModel itemModel) async {
    final list = _prefs.getStringList(StorageKeys.appointments) ?? [];
    list.add(json.encode(itemModel));
    await _prefs.setStringList(StorageKeys.appointments, list);
    return true;
  }

  Future<bool> updateAppointment(AppointmentModel itemModel) async {
    final list =
        List<String>.from(_prefs.getStringList(StorageKeys.appointments) ?? [])
            .map((e) {
      if (json.decode(e)['id'] == itemModel.id) {
        e = json.encode(itemModel);
      }
      return e;
    }).toList();
    await _prefs.setStringList(StorageKeys.appointments, list);
    return true;
  }

  Future<bool> deleteAppointment(String id) async {
    final list =
        List<String>.from(_prefs.getStringList(StorageKeys.appointments) ?? [])
            .where((e) => json.decode(e)['id'] != id)
            .toList();
    await _prefs.setStringList(StorageKeys.appointments, list);
    return true;
  }

  void valueSetter({required String key, required dynamic value}) {
    if (value is int) {
      _prefs.setInt(key, value);
    } else if (value is String) {
      _prefs.setString(key, value);
    } else if (value is bool) {
      _prefs.setBool(key, value);
    } else {
      throw "undefined type";
    }
  }

  void removeKey(String key) => _prefs.remove(key);

  dynamic valueGetter({required String key}) {
    dynamic storedValue = _prefs.get(key);

    return storedValue;
  }

  void clear() {
    _prefs.clear();
  }
}
