class Task {
  String name;
  bool isDone;

  Task({this.name, this.isDone});

  void toggleDone() {
    this.isDone = !this.isDone;
  }
}
