part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  final Transaction? transaction;

  const PaymentPage({this.transaction, Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: 'FAFAFC'.toColor(),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title:
            Text('Item Ordered', style: blackFontStyle1.copyWith(fontSize: 20)),
      ),
      body: Container(
        color: 'FAFAFC'.toColor(),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(
                    defaultMargin, defaultMargin, defaultMargin, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: defaultMargin, right: defaultMargin),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                margin: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(widget
                                            .transaction!.food!.picturePath
                                            .toString()),
                                        fit: BoxFit.cover)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 238,
                                    // 4 * defaultMargin -
                                    // 60 -
                                    // 12 -
                                    // 70,
                                    child: Text(
                                      widget.transaction!.food!.name.toString(),
                                      style: blackFontStyle2,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                    ),
                                  ),
                                  Text(
                                    NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: 'IDR ',
                                      decimalDigits: 0,
                                    ).format(widget.transaction!.food!.price),
                                    style: greyFontStyle.copyWith(fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            '${widget.transaction!.quantity} item(s)',
                            style: greyFontStyle.copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(
                    defaultMargin, defaultMargin, defaultMargin, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: defaultMargin),
                      child: Text(
                        'Details Transaction',
                        style: blackFontStyle1.copyWith(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: defaultMargin, right: defaultMargin),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    widget.transaction!.food!.name.toString(),
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: 'IDR ',
                                      decimalDigits: 0,
                                    ).format(widget.transaction!.total),
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'Driver',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: 'IDR ',
                                      decimalDigits: 0,
                                    ).format(50000),
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'Tax 10%',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: 'IDR ',
                                      decimalDigits: 0,
                                    ).format(widget.transaction!.total! * 0.1),
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: defaultMargin * 2,
                            child: Flex(
                              direction: Axis.vertical,
                              children: [
                                Expanded(child: Container()),
                                const MySeparator(color: Colors.grey),
                                Container(height: 20),
                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'Total',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    NumberFormat.currency(
                                      locale: 'id-ID',
                                      symbol: 'IDR ',
                                      decimalDigits: 0,
                                    ).format(widget.transaction!.total! * 1.1 +
                                        50000),
                                    style: blackFontStyle3.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: '1ABC9C'.toColor()),
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(
                    defaultMargin, defaultMargin, defaultMargin, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, left: defaultMargin),
                      child: Text(
                        'Deliver to :',
                        style: blackFontStyle1.copyWith(fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: defaultMargin, right: defaultMargin),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'Name',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    widget.transaction!.user!.name,
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'Phone No.',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    widget.transaction!.user!.phoneNumber,
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'Address',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    widget.transaction!.user!.address,
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      72 -
                                      5,
                                  child: Text(
                                    'city',
                                    style: greyFontStyle,
                                  )),
                              SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      defaultMargin -
                                      5,
                                  child: Text(
                                    widget.transaction!.user!.city,
                                    style: blackFontStyle3,
                                    textAlign: TextAlign.right,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: (isLoading)
                    ? Center(
                        child: loadingIndicator,
                      )
                    : Container(
                        width: double.infinity,
                        height: 45,
                        margin: EdgeInsets.only(top: 16, bottom: 12),
                        padding:
                            EdgeInsets.symmetric(horizontal: defaultMargin * 2),
                        child: ElevatedButton(
                          onPressed: () async {
                            setState(() {
                              isLoading = true;
                            });
                            bool result = await context
                                .read<TransactionCubit>()
                                .submitTransaction(widget.transaction!.copyWith(
                                  dateTime: DateTime.now(),
                                  total: (widget.transaction!.total! * 1.1)
                                          .toInt() +
                                      50000,
                                ));

                            if (result == true) {
                              Get.to(SuccessOrderPage());
                            } else {
                              setState(() {
                                isLoading = false;
                              });
                              Get.snackbar(
                                "",
                                "",
                                backgroundColor: "D9435E".toColor(),
                                icon: Icon(
                                  MdiIcons.closeCircleOutline,
                                  color: Colors.white,
                                ),
                                titleText: Text('Transaction Failed',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    )),
                                messageText: Text(
                                  "Please Try Again Later.",
                                  style:
                                      GoogleFonts.poppins(color: Colors.white),
                                ),
                              );
                            }
                          },
                          child: Text(
                            'Checkout Now',
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: Colors.white,
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
        ),
      ),
    );
  }
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
