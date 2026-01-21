class Task {
  String name;
  String description;
  String deadline;
  bool completed;

  Task({
    required this.name,
    required this.description,
    required this.deadline,
    this.completed = false,
  });
}
