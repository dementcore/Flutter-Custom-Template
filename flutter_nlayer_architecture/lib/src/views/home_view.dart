import 'package:flutter/material.dart';

import 'package:flutter_nlayer_architecture/src/services/services.dart';
import 'package:flutter_nlayer_architecture/src/utils/service_provider.dart';
import 'package:flutter_nlayer_architecture/src/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UIService uiService =
        ServiceProvider.getService<UIService>(context, true);

    return Scaffold(
      appBar: AppBar(
        title: Text(uiService.appBarTitle),
      ),
      body: Center(
        child: Text(uiService.counter),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          uiService.incrementCounter();
          uiService.setAppBarTitle('[Title] ' + uiService.counter);
        },
      ),
    );
  }
}
