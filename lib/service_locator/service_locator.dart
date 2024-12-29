import 'package:get_it/get_it.dart';

import '../bloc/area_circle/area_circle_bloc.dart';
import '../bloc/dashboard_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async{
  _initBloc();
}

void _initBloc(){
  serviceLocator.registerLazySingleton(()=> AreaCircleBloc());
  serviceLocator.registerFactory(() => DashboardBloc(serviceLocator<AreaCircleBloc>()));

}
