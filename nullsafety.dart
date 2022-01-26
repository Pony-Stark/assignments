//  #Author : SJ

void main() {

  String? s = "hello";
  s =  null;
  for (int i = 0; i < 5; i++) {
    print(s);
  }
  
  
}


// Null Aware Operator 


void addTodo(String? todo) { 
}

List<String?>? getTodos() { 
}

int assignTodo(String todo) {
  
  int result;  
  
  if (todo=="hello") {
    result = 1;
  } else {
    result = -1;
  } 
  return result;
}

void cantConvertToNullSafe(String? todo){
  String newString = todo;
}

void convertToNullSafe(String? todo){
  if(todo==null)
    return;
  String newString = todo;
}


//The assertion operator

void convertTodo(){
  String? maybeValue = "Go to hoist the INDIAN flag";
  String value = maybeValue!;
}

String? getLastTodo(String manyTodos) {
  final components = manyTodos.split(',');
  return components.length > 1 ? components.last : null;
}

useLastTodo (){
  String last = getLastTodo("go,run,walk")!;
  String? last1 = getLastTodo("go,run,walk");

}

class Todo {
  Todo({ required this.name});
  final String name;
}

void useClassTodo() {
  //final todo1 = Todo();
  //final todo2 = Todo(name: null); 
  final todo3 = Todo(name: "example.com");
  List<Todo>? todos = [todo3];
  
}

bool hasTodos(List<Todo> ? todos){
  return todos?.isEmpty ?? false;
}
