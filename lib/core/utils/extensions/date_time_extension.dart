import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime get startOfDay {
    return DateTime(year, month, day);
  }

  DateTime get endOfDay {
    return DateTime(year, month, day, 23, 59, 59, 999);
  }

  DateTime get firstDayOfTheWeek => subtract(Duration(days: weekday - 1));

  DateTime get lastDayOfTheWeek =>
      firstDayOfTheWeek.add(const Duration(days: 6));

  DateTime get firstDayOfTheMonth => DateTime(year, month, 1);

  TimeOfDay get time => TimeOfDay(hour: hour, minute: minute);

  bool get isToday {
    final now = DateTime.now();
    return day == now.day && month == now.month && year == now.year;
  }

  bool isSameDay(DateTime dateTime) {
    return year == dateTime.year &&
        month == dateTime.month &&
        day == dateTime.day;
  }

  String get textMonth {
    return format('MMMM')[0].toUpperCase() + format('MMMM').substring(1);
  }

  String format(String format, {String locale = 'it'}) {
    DateFormat formatter = DateFormat(format, locale);
    // capitalize the first letter
    return formatter
        .format(this)
        .replaceFirst(
          formatter.format(this)[0],
          formatter.format(this)[0].toUpperCase(),
        );
  }

  int get daysInMonth {
    return DateTime(year, month + 1, 0).day;
  }

  int get weeksCount {
    return ((daysInMonth + firstDayOfTheMonth.weekday - 1) / 7).ceil();
  }

  DateTime addMonths(int months) {
    return DateTime(year, month + months, day);
  }

  DateTime subtractMonths(int months) {
    return DateTime(year, month - months, day);
  }

  DateTime get lastDayOfTheMonth {
    return DateTime(year, month + 1, 0);
  }

  /// Includes the start and end date
  bool isBetween(DateTime start, DateTime end) {
    return isAfter(start) && isBefore(end) ||
        isSameDay(start) ||
        isSameDay(end);
  }

  /// returns the date in UTC timezone, with microseconds set to 0
  String toUtcIso8601String() {
    return DateTime(
      year,
      month,
      day,
      hour,
      minute,
      second,
      0,
      0,
    ).toUtc().toIso8601String();
  }

  bool isSameMonth(DateTime dateTime) {
    return year == dateTime.year && month == dateTime.month;
  }

  bool isSameWeek(DateTime dateTime) {
    final firstDayOfTheWeek = dateTime.firstDayOfTheWeek;
    final lastDayOfTheWeek = dateTime.lastDayOfTheWeek;
    return isBetween(firstDayOfTheWeek, lastDayOfTheWeek);
  }
}
