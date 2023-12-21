import 'dart:async';

void scheduleDailyReset(Function resetSteps) {
  final now = DateTime.now();
  final nextDay = DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
  final durationUntilNextDay = nextDay.difference(now);
  Timer(durationUntilNextDay, () => resetSteps);
}

void resetSteps(Function updateSteps) {
  updateSteps('0', DateTime.now());
  scheduleDailyReset(resetSteps);
}