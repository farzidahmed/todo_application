class Todo {
  String id;
  String text;
  bool isDone;

  Todo({
    required this.id,
    required this.text,
     this.isDone=false});
  static List<Todo> todolist(){
    return [
      Todo(id: "01", text: "Flutter",isDone: true),
      Todo(id: "01", text: "java",isDone: true),
      Todo(id: "01", text: "python",isDone: true),
      Todo(id: "01", text: "c++",isDone: true),
      Todo(id: "01", text: "c#",),
      Todo(id: "01", text: "c mother of programming",isDone: true),
      Todo(id: "01", text: "good morning",),
    ];
  }
}