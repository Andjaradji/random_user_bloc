import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:random_user_bloc/app_src/resources/util/app_assets.dart';
import 'package:random_user_bloc/app_src/resources/util/app_colors.dart';
import 'package:random_user_bloc/app_src/resources/util/app_screen_util.dart';

class GenericError extends StatelessWidget {
  const GenericError({this.errorMessage, this.refreshOnTap, this.reportOnTap});

  final String errorMessage;
  final Function() refreshOnTap, reportOnTap;

  @override
  Widget build(BuildContext context) => SizedBox(
    width: double.infinity,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(AppAssets.errorIcon,
              fit: BoxFit.fill,
              width: AppScreenUtil.s280,
              height: AppScreenUtil.s280),
          SizedBox(height: AppScreenUtil.s70),
          Text('Error',
              style: TextStyle(
                  color: const Color(0xff555459),
                  fontSize: FontSize.f56,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: AppScreenUtil.s21),
          Text(
              'Terjadi kesalahan pada sistem.'
                  '\nSilakan refresh atau laporkan masalah ini',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff555459),
                fontSize: FontSize.f42,)),
          SizedBox(height: AppScreenUtil.s7),
          Text('Error: $errorMessage',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: FontSize.f42,
                  fontWeight: FontWeight.w600)),
          SizedBox(height: AppScreenUtil.s35),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
              Widget>[
            _ItemButton(buttonOnTap: refreshOnTap, titleButton: 'refresh'),
            _ItemButton(buttonOnTap: reportOnTap, titleButton: 'laporkan')
          ])
        ]),
  );
}

class _ItemButton extends StatelessWidget {
  const _ItemButton({this.buttonOnTap, this.titleButton});

  final Function() buttonOnTap;
  final String titleButton;

  @override
  Widget build(BuildContext context) => Material(
    color: Colors.transparent,
    child: InkWell(
        onTap: buttonOnTap,
        borderRadius: BorderRadius.circular(AppScreenUtil.s21),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: AppScreenUtil.s35, horizontal: AppScreenUtil.s70),
          child: Text(titleButton,
              style: TextStyle(
                  color: AppColors.primaryDarkBlueKlikACC,
                  fontSize: FontSize.f42,
                  fontWeight: FontWeight.w500)),
        )),
  );
}
