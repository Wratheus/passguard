import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/presentation/pages/home/bloc/home_page_bloc.dart';
import 'package:passguard/src/presentation/pages/home/service/service.dart';
import 'package:passguard/src/presentation/pages/home/widgets/content.dart';

class HomePageMain extends StatelessWidget {
  final HomePageService service = HomePageService();

  HomePageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext _) => HomePageBloc(service: service),
      child: const HomePageContentWidget(),
    );
  }
}
