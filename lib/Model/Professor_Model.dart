class ProfessorDetails {
  final int id;
  final String Name;
  final String Account_id;
  final String College;

  const ProfessorDetails(
  {required this.id,
    required this.Name,
    required this.Account_id,
    required this.College});
}

class ProfessorResults{
  final int id;
  final String Account_id;
  final String Academic_Year;
  final String Semester;
  final String Course_Assessment;
  final String Faculty_Assessment;
  final String Overall;


  const ProfessorResults(
  {required this.id,
    required this.Account_id,
    required this.Academic_Year,
    required this.Semester,
    required this.Course_Assessment,
    required this.Faculty_Assessment,
    required this.Overall});
}

