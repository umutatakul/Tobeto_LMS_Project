import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tobeto_lms_project/screens/calendar_screen.dart';
import 'package:tobeto_lms_project/screens/home_screen.dart';
import 'package:tobeto_lms_project/screens/profile_screen.dart';
import 'package:tobeto_lms_project/screens/review_screen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    //TODO Seçili ikon rengini hangdle et

    int _selectedIndex = 0;

    final primaryColor = Theme.of(context).primaryColor;
    final secondaryColor = Theme.of(context).colorScheme.onBackground;
    final accentColor = const Color(0xffffffff);
    final backgroundColor = Theme.of(context).colorScheme.inverseSurface;

    return BottomAppBar(
      color: Colors.transparent.withOpacity(0),
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height + 6),
            painter: BottomNavCurvePainter(backgroundColor: backgroundColor),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
                // Home butonu
                backgroundColor: primaryColor,
                elevation: 0.1,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ));
                },
                child: const Icon(Icons.home_outlined)),
          ),
          Container(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Review Screen",
                  icon: Icons.view_list,
                  selected: false,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ReviewScreen()));
                  },
                  defaultColor: primaryColor,
                  selectedColor: secondaryColor,
                ),
                NavBarIcon(
                  text: "Profile",
                  icon: Icons.person,
                  selected: false,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileScreen()));
                  },
                  defaultColor: primaryColor,
                  selectedColor: secondaryColor,
                ),
                const SizedBox(width: 56),
                //Haritalar Kısmı
                NavBarIcon(
                    text: "Adress",
                    icon: FontAwesomeIcons.locationArrow,
                    selected: false,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text("ENOCTA OFİS"),
                          content: const Text(
                              "Adres: Kavacık, Rüzgarlıbahçe Mah. Çampınarı Sok. No:4 Smart Plaza B Blok Kat:3 34805, Beykoz/İstanbul"),
                          actions: [
                            // IconButton(
                            //     onPressed: () => Navigator.of(context).pop(),
                            //     icon: Icon(Icons.close)),
                            IconButton(
                                onPressed: () {
                                  //TODO Key ekleyip harita yapımına devam et
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //   builder: (context) => const MapScreen(),
                                  // ));
                                },
                                icon: Icon(
                                  FontAwesomeIcons.locationDot,
                                  color: Colors.deepOrangeAccent.shade200,
                                  size: 40,
                                )),
                          ],
                        ),
                      );
                    },
                    defaultColor: primaryColor,
                    selectedColor: secondaryColor),
                NavBarIcon(
                  text: "Calendar",
                  icon: Icons.date_range,
                  selected: false,
                  onPressed: () {
                    return Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CalendarScreen()));
                  },
                  selectedColor: secondaryColor,
                  defaultColor: primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter(
      {this.backgroundColor = Colors.white, this.insetRadius = 38});

  Color backgroundColor;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;
    path.quadraticBezierTo(size.width * 0.20, 0,
        insetCurveBeginnningX - transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(
        insetCurveBeginnningX, 0, insetCurveBeginnningX, insetRadius / 2);

    path.arcToPoint(Offset(insetCurveEndX, insetRadius / 2),
        radius: const Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(
        insetCurveEndX, 0, insetCurveEndX + transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color(0xffFF8527),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
