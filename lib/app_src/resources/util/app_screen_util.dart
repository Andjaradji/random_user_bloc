import 'package:flutter/material.dart' show BuildContext, Size;
import 'package:flutter_screenutil/flutter_screenutil.dart';

double defaultScreenWidth = 1440.0;
double defaultScreenHeight = 2560.0;

class AppScreenUtil {
  static double s7 = 7; // 2
  static double s14 = 14; // 4
  static double s21 = 21; // 6
  static double s28 = 28; // 8
  static double s35 = 35; // 10
  static double s42 = 42; // 12
  static double s49 = 49; // 14
  static double s56 = 56; // 16
  static double s63 = 63; // 18
  static double s70 = 70; // 20
  static double s77 = 77; // 22
  static double s84 = 84; // 24
  static double s91 = 91; // 26
  static double s105 = 105; // 30
  static double s119 = 119; // 34
  static double s126 = 126; // 36
  static double s140 = 140; // 40
  static double s154 = 154; // 44
  static double s175 = 175; // 50
  static double s193 = 193; // 50
  static double s210 = 210; // 60
  static double s245 = 245; // 70
  static double s262 = 262; // 75
  static double s280 = 280; // 80
  static double s294 = 294; // 84
  static double s301 = 301; // 86
  static double s315 = 315; // 90
  static double s350 = 350; // 100
  static double s368 = 368; // 105
  static double s385 = 385; // 110
  static double s420 = 420; // 120
  static double s455 = 455; // 130
  static double s490 = 490; // 140
  static double s525 = 525; // 150
  static double s595 = 595; // 170
  static double s630 = 630; // 180
  static double s665 = 665; // 190
  static double s700 = 700; // 200
  static double s770 = 770; // 220
  static double s966 = 966; // 276

  static double w7 = 7; // 2
  static double w14 = 14; // 4
  static double w21 = 21; // 6
  static double w28 = 28; // 8
  static double w35 = 35; // 10
  static double w42 = 42; // 12
  static double w49 = 49; // 14
  static double w56 = 56; // 16
  static double w63 = 63; // 18
  static double w70 = 70; // 20
  static double w77 = 77; // 22
  static double w84 = 84; // 24
  static double w91 = 91; // 26
  static double w105 = 105; // 30
  static double w119 = 119; // 34
  static double w126 = 126; // 36
  static double w140 = 140; // 40
  static double w154 = 154; // 44
  static double w175 = 175; // 50
  static double w193 = 193; // 50
  static double w210 = 210; // 60
  static double w245 = 245; // 70
  static double w262 = 262; // 75
  static double w280 = 280; // 80
  static double w294 = 294; // 84
  static double w301 = 301; // 86
  static double w315 = 315; // 90
  static double w350 = 350; // 100
  static double w368 = 368; // 105
  static double w385 = 385; // 110
  static double w420 = 420; // 120
  static double w455 = 455; // 130
  static double w490 = 490; // 140
  static double w525 = 525; // 150
  static double w595 = 595; // 170
  static double w630 = 630; // 180
  static double w665 = 665; // 190
  static double w700 = 700; // 200
  static double w770 = 770; // 220
  static double w966 = 966; // 276

