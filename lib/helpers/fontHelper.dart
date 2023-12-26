import 'package:flutter/material.dart';

enum FontSize { Title, Subtitle, Content1, Content2 }

enum FontClass { Imaginary, Quinngothic, KidZone, Riffic, Random, None }

// class FontHelper {

// }

class FontHelper extends StatefulWidget {
  String text;
  TextAlign align;
  Color color;
  FontClass fontFamily;
  FontWeight fontWeight;
  Color? shadowColor;
  Color? bgColor;
  EdgeInsets? padding;
  Offset? shadowOffset;
  double blurRadius;
  double? sizeText;
  TextOverflow overflow;
  int? maxLines;
  double letterSpacing;
  TextDecoration? decoration;
  BorderRadius? borderRadius;
  Border? border;
  FontSize fontSizeEnum;
  Color strokeColor;
  bool showStroke;
  double strokePercent;
  Color? strokeColorTouch;
  Duration? effectTouchDuration;
  Function(bool hover)? effectTouchCallback;
  Function()? tapCallback;
  double? width;

  FontHelper(
    this.text, {
    Key? key,
    this.align = TextAlign.left,
    this.color = Colors.black87,
    this.fontFamily = FontClass.None,
    this.fontWeight = FontWeight.w500,
    this.shadowColor,
    this.bgColor,
    this.padding,
    this.shadowOffset,
    this.blurRadius = 0.7,
    this.sizeText,
    this.overflow = TextOverflow.visible,
    this.maxLines = null,
    this.letterSpacing = 1,
    this.decoration,
    this.borderRadius,
    this.border,
    this.fontSizeEnum = FontSize.Content2,
    this.strokeColor = Colors.white,
    this.showStroke = false,
    this.strokePercent = 0.2,
    this.strokeColorTouch,
    this.effectTouchDuration,
    this.effectTouchCallback,
    this.tapCallback,
    this.width,
  }) : super(key: key) {
    // border ??= Border.;
    shadowColor ??= Colors.white24;
    shadowOffset ??= Offset(0, 1);
    decoration ??= TextDecoration.none;
    strokeColorTouch ??= strokeColor;
    padding ??= const EdgeInsets.symmetric(horizontal: 10, vertical: 5);
  }

  @override
  _FontHelperState createState() => _FontHelperState();

  static String? getFontEnum(FontClass fontClass) {
    if (fontClass.toString().split(".")[1] == "None") return null;
    return fontClass.toString().split(".")[1];

    print(fontClass.toString().split(".")[1]);
    if (fontClass == FontClass.Imaginary) return "Imaginary";
    if (fontClass == FontClass.Quinngothic) return "Quinngothic";
  }

  // static Widget text(
  //   String text, {
  //   TextAlign align = TextAlign.left,
  //   Color color = Colors.black87,
  //   FontClass fontFamily = FontClass.None,
  //   FontWeight fontWeight = FontWeight.w500,
  //   Color? shadowColor,
  //   Color? bgColor,
  //   EdgeInsets? padding,
  //   Offset? shadowOffset,
  //   double blurRadius = 0.7,
  //   double? sizeText,
  //   TextOverflow overflow = TextOverflow.visible,
  //   int? maxLines = null,
  //   double letterSpacing = 1,
  //   TextDecoration? decoration,
  //   BorderRadius? borderRadius,
  //   Border? border,
  //   FontSize fontSizeEnum = FontSize.Content2,
  //   Color strokeColor = Colors.white,
  //   bool showStroke = false,
  //   double strokePercent = 0.2,
  //   Color? strokeColorTouch,
  // }) {
  //   borderRadius ??= BorderRadius.circular(2);
  //   border ??= Border.all(width: 1);
  //   shadowColor ??= Colors.white24;
  //   shadowOffset ??= Offset(0, 1);
  //   // if (shadowOffset == null) shadowOffset = Offset(0.7, 1.5);
  //   decoration ??= TextDecoration.none;
  //   padding ??= const EdgeInsets.symmetric(horizontal: 10, vertical: 5);
  //   strokeColorTouch ??= strokeColor;

  //   Widget widgetText = Text(
  //     text,
  //     textAlign: align,
  //     maxLines: maxLines,
  //     overflow: overflow,
  //     style: TextStyle(
  //       fontSize: sizeText ?? getSizeBaseEnum(fontSizeEnum),
  //       letterSpacing: letterSpacing,
  //       color: color,
  //       fontFamily: FontHelper.getFontEnum(fontFamily),
  //       fontWeight: fontWeight,
  //       decoration: decoration,
  //       wordSpacing: -1,
  //     ),
  //   );

  //   Widget widgetTextStroke = Text(
  //     text,
  //     textAlign: align,
  //     maxLines: maxLines,
  //     overflow: overflow,
  //     style: TextStyle(
  //         foreground: Paint()
  //           ..color = strokeColor
  //           ..strokeJoin = StrokeJoin.round
  //           ..strokeCap = StrokeCap.round
  //           ..style = PaintingStyle.stroke
  //           ..strokeWidth =
  //               strokePercent * (sizeText ?? getSizeBaseEnum(fontSizeEnum)),
  //         fontSize: sizeText ?? getSizeBaseEnum(fontSizeEnum),
  //         letterSpacing: letterSpacing,
  //         // color: color,
  //         fontFamily: FontHelper.getFontEnum(fontFamily),
  //         fontWeight: fontWeight,
  //         decoration: decoration,
  //         wordSpacing: -1,
  //         // decorationThickness: 20,
  //         shadows: [
  //           Shadow(
  //             blurRadius: blurRadius,
  //             color: shadowColor,
  //             offset: shadowOffset,
  //           )
  //         ]),
  //   );

