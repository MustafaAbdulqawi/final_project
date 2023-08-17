import 'package:final_project/presentation/screens/home_layout.dart';
import 'package:flutter/material.dart';
import '../screens/call.dart';
import '../screens/call_ringing.dart';
import '../screens/chat_details.dart';
import '../screens/explore_menu_with_filter.dart';
import '../screens/explore_menue.dart';
import '../screens/explore_restaurant.dart';
import '../screens/explore_restaurant_with_filter.dart';
import '../screens/filter.dart';
import '../screens/finish_order.dart';
import '../screens/home.dart';
import '../screens/set_location.dart';
import '../screens/sign_In.dart';
import '../screens/sign_up.dart';
import '../screens/message.dart';
import '../screens/notification.dart';
import '../screens/onboarding_screen.dart';
import '../screens/order_details.dart';
import '../screens/password.dart';
import '../screens/payment.dart';
import '../screens/rate_food.dart';
import '../screens/rate_resaurant.dart';
import '../screens/sign_up_process.dart';
import '../screens/sign_up_success_notification.dart';
import '../screens/success_notification.dart';
import '../screens/upload_preview.dart';
import '../screens/uplooad_photo.dart';
import '../screens/verification_code.dart';
import '../screens/via_method.dart';
import '../screens/voucher_promo.dart';
import 'package:final_project/core/screens.dart' as screens;

class AppRouter {
  late Widget startScreen;

  Route? onGenerateRoute(RouteSettings settings) {
    startScreen = const OnBoardingScreen();
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case screens.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case screens.signUp:
        return MaterialPageRoute(builder: (_) => const SignUp());
      case screens.signIn:
        return MaterialPageRoute(builder: (_) => const SignIn());
      case screens.signUpProcess:
        return MaterialPageRoute(builder: (_) => const SignUpProcess());
      case screens.uploadPhoto:
        return MaterialPageRoute(builder: (_) => const UploadPhoto());
      case screens.uploadPreview:
        return MaterialPageRoute(builder: (_) => const UploadPreview());
      case screens.setLocation:
        return MaterialPageRoute(builder: (_) => const SetLocation());
      case screens.signUpSuccessNotification:
        return MaterialPageRoute(
            builder: (_) => const SignUpSuccessNotification());
      case screens.verificationCode:
        return MaterialPageRoute(builder: (_) => const VerificationCode());
      case screens.viaMethod:
        return MaterialPageRoute(builder: (_) => const ViaMethod());
      case screens.password:
        return MaterialPageRoute(builder: (_) => const Password());
      case screens.successNotification:
        return MaterialPageRoute(builder: (_) => const SuccessNotification());
      case screens.home:
        return MaterialPageRoute(builder: (_) => const Home());
      case screens.exploreRestaurant:
        return MaterialPageRoute(builder: (_) => const ExploreRestaurant());
      case screens.filter:
        return MaterialPageRoute(builder: (_) => const Filter());
      case screens.exploreMenu:
        return MaterialPageRoute(builder: (_) => const ExploreMenu());
      case screens.exploreRestaurantWithFilter:
        return MaterialPageRoute(
            builder: (_) => const ExploreRestaurantWithFilter());
      case screens.exploreMenuWithFilter:
        return MaterialPageRoute(
            builder: (_) => const ExploreMenuWithFilter());
        case screens.message:
        return MaterialPageRoute(
            builder: (_) => const Message());
        case screens.chatDetails:
        return MaterialPageRoute(
            builder: (_) => const ChatDetails());
        case screens.callRinging:
        return MaterialPageRoute(
            builder: (_) => const CallRinging());
        case screens.call:
        return MaterialPageRoute(
            builder: (_) => const Call());
        case screens.finishOrder:
        return MaterialPageRoute(
            builder: (_) => const FinishOrder());
        case screens.rateFood:
        return MaterialPageRoute(
            builder: (_) => const RateFood());
        case screens.rateRestaurant:
        return MaterialPageRoute(
            builder: (_) => const RateRestaurant());
        case screens.voucherPromo:
        return MaterialPageRoute(
            builder: (_) => const VoucherPromo());
        case screens.notifications:
        return MaterialPageRoute(
            builder: (_) => const Notifications());
        case screens.orderDetails:
        return MaterialPageRoute(
            builder: (_) => const OrderDetails());
        case screens.payment:
        return MaterialPageRoute(
            builder: (_) => const Payment());
        case screens.homeLayout:
        return MaterialPageRoute(
            builder: (_) => const HomeLayout());

      default:
        return null;
    }
  }
}
