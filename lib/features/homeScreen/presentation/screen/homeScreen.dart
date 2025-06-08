import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/providers/themeProvider.dart';
import 'package:movie_app/core/theme/colors.dart';
import 'package:movie_app/core/utils/appLog.dart';
import 'package:movie_app/features/homeScreen/domain/model/languageCode.dart';
import 'package:movie_app/features/homeScreen/presentation/provider/languageCodeProvider.dart';
import 'package:movie_app/features/homeScreen/presentation/provider/translationProvider.dart';

class HomeScreen extends ConsumerWidget {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final themeMode = ref.watch(themeModeProvider);
    final isDark = themeMode == ThemeMode.dark;
    final languageCode = ref.watch(languageCodeProvider);
    final selectedLanguage = ref.watch(selectedLanguageProvider);
    final translate = ref.watch(translationProvider);

    // TODO: implement build
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Container(
            width: double.infinity,
            height: height * 0.08,
            decoration: BoxDecoration(
                color: AppColors.backgroundColor(themeMode),
                borderRadius: BorderRadius.circular(width * 0.02),
                boxShadow: [
                  BoxShadow(
                      color: AppColors.shadowColor(themeMode),
                      offset: Offset(2, 4),
                      blurRadius: width * 0.02)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Change Theme',
                    style: TextStyle(color: AppColors.textColor(themeMode))),
                SizedBox(width: width * 0.02),
                Switch(
                  value: isDark,
                  onChanged: (value) {
                    ref.read(themeModeProvider.notifier).state =
                        value ? ThemeMode.dark : ThemeMode.light;
                  },
                )
              ],
            ),
          ),
        ),
        SizedBox(height: height * 0.05),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: TextField(
            controller: textEditingController,
            maxLength: 10, 
            inputFormatters: [
              LengthLimitingTextInputFormatter(
                  10), //Restricted to 10 characters
              FilteringTextInputFormatter.allow(
                  RegExp(r'[a-zA-Z]')), // Only letters
            ],
            decoration: InputDecoration(
              labelText: 'Enter a word',
              border: OutlineInputBorder(),
              
            ),
          ),
        ),
        SizedBox(height: height * 0.05),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('English',
                  style: TextStyle(color: AppColors.textColor(themeMode))),
              Icon(Icons.arrow_forward_ios,
                  color: AppColors.textColor(themeMode)),
              Expanded(
                child: DropdownButtonFormField<LanguageCode>(
                  value: selectedLanguage,
                  decoration: InputDecoration(
                    labelText: 'Select Language',
                    border: OutlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  items: languageCode.languageCode?.map((lang) {
                    return DropdownMenuItem<LanguageCode>(
                      value: lang,
                      child: Text(lang.language ?? ''),
                    );
                  }).toList(),
                  onChanged: (LanguageCode? newValue) {
                    ref.read(selectedLanguageProvider.notifier).state =
                        newValue;
                  },
                ),
              )
            ],
          ),
        ),
        SizedBox(height: height * 0.05),
        translate.isLoading == true
            ? CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  final language = ref.read(selectedLanguageProvider);
                  final text = textEditingController.text.trim();

                  if (text.isNotEmpty && language != null) {
                    ref.read(translationProvider.notifier).checkTranslation(
                          text: text,
                          languageCode: language.languageCode,
                        );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Enter text and select a language')),
                    );
                  }
                },
                child: Text('Translate'),
              ),
        SizedBox(height: height * 0.05),
        Text('Translates to',
            style: TextStyle(color: AppColors.textColor(themeMode))),
        SizedBox(height: height * 0.05),
        Text(translate.translationResponse?.data?.translations?.first
                .translatedText ??
            '', style: TextStyle(color: AppColors.textColor(themeMode), fontSize: 20))
      ],
    )));
  }
}
