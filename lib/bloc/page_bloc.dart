import 'package:bloc/bloc.dart';
import 'package:myapp/bloc/page_event.dart';
import 'package:myapp/bloc/page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnInitialPage()) {
    print("did you enter the page bloc?");

    on<GoToStarterPage>((event, emit) => emit(OnStarterPage()));
    on<GoToLoginPage>((event, emit) => emit(OnLoginPage()));
    on<GoToALoginPage>((event, emit) => emit(OnALoginPage()));
    on<GoToSignUpPage>((event, emit) => emit(OnSignUpPage()));
    on<GoToHomePage>((event, emit) => emit(OnHomePage()));
    on<GoToRentPage>((event, emit) => emit(OnRentPage()));
    on<GoToFoodPage>((event, emit) => emit(OnFoodPage()));
    on<GoToProfilePage>((event, emit) => emit(OnProfilePage()));
    on<GoToAdminHomePage>((event, emit) => emit(OnAHomePage()));
    on<GoToScreensPage>((event, emit) => emit(OnScreensPage()));
    on<GoToAdminFoodmenuPage>((event, emit) => emit(OnAdminFoodMenuPage()));
    on<GoToAdminSettingsPage>((event, emit) => emit(OnAdminSettingsPage()));

    on<GoToPreferencePage>(
        (event, emit) => emit(OnPreferencePage(event.registrationData)));
    on<GoToRegristationPage>(
        (event, emit) => emit(OnRegristrationPage(event.registrationData)));
    on<GoToAccountConfirmationPage>((event, emit) =>
        emit(OnAccountConfirmationPage(event.registrationData)));
  }
}
