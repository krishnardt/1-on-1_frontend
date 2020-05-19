import 'package:equatable/equatable.dart';

abstract class SignupState extends Equatable {}

class SignupInitial extends SignupState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class SignupLoading extends SignupState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class SignupSuccessful extends SignupState {


  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class SignupFailure extends SignupState {

  String message;

  SignupFailure(this.message);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}