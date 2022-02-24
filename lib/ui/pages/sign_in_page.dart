part of 'pages.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Welcome Back!",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Email Address",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintStyle: greyFontStyle,
                  hintText: "Type your email address",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "Password",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintStyle: greyFontStyle,
                  hintText: "Type your password",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(top: 24, bottom: 12),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: isLoading
                  ? loadingIndicator
                  : ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });

                        await context.read<UserCubit>().signIn(
                            emailController.text, passwordController.text);
                        UserState state = context.read<UserCubit>().state;

                        if (state is UserLoaded) {
                          context.read<FoodCubit>().getFoods();
                          Get.to(MainPage());
                        } else {
                          Get.snackbar("", "",
                          backgroundColor: "D9435E".toColor(),
                          icon: Icon(
                            MdiIcons.closeCircleOutline,
                            color: Colors.white,
                          ),
                          titleText: Text('Sign in failed',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),),
                          messageText: Text((state as UserLoadingFailed).message,
                          style: GoogleFonts.poppins(color: Colors.white),)
                          );
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.poppins(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