  //   Widget strokeWidget = Stack(
  //     children: [
  //       Offstage(
  //         offstage: !showStroke,
  //         child: widgetTextStroke,
  //       ),
  //       widgetText
  //     ],
  //   );

  //   return Material(
  //     color: Colors.transparent,
  //     child: bgColor == null
  //         ? strokeWidget
  //         : Container(
  //             decoration: BoxDecoration(
  //               color: bgColor,
  //               border: border,
  //               borderRadius: borderRadius,
  //             ),
  //             padding: padding,
  //             child: strokeWidget,
  //           ),
  //   );
  // }

  static double getSizeBaseEnum(FontSize fontSizeEnum) {
    switch (fontSizeEnum) {
      case FontSize.Title:
        return 34;
      case FontSize.Subtitle:
        return 26;
      case FontSize.Content1:
        return 20;
      default:
        return 16;
    }
  }
}

class _FontHelperState extends State<FontHelper> {
  bool tapDown = false;
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    Widget widgetText = Text(
      widget.text,
      textAlign: widget.align,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      style: TextStyle(
        fontSize:
            widget.sizeText ?? FontHelper.getSizeBaseEnum(widget.fontSizeEnum),
        letterSpacing: widget.letterSpacing,
        color: widget.color,
        fontFamily: FontHelper.getFontEnum(widget.fontFamily),
        fontWeight: widget.fontWeight,
        decoration: widget.decoration,
        wordSpacing: -1,
      ),
    );

    Widget widgetTextStroke = Text(
      widget.text,
      textAlign: widget.align,
      maxLines: widget.maxLines,
      overflow: widget.overflow,
      style: TextStyle(
        foreground: Paint()
          ..color = tapDown
              ? widget.strokeColorTouch ?? widget.strokeColor
              : widget.strokeColor
          ..strokeJoin = StrokeJoin.round
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = widget.strokePercent *
              (widget.sizeText ??
                  FontHelper.getSizeBaseEnum(widget.fontSizeEnum)),
        fontSize:
            widget.sizeText ?? FontHelper.getSizeBaseEnum(widget.fontSizeEnum),
        letterSpacing: widget.letterSpacing,
        // color: color,
        fontFamily: FontHelper.getFontEnum(widget.fontFamily),
        fontWeight: widget.fontWeight,
        decoration: widget.decoration,
        wordSpacing: -1,
        // decorationThickness: 20,
        shadows: [
          Shadow(
            blurRadius: widget.blurRadius,
            color: widget.strokeColorTouch != null
                ? widget.strokeColorTouch!
                : widget.shadowColor!,
            offset: widget.strokeColorTouch != null
                ? widget.shadowOffset!.scale(2, 2)
                : widget.shadowOffset!,
          )
        ],
      ),
    );

    Widget strokeWidget = Stack(
      children: [
        Offstage(
          offstage: !widget.showStroke,
          child: widgetTextStroke,
        ),
        widgetText
      ],
    );

    Widget strokeWidgetClick = InkWell(
      splashFactory: NoSplash.splashFactory,
      highlightColor: Colors.transparent,
      radius: 0,
      onTap: () {
        widget.tapCallback?.call();
        if (widget.strokeColorTouch != null) {
          setState(() {
            tapDown = false;
            onHover = false;
          });
        }
      },
      onTapCancel: widget.strokeColorTouch == null
          ? null
          : () => setState(() {
                tapDown = false;
                onHover = false;
              }),
      onTapDown: widget.strokeColorTouch == null
          ? null
          : (d) => setState(() {
                tapDown = true;
                onHover = true;
              }),
      onHover: widget.effectTouchDuration == null
          ? null
          : (value) => setState(() {
                onHover = value;
                widget.effectTouchCallback?.call(value);
              }),
      child: strokeWidget,
    );

    // strokeWidget =
    //     widget.effectTouchDuration != null ? strokeWidgetClick : strokeWidget;

    return AnimatedScale(
      duration: widget.effectTouchDuration ??= const Duration(milliseconds: 0),
      curve: Curves.bounceIn,
      scale: onHover ? 1.15 : 1,
      child: Material(
        color: Colors.transparent,
        child:
            // widget.bgColor == null
            //     ? Container(
            //         padding: widget.padding,
            //         child:
            //             widget.tapCallback != null ? strokeWidgetClick : strokeWidget)
            //     :
            Container(
          // width: widget.width,
          // alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.bgColor,
            border: widget.border,
            borderRadius: widget.borderRadius,
          ),
          padding: widget.padding,
          child: widget.tapCallback != null ? strokeWidgetClick : strokeWidget,
        ),
      ),
    );

    // return GestureDetector(
    //   onTapUp: (d) => widget.onTouchCall.call(false),
    //   onTap: () => widget.onTouchCall.call(true),
    //   child: widget.child,
    // );
  }
}
