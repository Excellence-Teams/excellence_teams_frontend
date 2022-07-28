import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class TagsRepository extends ChangeNotifier {
  final Api _api;
  final BehaviorSubject<List<String>> _themes;
  ValueStream<List<String>> get themes => _themes.stream;

  final BehaviorSubject<List<String>> _skills;
  ValueStream<List<String>> get skills => _skills.stream;

  final BehaviorSubject<List<String>> _degrees;
  ValueStream<List<String>> get degrees => _degrees.stream;

  TagsRepository(this._api)
      : _themes = BehaviorSubject<List<String>>(),
        _skills = BehaviorSubject<List<String>>(),
        _degrees = BehaviorSubject<List<String>>() {
    loadThemes();
    loadSkills();
    loadDegrees();
  }

  Future<void> loadThemes() async {
    try {
      final response = await _api.get('data/getThemes', useHeaders: false);
      final List<String> themes =
          (response as List).map((e) => e as String).toList();
      _themes.add(themes);
    } catch (e, s) {
      debugLogError('error fetching themes', e, s);
      _themes.addError(e, s);
    }
    notifyListeners();
  }

  Future<void> loadSkills() async {
    try {
      final response = await _api.get('data/getSkills', useHeaders: false);
      final List<String> skills =
          (response as List).map((e) => e as String).toList();
      _skills.add(skills);
    } catch (e, s) {
      debugLogError('error fetching skills', e, s);
      _skills.addError(e, s);
    }
    notifyListeners();
  }

  Future<void> loadDegrees() async {
    try {
      final response = await _api.get('data/getDegrees', useHeaders: false);
      final List<String> degrees =
          (response as List).map((e) => e as String).toList();
      _degrees.add(degrees);
    } catch (e, s) {
      debugLogError('error fetching degrees', e, s);
      _degrees.addError(e, s);
    }
    notifyListeners();
  }

  List<String> get languages => _languages;
  final _languages = [
    "German",
    "English",
    "Afrikaans",
    "Arabic",
    "Bengali",
    "Bulgarian",
    "Catalan",
    "Cantonese",
    "Croatian",
    "Czech",
    "Danish",
    "Dutch",
    "Lithuanian",
    "Malay",
    "Malayalam",
    "Panjabi",
    "Tamil",
    "Finnish",
    "French",
    "Greek",
    "Hebrew",
    "Hindi",
    "Hungarian",
    "Indonesian",
    "Italian",
    "Japanese",
    "Javanese",
    "Korean",
    "Norwegian",
    "Polish",
    "Portuguese",
    "Romanian",
    "Russian",
    "Serbian",
    "Slovak",
    "Slovene",
    "Spanish",
    "Swedish",
    "Telugu",
    "Thai",
    "Turkish",
    "Ukrainian",
    "Vietnamese",
    "Welsh",
    "Sign language",
    "Algerian",
    "Aramaic",
    "Armenian",
    "Berber",
    "Burmese",
    "Bosnian",
    "Brazilian",
    "Bulgarian",
    "Cypriot",
    "Corsica",
    "Creole",
    "Scottish",
    "Egyptian",
    "Esperanto",
    "Estonian",
    "Finn",
    "Flemish",
    "Georgian",
    "Hawaiian",
    "Indonesian",
    "Inuit",
    "Irish",
    "Icelandic",
    "Latin",
    "Mandarin",
    "Nepalese",
    "Sanskrit",
    "Tagalog",
    "Tahitian",
    "Tibetan",
    "Gypsy",
    "Wu"
  ];
}
