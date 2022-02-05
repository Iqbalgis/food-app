part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: "FAFAFC".toColor(),
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Wellcome,',
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                      Text(
                        'Find Some Food',
                        style: blackFontStyle2,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.ibb.co/BqDJs7N/user.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),

            //// LIST OF FOOD

            Container(
              margin: EdgeInsets.only(bottom: defaultMargin),
              height: 282,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFoods
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                left:
                                    (e == mockFoods.first) ? defaultMargin : 0,
                                right: defaultMargin,
                              ),
                              child: FoodCard(food: e),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),

            /// LIST OF FOOD (TABS)
            Container(
              width: double.infinity,
              color: "FAFAFC".toColor(),
              child: Column(
                children: [
                  CustomTabBar(
                      selectedIndex: selectedIndex,
                      titles: const ['New Product', 'Popular', 'Recommended'],
                      onTap: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      }),
                  SizedBox(
                    height: 8,
                  ),
                  Builder(
                    builder: (_) {
                      List<Food> foods = (selectedIndex == 0)
                          ? mockFoods
                          : (selectedIndex == 1)
                              ? []
                              : [];

                      return Column(
                        children: foods
                            .map((e) => Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      defaultMargin, 0, defaultMargin, 16),
                                  child: FoodListItem(
                                      food: e, itemWidth: listItemWidth),
                                ))
                            .toList(),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
