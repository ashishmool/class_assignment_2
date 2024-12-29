import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/area_circle_view.dart';
import 'area_circle/area_circle_bloc.dart';


class DashboardBloc extends Cubit<void> {
  DashboardBloc(this._areaCircleBloc) : super(null);

  // AreaCircleBloc instance
  final AreaCircleBloc _areaCircleBloc;

  // Method to navigate to Area Circle View
  void openAreaCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaCircleBloc,
          child: AreaCircleView(),
        ),
      ),
    );
  }
}
