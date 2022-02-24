part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function? onBackButtonPressed;
  final Transaction transaction;

  const FoodDetailsPage(
      {this.onBackButtonPressed, required this.transaction, Key? key})
      : super(key: key);

  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    defaultMargin, defaultMargin * 2, defaultMargin, 0),
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(
                            widget.transaction.food!.picturePath.toString()),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                child: Container(
                  height: 120,
                  margin:
                      EdgeInsets.only(left: defaultMargin, top: defaultMargin),
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        if (widget.onBackButtonPressed != null) {
                          widget.onBackButtonPressed!();
                        }
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset('assets/back_arrow_white.png'),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 42,
                  left: defaultMargin * 2,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width - 134, // 32+102,
                    child: Text(
                      widget.transaction.food?.name ?? '',
                      style: whiteFontStyle1,
                    ),
                  )),
              Positioned(
                bottom: defaultMargin,
                left: defaultMargin * 2,
                child: RatingStar(rate: widget.transaction.food!.rate),
              ),
              Positioned(
                bottom: defaultMargin,
                right: defaultMargin * 2,
                child: Text(
                  NumberFormat.currency(
                    symbol: 'IDR ',
                    decimalDigits: 0,
                    locale: 'id-ID',
                  ).format(widget.transaction.food!.price),
                  style: whiteFontStyle2,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(top: 420),
              child: Column(
                children: <Widget>[
                  Container(
                    color: 'FAFAFC'.toColor(),
                    height: 100,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      height: 80,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: defaultMargin, right: defaultMargin),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 15,
                            color: Colors.black12,
                            // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Total price',
                                style: greyFontStyle.copyWith(fontSize: 13),
                              ),
                              Text(
                                NumberFormat.currency(
                                  locale: 'id-ID',
                                  symbol: 'IDR ',
                                  decimalDigits: 0,
                                ).format(quantity *
                                    widget.transaction.food!.price!.toDouble()),
                                style: blackFontStyle2.copyWith(fontSize: 18),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = max(1, quantity - 1);
                                  });
                                },
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/btn_min.png'))),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: Text(
                                  quantity.toString(),
                                  textAlign: TextAlign.center,
                                  style: blackFontStyle2,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = min(999, quantity + 1);
                                  });
                                },
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(width: 1),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/btn_add.png'))),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: 'FAFAFC'.toColor(),
                    width: double.infinity,
                    margin: EdgeInsets.fromLTRB(
                        defaultMargin, 0, defaultMargin, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              defaultMargin, defaultMargin, defaultMargin, 0),
                          child: Text(
                            'Deskripsi : ',
                            style: blackFontStyle2,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              defaultMargin, 10, defaultMargin, 0),
                          child: Text(
                            widget.transaction.food?.description ?? '',
                            style: greyFontStyle,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              defaultMargin, defaultMargin, defaultMargin, 0),
                          child: Text(
                            'Ingredients : ',
                            style: blackFontStyle2,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              defaultMargin, 12, defaultMargin, 51),
                          child: Text(
                            widget.transaction.food?.ingredients ?? '',
                            style: greyFontStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(top: 16, bottom: 12),
              padding: EdgeInsets.symmetric(horizontal: defaultMargin * 2),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(PaymentPage(
                    transaction: widget.transaction.copyWith(
                        quantity: quantity,
                        total:
                            quantity * widget.transaction.food!.price!.toInt()),
                  ));
                },
                child: Text(
                  'Order Now',
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
          )
        ],
      ),
    );
  }
}

class $ {}
