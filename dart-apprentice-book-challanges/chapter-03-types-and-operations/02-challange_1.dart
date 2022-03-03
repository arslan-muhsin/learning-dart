// Challange #01 - Teacher's Grading
// Attendance -> 20%
// Homework -> 30%
// Exam -> 50%

void main(List<String> args) {
  const attendancePoint = 90;
  const attendanceWorth = 0.2;

  const homeworkPoint = 80;
  const homeworkWorth = 0.3;

  const examPoint = 94;
  const examWorth = 0.5;

  var grade = ((attendancePoint * attendanceWorth) +
          (homeworkPoint * homeworkWorth) +
          (examPoint * examWorth))
      .toInt();

  print(grade);
}
