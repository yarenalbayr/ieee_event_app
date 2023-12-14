import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/enums/comitee_enum.dart';

class ColorConstants {
  const ColorConstants._();
  static const backgroundColor = Color(0XFF131313);
  static const secondaryText = Color.fromARGB(255, 159, 137, 176);
  static const formColor = Color(0XFF1E1E1E);
  static const buttonAqua = Color(0XFF379683);
  static const buttonPurple = Color(0XFF800682);
  static const buttonFuscia = Color(0XFFBD1F71);
  static const textLinkAqua = Color(0XFF44CCB0);
  static const textLinkPurple = Color(0XFFD505D8);
  static const textLinkFuscia = Color(0XFFFF2998);
  static const brandedBlue = Color(0XFF05386B);
  static const textColorLight = Color.fromRGBO(242, 240, 237, 1);
  static const primary = Color.fromRGBO(49, 113, 169, 1);

  static const error = Colors.red;
}

extension ComitteeColors on ECommittees {
  Color get colorLight {
    switch (this) {
      case ECommittees.aess:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.cs:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.embs:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.ras:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.ttk:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.kok:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.wie:
        return const Color.fromRGBO(237, 166, 65, 1);
    }
  }

  Color get colorDark {
    switch (this) {
      case ECommittees.aess:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.cs:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.embs:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.ras:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.ttk:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.kok:
        return const Color.fromRGBO(237, 166, 65, 1);
      case ECommittees.wie:
        return const Color.fromRGBO(237, 166, 65, 1);
    }
  }
}
