import 'package:flutter_bloc/flutter_bloc.dart';

class StudentCubit extends Cubit<String>{
   
  StudentCubit(): super("no student added yet ");

  void addStd(name,age,address){
    emit("name:$name age: $age address:$address");
  }

  void delStd(){
    emit(" ");
  }

}