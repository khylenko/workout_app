extension StringExtension on int {
  String timerFormat() {
    return toString().padLeft(2, '0');
  }

  String timerFormatMinutes() {
    return Duration(seconds: this).inMinutes.remainder(60).timerFormat();
  }

  String timerFormatSeconds() {
    // ignore: unnecessary_this
    return this.remainder(60).timerFormat();
  }

  int toPositive() {
    return this < 0 ? 0 : this;
  }
}
