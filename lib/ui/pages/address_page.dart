part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController houseNumController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Phone number",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  hintStyle: greyFontStyle,
                  hintText: "Type your phone number",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 6),
              child: Text(
                "Address",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  hintStyle: greyFontStyle,
                  hintText: "Type your address",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "House No.",
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: TextField(
                controller: houseNumController,
                decoration: InputDecoration(
                  hintStyle: greyFontStyle,
                  hintText: "Type your house no",
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(defaultMargin, 16, defaultMargin, 6),
              child: Text(
                "City",
                style: blackFontStyle2,
              ),
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: DropdownButton(
                  isExpanded: true,
                  underline: SizedBox(),
                  items: [
                    DropdownMenuItem(
                        child: Text(
                      'Pekalongan',
                      style: blackFontStyle3,
                    )),
                    DropdownMenuItem(
                        child: Text(
                      'Batang',
                      style: blackFontStyle3,
                    )),
                    DropdownMenuItem(
                        child: Text(
                      'Pemalang',
                      style: blackFontStyle3,
                    ))
                  ],
                  onChanged: null,
                )),
            Container(
              width: double.infinity,
              height: 45,
              margin:
                  EdgeInsets.only(top: defaultMargin, bottom: defaultMargin),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Daftar Sekarang',
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
          ],
        ),
      ),
    );
  }
}
