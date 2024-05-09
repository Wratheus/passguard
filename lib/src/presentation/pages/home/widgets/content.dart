import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:passguard/src/core/extensions/sized_context.dart';
import 'package:passguard/src/data/models/list_group/group.dart';
import 'package:passguard/src/presentation/pages/home/bloc/home_page_bloc.dart';
import 'package:passguard/src/presentation/widgets/group_menu/group.dart';

class HomePageContentWidget extends StatelessWidget {
  const HomePageContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageBloc bloc = context.read<HomePageBloc>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () => bloc.service.settings(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.person,
              ),
            ),
          )
        ],
        title: Text(
          "HomePage",
          style: context.theme.textTheme.labelLarge,
        ),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              ListGroupWidget(
                groups: [
                  ListGroup(
                    items: [],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
