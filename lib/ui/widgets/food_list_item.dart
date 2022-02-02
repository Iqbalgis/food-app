part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  final Food food;
  final double itemWidth;

  const FoodListItem({required this.food, required this.itemWidth, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(right: 12, left: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(food.picturePath), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: itemWidth - 194,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.name,
                  style: blackFontStyle2,
                  maxLines: 1,
                  overflow: TextOverflow.clip,
                ),
                Text(
                  NumberFormat.currency(
                    symbol: 'IDR ',
                    decimalDigits: 0,
                    locale: 'id-ID',
                  ).format(food.price),
                  style: greyFontStyle.copyWith(fontSize: 13),
                ),
              ],
            ),
          ),
          RatingStar(rate: food.rate),
        ],
      ),
    );
  }
}
