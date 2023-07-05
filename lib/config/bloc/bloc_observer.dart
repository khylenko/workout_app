import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError $error');
    log('stackTrace $stackTrace');

    super.onError(bloc, error, stackTrace);
  }
}
