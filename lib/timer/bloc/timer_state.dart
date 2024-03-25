part of 'timer_bloc.dart';

sealed class TimerState extends Equatable {
  const TimerState(this.duration);
  final int duration;

  @override
  List<Object> get props => [duration];
}

final class TimerInitial extends TimerState {
  const TimerInitial(int duration) : super(duration);

  @override
  String toString() => "TimerInitial {duration: $duration}";
}

final class TimerRunPause extends TimerState {
  const TimerRunPause(int duration) : super(duration);
  @override
  String toString() => "TimerRunPause {duration: $duration}";
}

final class TimerRunInProgress extends TimerState {
  const TimerRunInProgress(int duration) : super(0);
}

final class TimerRunComplete extends TimerState {
  const TimerRunComplete() : super(0);
}
