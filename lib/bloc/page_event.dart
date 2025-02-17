import 'package:equatable/equatable.dart';
import '../services/registration.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToStarterPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToSignUpPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToALoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToHomePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToAdminHomePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToScreensPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToAdminFoodmenuPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToAdminSettingsPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRentPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToFoodPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToProfilePage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRegristationPage extends PageEvent {
  final RegistrationData registrationData;

  const GoToRegristationPage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegistrationData registrationData;

  const GoToPreferencePage(this.registrationData);

  @override
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;

  const GoToAccountConfirmationPage(this.registrationData);

  @override
  List<Object> get props => [];
}
