part of 'widgets.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 282,
            width: 198,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/image.png'), fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 0,
            child: Center(
              child: Container(
                width: 198,
                height: 80,
                child: Stack(
                  children: [
                    Positioned(
                      child: Center(
                        child: Container(
                          width: 178,
                          height: 58,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            padding:
                                EdgeInsets.symmetric(horizontal: defaultMargin),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'KIMBAP',
                                  style: blackFontStyle2,
                                ),
                                // RatingStar(rate: 3.5)
                                Text(
                                  'IDR. 50.000',
                                  style: greyFontStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 00,
                      right: 20,
                      child: Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 4),
                                child: Icon(MdiIcons.star,
                                    color: mainColor, size: 16)),
                            Text(
                              '4.5',
                              style: blackFontStyle2,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),

          // Container(
          //   height: 280,
          //   width: 400,
          //   color: Colors.blue,
          //   child: Stack(
          //     children: [
          //       Positioned(
          //         bottom: 0,
          //         child: Container(
          //           height: 250,
          //           width: 400,
          //           decoration: BoxDecoration(
          //               color: Colors.pinkAccent,
          //               borderRadius: BorderRadius.only(
          //                 topRight: Radius.circular(30),
          //                 topLeft: Radius.circular(30),
          //               )),
          //         ),
          //       ),
          //       Positioned(
          //         top: 00,
          //         left: 100,
          //         child: FloatingActionButton(
          //           onPressed: () {},
          //           child: Icon(Icons.check_box),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
