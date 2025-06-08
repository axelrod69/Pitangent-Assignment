import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/app/routes.dart';
import 'package:movie_app/core/providers/themeProvider.dart';

void main() => runApp(ProviderScope(
      child: ToDoApp(),
    ));

class ToDoApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    // TODO: implement build
    return ScreenUtilInit(
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Translator',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: themeMode,
      ),
    );
  }
}
