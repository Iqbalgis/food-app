part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  final Food? food;

  const FoodCard({this.food, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 282,
          width: 198,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(food?.picturePath ?? ''),
                fit: BoxFit.cover),
          ),
        ),
        // Positioned(
        //   bottom: 0,
        //   child: Center(
        //     child: SizedBox(
        //       width: 198,
        //       height: 80,
        //       child: Stack(
        //         children: [
        //           Positioned(
        //             child: Center(
        //               child: Container(
        //                 width: 178,
        //                 height: 58,
        //                 decoration: BoxDecoration(
        //                   color: Colors.white,
        //                   borderRadius: BorderRadius.circular(15),
        //                 ),
        //                 child: Container(
        //                   padding:
        //                       EdgeInsets.symmetric(horizontal: defaultMargin),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       Text(
        //                         food!.name.toString(),
        //                         style: blackFontStyle2,
        //                         maxLines: 1,
        //                         overflow: TextOverflow.clip,
        //                       ),
        //                       // RatingStar(rate: food.rate)
        //                       Text(
        //                         NumberFormat.currency(
        //                           symbol: 'IDR ',
        //                           decimalDigits: 0,
        //                           locale: 'id-ID',
        //                         ).format(food!.price),
        //                         style: greyFontStyle.copyWith(fontSize: 13),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //           Positioned(
        //             top: 00,
        //             right: 20,
        //             child: Container(
        //               height: 30,
        //               width: 60,
        //               decoration: BoxDecoration(
        //                 color: Colors.white,
        //                 borderRadius: BorderRadius.circular(12),
        //               ),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Container(
        //                       margin: EdgeInsets.only(right: 4),
        //                       child: Icon(MdiIcons.star,
        //                           color: mainColor, size: 18)),
        //                   Text(
        //                     food!.rate.toString(),
        //                     style: blackFontStyle2,
        //                   )
        //                 ],
        //               ),
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
