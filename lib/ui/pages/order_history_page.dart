part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(builder: (_, state) {
      if (state is TransactionLoaded) {
        if (state.transactions.length == 0) {
          return IllustrationPage(
            title: 'Ouch! Hungry',
            subtitle: 'Seem you like have not\nordered any food yet',
            picturePath: 'assets/love_burger.png',
            buttonTitle1: 'Find food',
            buttonTap1: () {},
          );
        } else {
          double listItemWidth =
              MediaQuery.of(context).size.width - 2 * defaultMargin;

          return ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your Orders',
                          style: blackFontStyle1,
                        ),
                        Text(
                          'Wait for the best meal',
                          style: greyFontStyle.copyWith(
                              fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),

                  /// Body
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        CustomTabBar(
                          selectedIndex: selectedIndex,
                          titles: ['In Progress', 'Past Orders'],
                          onTap: (index) {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Builder(builder: (_) {
                          List<Transaction> transactions = (selectedIndex == 0)
                              ? state.transactions
                                  .where((element) =>
                                      element.status ==
                                          TransactionStatus.on_delivery ||
                                      element.status ==
                                          TransactionStatus.pending)
                                  .toList()
                              : state.transactions
                                  .where((element) =>
                                      element.status ==
                                          TransactionStatus.delivered ||
                                      element.status ==
                                          TransactionStatus.cancelled)
                                  .toList();
                          Column(
                            children: transactions
                                .map((e) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: defaultMargin,
                                          right: defaultMargin,
                                          bottom: 16),
                                      child: OrderListItem(
                                          transaction: e,
                                          itemWidth: listItemWidth),
                                    ))
                                .toList(),
                          );
                          return SizedBox();
                        })
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        }
      } else {
        return Center(
          child: loadingIndicator,
        );
      }
    });
  }
}
