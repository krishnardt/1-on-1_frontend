import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{}

class LoginButtonPressed extends LoginEvent{
  String email, password;

  LoginButtonPressed({this.email, this.password});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}