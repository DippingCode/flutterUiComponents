import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

screen({
  int backgroundColor = 0xFFFFFFFF,
  Widget leading,
  List<Widget> actions,
  Widget bottomNavigation,
  PreferredSizeWidget appBarBottom,
  double toolBarHeight = 120,
  double toolBarElevation = 0,
  double leadingWidth = 54,
  Widget child,
}) =>
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(backgroundColor),
        appBar: AppBar(
          toolbarHeight: toolBarHeight,
          leadingWidth: leadingWidth,
          leading: leading,
          elevation: toolBarElevation,
          backgroundColor: Color(backgroundColor),
          actions: actions,
          bottom: appBarBottom,
        ),
        body: SafeArea(child: child),
        bottomNavigationBar: bottomNavigation,
      ),
    );

roboto({
  String text = 'Seu Texto',
  int maxLines = 1,
  TextAlign align = TextAlign.left,
  FontWeight weight = FontWeight.normal,
  double size = 16,
  double height = 1.6,
  double letterSpacing = -1,
  double wordSpacing = 2,
  int color = 0xFFFFFFFF,
}) =>
    Text(
      text,
      maxLines: maxLines,
      textAlign: align,
      style: GoogleFonts.roboto(
        fontSize: size,
        fontWeight: weight,
        height: height,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        color: Color(color),
      ),
    );

gradientRoundedButton({
  String text = 'Hire Me',
  double textSize = 22,
  double width = 180,
  double height = 50,
  double marginLeft = 0,
  double marginTop = 0,
  double marginRight = 0,
  double marginBottom = 0,
  double elevation = 10,
  double padding = 0,
  double externRadius = 30,
  double internRadius = 40,
  List<Color> colors,
  Function onPressed,
}) => Container(
  width: width,
  height: height,
  margin: EdgeInsets.fromLTRB(
    marginLeft, 
    marginTop, 
    marginRight, 
    marginBottom,
  ),
  child: RaisedButton(
    onPressed: onPressed,
    elevation: elevation,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(externRadius),
    ),
    padding: EdgeInsets.all(0),
    child: Ink(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topRight,
          end: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.circular(internRadius),
      ),
      child: Container(
        alignment: Alignment.center,
        child: roboto(
          text: text,
          size: textSize,
          align: TextAlign.center,
          height: 1,
        ),
      ),
    ),
  ),
);
