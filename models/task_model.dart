class TaskModel{
  int? idTask;
  String? nameTask;
  String? dscTask;
  bool? sttTask;

  TaskModel({this.idTask,this.nameTask,this.dscTask,this.sttTask});
  factory TaskModel.fromMap(Map<String,dynamic> map){
    return TaskModel(
      idTask: map['idTask'],
      nameTask: map['nameTask'],
      dscTask: map['dscTask'],
      sttTask: map['sttTask'],
    );
  }

}