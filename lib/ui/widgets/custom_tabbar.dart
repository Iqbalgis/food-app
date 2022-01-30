part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  const CustomTabBar(
      {required this.selectedIndex,
      required this.titles,
      required this.onTap,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Row(
            children: titles
                .map((e) => Padding(
                    padding: EdgeInsets.only(left: defaultMargin),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (onTap != null) {
                              onTap(titles.indexOf(e));
                            }
                          },
                          child: Text(
                            e,
                            style: (titles.indexOf(e) == selectedIndex)
                                ? blackFontStyle3.copyWith(
                                    fontWeight: FontWeight.w500)
                                : greyFontStyle,
                          ),
                        ),
                        Container(
                          height: 3,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1.5),
                            color: (titles.indexOf(e) == selectedIndex)
                                ? "020202".toColor()
                                : Colors.transparent,
                          ),
                        )
                      ],
                    )))
                .toList(),
          )
        ],
      ),
    );
  }
}
