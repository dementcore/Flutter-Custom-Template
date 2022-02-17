//imports flutter and packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//imports local packages
import 'package:flutter_nlayer_architecture/src/services/services.dart';
import 'package:flutter_nlayer_architecture/src/routes/application_routes.dart';
import 'package:flutter_nlayer_architecture/src/themes/application_theme.dart';

void main() {
  runApp(const ApplicationRoot());
}

class ApplicationRoot extends StatelessWidget {
  const ApplicationRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UIService(),
        )
      ],
      child: MaterialApp(
        title: '[Application Description]',
        theme: ApplicationTheme.theme,
        initialRoute: ApplicationRoutes.initialRoute,
        routes: ApplicationRoutes.routes,
      ),
    );
  }
}
