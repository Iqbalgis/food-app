part of 'widgets.dart';

class RatingStar extends StatelessWidget {
  final double rate;
  const RatingStar({required this.rate, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberOfStars = rate.round();
    return Row(
      children: List<Widget>.generate(
              5,
              (index) => Icon(
                    (index < numberOfStars)
                        ? MdiIcons.star
                        : MdiIcons.starOutline,
                    size: 16,
                    color: mainColor,
                  )) +
          [
            SizedBox(
              width: 4,
            ),
            Text(
              rate.toString(),
              style: greyFontStyle.copyWith(fontSize: 12),
            )
          ],
    );
  }
}
