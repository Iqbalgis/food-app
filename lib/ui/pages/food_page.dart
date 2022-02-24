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
                                (context.read<UserCubit>().state as UserLoaded)
                                    .user
                                    .picturePath),
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
              child: BlocBuilder<FoodCubit, FoodState>(
                builder: (_, state) => (state is FoodLoaded)
                    ? ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: state.foods
                                .map((e) => Padding(
                                      padding: EdgeInsets.only(
                                        left: (e == mockFoods.first)
                                            ? defaultMargin
                                            : 0,
                                        right: defaultMargin,
                                      ),
                                      child: GestureDetector(
                                          onTap: () {
                                            Get.to(FoodDetailsPage(
                                                onBackButtonPressed: () {
                                                  Get.back();
                                                },
                                                transaction: Transaction(
                                                  food: (context.read()).foods,
                                                  user: (context
                                                          .read<UserCubit>()
                                                          .state as UserLoaded)
                                                      .user,
                                                )));
                                          },
                                          child: FoodCard(food: e)),
                                    ))
                                .toList(),
                          )
                        ],
                      )
                    : Center(child: loadingIndicator),
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
                  BlocBuilder<FoodCubit, FoodState>(
                    builder: (_, state) {
                      if (state is FoodLoaded) {
                        List<Food> foods = state.foods
                            .where(
                              (element) =>
                                  element.types.contains((selectedIndex == 0)
                                      ? FoodType.newFood
                                      : (selectedIndex == 1)
                                          ? FoodType.popular
                                          : FoodType.recommended),
                            )
                            .toList();

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
                      } else {
                        return Center(
                          child: loadingIndicator,
                        );
                      }
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
