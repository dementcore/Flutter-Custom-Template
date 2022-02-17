import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class ServiceProvider{

  /// Obtains a service from dependency injection
  /// * The [context] parameter must not be null.
  /// * The [needsRefresh] parameter tells if the service receiver widget needs to be refreshed when the service
  /// has a change in its internal state
  static getService<T>(BuildContext context,bool needsRefresh){
    return Provider.of<T>(context,listen: needsRefresh);
  }
}