  void setScreenAwareConstant(BuildContext context) {
    ScreenUtil.init(context,
        allowFontScaling: false,
        designSize: Size(defaultScreenWidth, defaultScreenHeight));
    FontSize().setScreenAwareFontSize();

    // Set Relative to Screen Height
    s7 = ScreenUtil().setHeight(7).toDouble();
    s14 = ScreenUtil().setHeight(14).toDouble();
    s21 = ScreenUtil().setHeight(21).toDouble();
    s28 = ScreenUtil().setHeight(28).toDouble();
    s35 = ScreenUtil().setHeight(35).toDouble();
    s42 = ScreenUtil().setHeight(42).toDouble();
    s49 = ScreenUtil().setHeight(49).toDouble();
    s56 = ScreenUtil().setHeight(56).toDouble();
    s63 = ScreenUtil().setHeight(63).toDouble();
    s70 = ScreenUtil().setHeight(70).toDouble();
    s77 = ScreenUtil().setHeight(77).toDouble();
    s84 = ScreenUtil().setHeight(84).toDouble();
    s91 = ScreenUtil().setHeight(91).toDouble();
    s105 = ScreenUtil().setHeight(105).toDouble();
    s119 = ScreenUtil().setHeight(119).toDouble();
    s126 = ScreenUtil().setHeight(126).toDouble();
    s140 = ScreenUtil().setHeight(140).toDouble();
    s154 = ScreenUtil().setHeight(154).toDouble();
    s175 = ScreenUtil().setHeight(175).toDouble();
    s193 = ScreenUtil().setHeight(193).toDouble();
    s210 = ScreenUtil().setHeight(210).toDouble();
    s245 = ScreenUtil().setHeight(245).toDouble();
    s262 = ScreenUtil().setHeight(262).toDouble();
    s280 = ScreenUtil().setHeight(280).toDouble();
    s294 = ScreenUtil().setHeight(294).toDouble();
    s301 = ScreenUtil().setHeight(301).toDouble();
    s315 = ScreenUtil().setHeight(315).toDouble();
    s350 = ScreenUtil().setHeight(350).toDouble();
    s368 = ScreenUtil().setHeight(368).toDouble();
    s385 = ScreenUtil().setHeight(385).toDouble();
    s420 = ScreenUtil().setHeight(420).toDouble();
    s455 = ScreenUtil().setHeight(455).toDouble();
    s490 = ScreenUtil().setHeight(490).toDouble();
    s525 = ScreenUtil().setHeight(525).toDouble();
    s595 = ScreenUtil().setHeight(595).toDouble();
    s630 = ScreenUtil().setHeight(630).toDouble();
    s665 = ScreenUtil().setHeight(665).toDouble();
    s700 = ScreenUtil().setHeight(700).toDouble();
    s770 = ScreenUtil().setHeight(770).toDouble();
    s966 = ScreenUtil().setHeight(966).toDouble();

    // Set Relative to Screen Width
    w7 = ScreenUtil().setWidth(7).toDouble();
    w14 = ScreenUtil().setWidth(14).toDouble();
    w21 = ScreenUtil().setWidth(21).toDouble();
    w28 = ScreenUtil().setWidth(28).toDouble();
    w35 = ScreenUtil().setWidth(35).toDouble();
    w42 = ScreenUtil().setWidth(42).toDouble();
    w49 = ScreenUtil().setWidth(49).toDouble();
    w56 = ScreenUtil().setWidth(56).toDouble();
    w63 = ScreenUtil().setWidth(63).toDouble();
    w70 = ScreenUtil().setWidth(70).toDouble();
    w77 = ScreenUtil().setWidth(77).toDouble();
    w84 = ScreenUtil().setWidth(84).toDouble();
    w91 = ScreenUtil().setWidth(91).toDouble();
    w105 = ScreenUtil().setWidth(105).toDouble();
    w119 = ScreenUtil().setWidth(119).toDouble();
    w126 = ScreenUtil().setWidth(126).toDouble();
    w140 = ScreenUtil().setWidth(140).toDouble();
    w154 = ScreenUtil().setWidth(154).toDouble();
    w175 = ScreenUtil().setWidth(175).toDouble();
    w193 = ScreenUtil().setWidth(193).toDouble();
    w210 = ScreenUtil().setWidth(210).toDouble();
    w245 = ScreenUtil().setWidth(245).toDouble();
    w262 = ScreenUtil().setWidth(262).toDouble();
    w280 = ScreenUtil().setWidth(280).toDouble();
    w294 = ScreenUtil().setWidth(294).toDouble();
    w301 = ScreenUtil().setWidth(301).toDouble();
    w315 = ScreenUtil().setWidth(315).toDouble();
    w350 = ScreenUtil().setWidth(350).toDouble();
    w368 = ScreenUtil().setWidth(368).toDouble();
    w385 = ScreenUtil().setWidth(385).toDouble();
    w420 = ScreenUtil().setWidth(420).toDouble();
    w455 = ScreenUtil().setWidth(455).toDouble();
    w490 = ScreenUtil().setWidth(490).toDouble();
    w525 = ScreenUtil().setWidth(525).toDouble();
    w595 = ScreenUtil().setWidth(595).toDouble();
    w630 = ScreenUtil().setWidth(630).toDouble();
    w665 = ScreenUtil().setWidth(665).toDouble();
    w700 = ScreenUtil().setWidth(700).toDouble();
    w770 = ScreenUtil().setWidth(770).toDouble();
    w966 = ScreenUtil().setWidth(966).toDouble();
  }
}

class FontSize {
  static double f7 = 7; // 2
  static double f14 = 14; // 4
  static double f17 = 17; // 5
  static double f21 = 21; // 6
  static double f24 = 24; // 7
  static double f28 = 28; // 8
  static double f35 = 35; // 10
  static double f42 = 42; // 12
  static double f46 = 46; // 13
  static double f49 = 49; // 14
  static double f53 = 53; // 15
  static double f56 = 56; // 16
  static double f63 = 63; // 18
  static double f70 = 70; // 20
  static double f77 = 77; // 22
  static double f91 = 91; // 26
  static double f105 = 105; // 30
  static double f245 = 245; // 70

  void setScreenAwareFontSize() {
    f7 = ScreenUtil().setSp(7).toDouble();
    f14 = ScreenUtil().setSp(14).toDouble();
    f17 = ScreenUtil().setSp(17).toDouble();
    f21 = ScreenUtil().setSp(21).toDouble();
    f24 = ScreenUtil().setSp(24).toDouble();
    f28 = ScreenUtil().setSp(28).toDouble();
    f35 = ScreenUtil().setSp(35).toDouble();
    f42 = ScreenUtil().setSp(42).toDouble();
    f46 = ScreenUtil().setSp(46).toDouble();
    f49 = ScreenUtil().setSp(49).toDouble();
    f53 = ScreenUtil().setSp(53).toDouble();
    f56 = ScreenUtil().setSp(56).toDouble();
    f63 = ScreenUtil().setSp(63).toDouble();
    f70 = ScreenUtil().setSp(70).toDouble();
    f77 = ScreenUtil().setSp(77).toDouble();
    f91 = ScreenUtil().setSp(91).toDouble();
    f105 = ScreenUtil().setSp(105).toDouble();
    f245 = ScreenUtil().setSp(245).toDouble();
  }
}
