import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/model/safe_area/safe_area_model.dart';
import 'package:flutter_playground/router/router.dart';

class SafeAreaRootPage extends StatelessWidget {
  const SafeAreaRootPage({Key? key}) : super(key: key);

  static const models = <SafeAreaModel>[
    SafeAreaModel(
      title: 'display safe area with bars',
      routeInfo: DisplaySafeAreaWithBarsRoute(),
    ),
    SafeAreaModel(
      title: 'display safe area without bars',
      routeInfo: DisplaySafeAreaWithoutBarsRoute(),
    ),
    SafeAreaModel(
      title: 'dirty safe area',
      routeInfo: DirtySafeAreaRoute(),
    ),
    SafeAreaModel(
      title: 'list view safe area',
      routeInfo: ListViewSafeAreaRoute(),
    ),
    SafeAreaModel(
      title: 'smart safe area',
      routeInfo: SmartSafeAreaRoute(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('safe area root'),
      ),
      body: SafeArea(
        child: Column(
          children: models
              .map((e) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 56.0),
                      ),
                      onPressed: () {
                        context.router.push(e.routeInfo);
                      },
                      child: Text(e.title),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
