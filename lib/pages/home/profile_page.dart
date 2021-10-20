import 'package:flutter/material.dart';
import 'package:viper/theme.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/image_profile.png',
                    width: 64,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo Alex',
                        style: primaryTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        '@alex1996',
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Image.asset(
                  'assets/button_exit.png',
                  width: 20,
                )
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
      ],
    );
  }
}
