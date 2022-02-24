part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;

  const CustomBottomNavBar({this.onTap, this.selectedIndex = 0, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(0);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/ic_home' +
                                ((selectedIndex == 0) ? '.png' : '_normal.png'),
                          ),
                          fit: BoxFit.contain)),
                ),
                Text(
                  'Home',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color:
                        (selectedIndex == 0) ? mainColor : "ABABAB".toColor(),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(1);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.symmetric(horizontal: 83),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/ic_order' +
                                ((selectedIndex == 1) ? '.png' : '_normal.png'),
                          ),
                          fit: BoxFit.contain)),
                ),
                Text(
                  'Order',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color:
                        (selectedIndex == 1) ? mainColor : "ABABAB".toColor(),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (onTap != null) {
                onTap!(2);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/ic_profile' +
                                ((selectedIndex == 2) ? '.png' : '_normal.png'),
                          ),
                          fit: BoxFit.contain)),
                ),
                Text(
                  'Profile',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color:
                        (selectedIndex == 2) ? mainColor : "ABABAB".toColor(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
