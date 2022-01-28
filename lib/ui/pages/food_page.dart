part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
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
            FoodCard(),

            /// LIST OF FOOD (TABS)
          ],
        )
      ],
    );
  }
}
