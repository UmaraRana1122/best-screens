import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TranslateText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Language Translator App'),
        ),
        body: Center(
          child: TranslationWidget(),
        ),
      ),
    );
  }
}

class TranslationWidget extends StatefulWidget {
  @override
  _TranslationWidgetState createState() => _TranslationWidgetState();
}

class _TranslationWidgetState extends State<TranslationWidget> {
  final TextEditingController _textController = TextEditingController();
  String _translatedText = '';
  String _targetLanguage = 'af'; // Default target language

  final TranslationApiService _apiService = TranslationApiService();

  void _translateText() async {
    final textToTranslate = _textController.text;

    try {
      final translatedText =
          await _apiService.translateText(textToTranslate, _targetLanguage);
      setState(() {
        _translatedText = translatedText;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _textController,
          decoration: InputDecoration(
            hintText: 'Enter text to translate',
          ),
        ),
        DropdownButton<String>(
          value: _targetLanguage,
          items: <String>[
            'Afrikaans',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'English',
            'Azerbaijani'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              _targetLanguage = newValue!;
            });
          },
        ),
        ElevatedButton(
          onPressed: _translateText,
          child: Text('Translate'),
        ),
        SizedBox(height: 20),
        Text('Translated Text: $_translatedText'),
      ],
    );
  }
}

class Translation {
  String code;
  String name;

  Translation({
    required this.code,
    required this.name,
  });

  factory Translation.fromJson(Map<String, dynamic> json) {
    return Translation(
      code: json['code'],
      name: json['name'],
    );
  }
}

class TranslationApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://text-translator2.p.rapidapi.com/getLanguages';
  final String apiKey =
      '60b01a2f94mshcebd41be2dc8211p1805b9jsn5ef194f0cf6a'; // Replace with your actual API key

  Future<String> translateText(String text, String targetLanguage) async {
    try {
      final response = await _dio.post(
        '$baseUrl?key=$apiKey',
        options: Options(headers: {
          "X-RapidAPI-Key":
              "60b01a2f94mshcebd41be2dc8211p1805b9jsn5ef194f0cf6a",
          "X-RapidAPI-Host": "moviesdatabase.p.rapidapi.com",
        }),
        data: {
          'code': text,
          'name': targetLanguage,
        },
      );

      if (response.statusCode == 200) {
        final translatedText =
            response.data['data']['translations'][0]['translatedText'];
        return translatedText;
      } else {
        throw Exception('Failed to translate text');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
