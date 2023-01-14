class DataSheet {
  final int date;
  final String monthName;
  final String subjectName;
  final String dayName;
  final String time;

  DataSheet(
      this.date, this.monthName, this.subjectName, this.dayName, this.time);
}

List<DataSheet> dateSheet = [
  DataSheet(1, 'feb', 'Maths', 'Monday', '9:00am'),
  DataSheet(2, 'feb', 'ECAD', 'Saturday', '10:00am'),
  DataSheet(3, 'feb', 'DCC', 'Monday', '9:30am'),
  DataSheet(4, 'feb', 'NT', 'Wednesday', '11:00am'),
  DataSheet(5, 'feb', 'EVS', 'Friday', '9:00am'),
  DataSheet(6, 'feb', 'Python', 'Monday', '11:00am'),


];
