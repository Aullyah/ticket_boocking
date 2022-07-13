import 'package:flutter/material.dart';
import 'package:ticket_booking_app/common/themes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildHeader(),
              const SizedBox(
                height: 40,
              ),
              _buildContent(),
              const Spacer(),
              _buildBottom(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() => Padding(
        padding: const EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: defaultMargin * 2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Book",
              style: titleTextFont.copyWith(
                color: accentColor1,
                fontSize: 50,
              ),
            ),
            Text(
              "Now",
              style: titleTextFont.copyWith(
                color: mainColor,
                fontSize: 50,
              ),
            )
          ],
        ),
      );

  Widget _buildContent() => Padding(
        padding:
            const EdgeInsets.only(left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 305.45,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.png'))),
            ),
            const SizedBox(
              height: 26.55,
            ),
            Text(
              "Quick & Easy\nto Travel anywhere\n& anytime",
              style: titleTextFont.copyWith(color: mainColor, fontSize: 34),
            )
          ],
        ),
      );

  Widget _buildBottom(BuildContext context) => Container(
        width: double.maxFinite,
        height: 141,
        decoration: BoxDecoration(
          color: mainColor,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(50),
          ),
        ),
        child: Center(
          child: SizedBox(
              width: 206,
              height: 56,
              child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/main'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: mainColor,
                    shadowColor: Colors.white,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                  ),
                  child: Text(
                    "Continue",
                    style: blackTextFont.copyWith(fontSize: 18),
                  ))),
        ),
      );
}
