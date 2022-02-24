part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: IllustrationPage(
          title: "You've Made Order",
          subtitle: "just stay at home while we are\npreparing your best food",
          picturePath: 'assets/bike.png',
          buttonTitle1: 'Order Other Food',
          buttonTap1: () {
            Get.to(MainPage());
          },
          buttonTap2: () {
            Get.offAll(MainPage(
              initialPage: 1,
            ));
          },
          buttonTitle2: 'View My Order',
        ));
  }
}
