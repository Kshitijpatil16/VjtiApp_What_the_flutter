class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignDate;
  final String lastDate;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignDate,
      this.lastDate, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData(
      'NT', 'Chp1', '10 Nov 2023', '', ''),
  AssignmentData(
      'Physics', 'Chp2', '11 Jan 2023', '20 Nov 2022 ', ''),
  AssignmentData('Chemistry', 'Chp3', '21 Oct 2022', '',
      ''),
  AssignmentData(
      'Mathematics', 'Chp4', '17 Dec 2022', '30 Sep 2021', ''),
];
