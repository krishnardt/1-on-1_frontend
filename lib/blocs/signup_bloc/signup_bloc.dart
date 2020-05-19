import 'package:aztlan/repository/user_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class UserRegBloc extends Bloc<SignupEvent, SignupState> {
  UserRepository userRepository;

  UserRegBloc({@required UserRepository userRepository}) {
    this.userRepository = userRepository;
  }

  @override
  // TODO: implement initialState
  SignupState get initialState => SignupInitial();

  @override
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is SignUpButtonPressed) {
      yield SignupLoading();
      try {
        // complete the sign up over here using json formatted response from user repository
        yield SignupSuccessful();
      } catch (e) {
        yield SignupFailure(e.toString());
      }
    }
  }
}
