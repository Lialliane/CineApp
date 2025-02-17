import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class dateCubit extends Cubit<List<dynamic>> {
  final date = Date();
  BuildContext context;
  dateCubit({required this.context}) : super([]);

  void getDates() => emit(date._getDates(context: context));
}

class Date {
  _getDates({required BuildContext context}) {
    final Map<int, String> weekDay = {
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat',
      7: 'Sun'
    };
    final Map<int, String> month = {
      1: 'Jan',
      2: 'Feb',
      3: 'Mar',
      4: 'Apr',
      5: 'May',
      6: 'Jun',
      7: 'Jul',
      8: 'Aug',
      9: 'Sep',
      10: 'Oct',
      11: 'Nov',
      12: 'Ded'
    };
    DateTime currentDate = DateTime.now();
    List dates = [];
    List datesFormatted = [];
    datesFormatted.length = 7;
    dates.length = 7;
    for (int i = 0; i < 7; i++) {
      dates[i] = currentDate.add(Duration(days: i));
    }
    for (int i = 0; i < 7; i++) {
      datesFormatted[i] =
          "${weekDay[dates[i].weekday].toString()}, ${dates[i].day.toString()} ${month[dates[i].month].toString()}";
    }
    return datesFormatted;
  }
}
