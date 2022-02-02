part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  final Transaction transaction;

  const PaymentPage({required this.transaction, Key? key}) : super(key: key);

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
          title: Text('Item Ordered',
              style: blackFontStyle1.copyWith(fontSize: 20)),
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
                                          image: NetworkImage(
                                              transaction.food.picturePath),
                                          fit: BoxFit.cover)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          238,
                                      // 4 * defaultMargin -
                                      // 60 -
                                      // 12 -
                                      // 70,
                                      child: Text(
                                        transaction.food.name,
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
                                      ).format(transaction.food.price),
                                      style:
                                          greyFontStyle.copyWith(fontSize: 13),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Text(
                              '${transaction.quantity} item(s)',
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      transaction.food.name,
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'IDR ',
                                        decimalDigits: 0,
                                      ).format(transaction.quantity *
                                          transaction.food.price),
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'Driver',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'Tax 10%',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'IDR ',
                                        decimalDigits: 0,
                                      ).format(transaction.quantity *
                                          transaction.food.price *
                                          0.1),
                                      style: blackFontStyle3,
                                      textAlign: TextAlign.right,
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: defaultMargin * 2,
                              child: FDottedLine(
                                color: greyColor,
                                width: double.infinity,
                                strokeWidth: 2.0,
                                dottedLength: 10.0,
                                space: 2.0,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'Total',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      NumberFormat.currency(
                                        locale: 'id-ID',
                                        symbol: 'IDR ',
                                        decimalDigits: 0,
                                      ).format(transaction.food.price *
                                              transaction.quantity *
                                              1.1 +
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'Name',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      transaction.user.name,
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'Phone No.',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      transaction.user.phoneNumber,
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'Address',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      transaction.user.address,
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
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            72 -
                                            5,
                                    child: Text(
                                      'city',
                                      style: greyFontStyle,
                                    )),
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            defaultMargin -
                                            5,
                                    child: Text(
                                      transaction.user.city,
                                      style: blackFontStyle3,
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
              ],
            ),
          ),
        ));
  }
}
