import 'package:edtech_platform/repositories/user_repository.dart';
import 'package:edtech_platform/screens/information/edit_user_info/edit_user_info_cubit.dart';
import 'package:edtech_platform/screens/information/edit_user_info/edit_user_info_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MultiRepositoryProvider(
          providers: [
            RepositoryProvider<UserRepository>(create: (context) {
              return UserRepositoryImpl();
            }),
          ], child:MultiBlocProvider(providers: [
            BlocProvider<EditUserInfoCubit>(create: (context)  {
              return EditUserInfoCubit();
            })
        ], child: const EditUserInfoScreen(),

        ),
        ),
      ),
    );
  }
}
