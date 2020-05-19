import 'package:aztlan/repository/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UserRepository userRepository;

  LoginBloc({@required UserRepository userRepository}) {
    this.userRepository = userRepository;
  }

  @override
  // TODO: implement initialState
  LoginState get initialState => throw LoginInitialState();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoadingState();
      try {
        //Complete Login using email and password here fetched from repository in json format
        yield LoginSuccessState();
      } catch (e) {
        yield LoginFailState(e.toString());
      }
    }
  }
}
