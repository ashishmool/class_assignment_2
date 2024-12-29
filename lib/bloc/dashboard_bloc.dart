import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view/area_circle_view.dart';
import '../view/simple_interest_view.dart';  // Add the import for SimpleInterestView
import 'area_circle/area_circle_bloc.dart';
import 'simple_interest/simple_interest_bloc.dart';  // Import for SimpleInterestBloc

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
      this._areaCircleBloc,
      this._simpleInterestBloc,
      ) : super(null);

  // Instances
  final AreaCircleBloc _areaCircleBloc;
  final SimpleInterestBloc _simpleInterestBloc;

  // Area Circle View
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

  // Simple Interest View
  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestBloc,
          child: SimpleInterestView(),  // Navigate to SimpleInterestView
        ),
      ),
    );
  }
}
