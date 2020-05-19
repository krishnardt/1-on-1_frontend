import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class LoginState extends Equatable{}

class LoginInitialState extends LoginState{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}


class LoginLoadingState extends LoginState {
  @override
  // TODO: implement props
  List<Object> get props => null;
}

class LoginSuccessState extends LoginState{
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}

class LoginFailState extends LoginState {

  String message;

  LoginFailState(@required this.message);

  @override
  // TODO: implement props
  List<Object> get props => null;
}