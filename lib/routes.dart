import 'package:cardi_care/views/SignIn/signas_login_screen.dart';
import 'package:cardi_care/views/SignIn/signin_keluarga_screen.dart';
import 'package:cardi_care/views/SignIn/signin_pasien_screen.dart';
import 'package:cardi_care/views/UserFeature/berat_view.dart';
import 'package:cardi_care/views/UserFeature/cairan_view.dart';
import 'package:cardi_care/views/UserFeature/diet_view.dart';
import 'package:cardi_care/views/UserFeature/merokok_alkohol_view.dart';
import 'package:cardi_care/views/UserFeature/obat_view.dart';
import 'package:cardi_care/views/UserFeature/olahraga_view.dart';
import 'package:cardi_care/views/home_wrapper/main_wrapper_screen.dart';
import 'package:cardi_care/views/onboarding_screen.dart';
import 'package:cardi_care/views/signas_screen.dart';
import 'package:cardi_care/views/signup_keluarga_screen.dart';
import 'package:cardi_care/views/signup_pasien_screen.dart';
import 'package:cardi_care/views/splash_screen.dart';
import 'package:get/get.dart';
import 'package:cardi_care/views/TekaTekiSilang/tekaTekiSilangPage.dart';

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
  static String userOlahraga = '/user_olahraga';
  static String userDiet = '/user_diet';
  static String userObat = '/user_obat';
  static String userBerat = '/user_berat';
  static String userCairan = '/user_cairan';
  static String userMerokokAlkohol = '/user_merokok_alkohol';
  static String tekaTekiSilang = '/teka-teki-silang';

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
    GetPage(
      name: userOlahraga,
      page: () => const OlahragaView(),
    ),
    GetPage(
      name: userDiet,
      page: () => const DietView(),
    ),
    GetPage(
      name: userObat,
      page: () => const ObatView(),
    ),
    GetPage(
      name: userBerat,
      page: () => const BeratView(),
    ),
    GetPage(
      name: userCairan,
      page: () => const CairanView(),
    ),
    GetPage(
      name: userMerokokAlkohol,
      page: () => const MerokokAlkoholView(),
    ),
    GetPage(
      name: tekaTekiSilang,
      page: () => const TekaTekiSilangPage(),
    ),
  ];
}
