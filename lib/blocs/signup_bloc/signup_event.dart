import 'package:equatable/equatable.dart';

abstract class SignupEvent extends Equatable {}

class SignUpButtonPressed extends SignupEvent {

  String email, password;

  SignUpButtonPressed({this.email, this.password});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}