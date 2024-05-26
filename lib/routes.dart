import 'package:cardi_care/views/SignIn/signas_login_screen.dart';
import 'package:cardi_care/views/SignIn/signin_keluarga_screen.dart';
import 'package:cardi_care/views/SignIn/signin_pasien_screen.dart';
import 'package:cardi_care/views/home_wrapper/main_wrapper_screen.dart';
import 'package:cardi_care/views/onboarding_screen.dart';
import 'package:cardi_care/views/signas_screen.dart';
import 'package:cardi_care/views/signup_keluarga_screen.dart';
import 'package:cardi_care/views/signup_pasien_screen.dart';
import 'package:cardi_care/views/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static String splash = '/';
  static String onboarding = '/onboarding';
  static String signAs = '/sign-as';
  static String signinAs = '/signin-as';
  static String signupPasien = '/signup-pasien';
  static String signupKeluarga = '/signup-keluarga';
  static String home = '/home';
  static String profile = '/profile';
  static String record = '/record';
  static String mainWrapper = '/main-wrapper';
  static String signinPasien = '/signin_pasien';
  static String signinKeluarga = '/signin_keluarga';

  static List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: onboarding,
      page: () => const OnboardingScreen(),
    ),
    GetPage(
      name: signAs,
      page: () => const SignasScreen(),
    ),
    GetPage(
      name: signinAs,
      page: () => const SignasLoginScreen(),
    ),
    GetPage(
      name: signupPasien,
      page: () => const SignupPasienScreen(),
    ),
    GetPage(
      name: signupKeluarga,
      page: () => const SignupKeluargaScreen(),
    ),
    GetPage(
      name: mainWrapper,
      page: () => MainWrapperScreen(),
    ),
    GetPage(
      name: signinPasien,
      page: () => const SigninPasienScreen(),
    ),
    GetPage(
      name: signupKeluarga,
      page: () => const SigninKeluargaScreen(),
    ),
  ];
}
