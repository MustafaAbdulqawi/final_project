import 'package:final_project/business_logic/app_cubit/app_cubit.dart';
import 'package:final_project/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'core/my_bloc_observer.dart';

void main() {
  runApp(MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AppRouter appRouter =AppRouter();

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            BlocProvider(
              create:(context)=> AppCubit(),
            ),
          ],
          child: MaterialApp(
            title: 'Flutter App',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            onGenerateRoute: appRouter.onGenerateRoute,
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}