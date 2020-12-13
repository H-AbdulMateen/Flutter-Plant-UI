import 'package:flutter/material.dart';
import 'package:flutter_app_ui/utils/constants.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: size.height * 0.25 - 37,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Row(
              children: [
                Text('Hi UIShop',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Spacer(),
                Image.asset('assets/images/logo.png')
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.20)
                    )]
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value){},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5)
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/search.svg')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}