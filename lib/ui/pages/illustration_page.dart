part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? picturePath;
  final String? buttonTitle1;
  final String? buttonTitle2;
  final void Function()? buttonTap1;
  final void Function()? buttonTap2;

  const IllustrationPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      @required this.buttonTitle1,
      this.buttonTitle2,
      @required this.buttonTap1,
      this.buttonTap2,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 150,
          margin: EdgeInsets.only(bottom: 50),
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(picturePath.toString()))),
        ),
        Text(
          title ?? 'default value',
          style: blackFontStyle3.copyWith(fontSize: 20),
        ),
        Text(
          subtitle ?? 'default value',
          style: greyFontStyle.copyWith(fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
        ),
        Container(
          margin: EdgeInsets.only(top: 30, bottom: 12),
          width: 200,
          height: 45,
          child: ElevatedButton(
            onPressed: buttonTap1,
            child: Text(
              buttonTitle1 ?? 'default value',
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        (buttonTap2 == null)
            ? SizedBox()
            : SizedBox(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  onPressed: buttonTap2,
                  child: Text(
                    buttonTitle2 ?? 'default value',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: '8D92A3'.toColor(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
      ],
    ));
  }
}
