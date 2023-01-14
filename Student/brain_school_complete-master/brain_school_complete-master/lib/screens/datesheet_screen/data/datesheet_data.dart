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
  DataSheet(1, 'feb', 'ECAD', 'Monday', '10:00am'),
  DataSheet(1, 'feb', 'DCC', 'Monday', '9:30am'),
  DataSheet(1, 'feb', 'NT', 'Monday', '11:00am'),
  DataSheet(1, 'feb', 'EVS', 'Monday', '9:00am'),
  DataSheet(1, 'feb', 'Python', 'Monday', '11:00am'),

  DataSheet(2, 'feb', 'EVS', 'Tuesday', '9:00am'),
  DataSheet(2, 'feb', 'ECAD', 'Tuesday', '10:00am'),
  DataSheet(2, 'feb', 'Maths', 'Tuesday', '9:30am'),
  DataSheet(2, 'feb', 'NT', 'Tuesday', '11:00am'),
  DataSheet(2, 'feb', 'LAb', 'Tuesday', '9:00am'),
  DataSheet(2, 'feb', 'Python', 'Tuesday', '11:00am'),

  DataSheet(3, 'feb', 'Lab', 'Wednesday', '9:00am'),
  DataSheet(3, 'feb', 'ECAD', 'Wednesday', '10:00am'),
  DataSheet(3, 'feb', 'DCC', 'Wednesday', '9:30am'),
  DataSheet(3, 'feb', 'Lab', 'Wednesday', '11:00am'),
  DataSheet(3, 'feb', 'EVS', 'Wednesday', '9:00am'),
  DataSheet(3, 'feb', 'Python', 'Wednesday', '11:00am'),

  DataSheet(4, 'feb', 'Maths', 'Thursday', '9:00am'),
  DataSheet(4, 'feb', 'DCC', 'Thursday', '10:00am'),
  DataSheet(4, 'feb', 'DCC', 'Thursday', '9:30am'),
  DataSheet(4, 'feb', 'NT', 'Thursday', '11:00am'),
  DataSheet(4, 'feb', 'ECAD', 'Thursday', '9:00am'),
  DataSheet(4, 'feb', 'Python', 'Thursday', '11:00am'),

  DataSheet(5, 'feb', 'Maths', 'Friday', '9:00am'),
  DataSheet(5, 'feb', 'ECAD', 'Friday', '10:00am'),
  DataSheet(5, 'feb', 'DCC', 'Friday', '9:30am'),
  DataSheet(5, 'feb', 'NT', 'Friday', '11:00am'),
  DataSheet(5, 'feb', 'Lab', 'Friday', '9:00am'),
  DataSheet(5, 'feb', 'Lab', 'Friday', '11:00am'),
];
