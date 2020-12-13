import 'package:flutter/material.dart';
import 'package:flutter_app_ui/utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
      HeaderWithSearchBox(size: size)
      ],
    );
  }
}

