import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ticket_booking_app/common/themes.dart';
import 'package:ticket_booking_app/data/model/ticket.dart';

class ReservationPage extends StatefulWidget {
  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  List<int> booked = [3, 4, 6, 7, 8, 15, 18, 19, 22, 24];
  List<int> selected = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Ticket ticket = arguments['ticket'];
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            _buildHeader(context),
            const SizedBox(
              height: 20,
            ),
            _buildList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
            left: defaultMargin, top: defaultMargin * 2, right: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Text(
              "Melbourne",
              style: blackTextFont.copyWith(color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.swap_horiz,
                color: Colors.white,
              ),
            ),
            Text(
              "Sydney",
              style: blackTextFont.copyWith(color: Colors.white),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(3),
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.display_settings,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      );

  Widget _buildList(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      constraints: BoxConstraints(minHeight: _height, maxWidth: _width),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultMargin),
          topRight: Radius.circular(defaultMargin),
        ),
      ),
      child: Column(
        children: [
          _buildDesc(),
          _buildListSeat(),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: double.maxFinite,
            height: 70,
            margin: const EdgeInsets.symmetric(
              vertical: 19,
              horizontal: 19,
            ),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                  children: [
                    const Text("Your selected seat : "),
                    for (var item in selected) Text("$item ")
                  ],
                )));
              },
              style: ElevatedButton.styleFrom(
                primary: accentColor1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: Text(
                "Book Now",
                style:
                    blackTextFont.copyWith(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDesc() => Padding(
        padding: const EdgeInsets.fromLTRB(39, 57, 39, 57),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(color: accentColor1),
                ),
                Text(
                  "Available",
                  style: blackTextFont,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 54),
              child: Column(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(color: mainColor),
                  ),
                  Text(
                    "Selected",
                    style: blackTextFont,
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(color: accentColor4),
                ),
                Text(
                  "Booked",
                  style: blackTextFont,
                )
              ],
            ),
          ],
        ),
      );

  Widget _buildListSeat() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(left: defaultMargin),
          width: MediaQuery.of(context).size.width / 2,
          child: Wrap(
            runSpacing: 15,
            spacing: 12,
            children: List.generate(
                12,
                (index) => InkWell(
                      onTap: booked.contains(index + 1)
                          ? null
                          : () {
                              if (selected.contains(index + 1)) {
                                selected.remove(index + 1);
                              } else {
                                selected.add(index + 1);
                              }
                              setState(() {});
                            },
                      child: Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: booked.contains(index)
                              ? accentColor4
                              : selected.contains(index + 1)
                                  ? mainColor
                                  : accentColor1,
                        ),
                      ),
                    )),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: defaultMargin),
          width: MediaQuery.of(context).size.width / 2,
          child: Wrap(
            runSpacing: 15,
            spacing: 12,
            children: List.generate(
                12,
                (index) => InkWell(
                      onTap: booked.contains(index + 13)
                          ? null
                          : () {
                              if (selected.contains(index + 13)) {
                                selected.remove(index + 13);
                              } else {
                                selected.add(index + 13);
                              }
                              setState(() {});
                            },
                      child: Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: booked.contains(index + 13)
                              ? accentColor4
                              : selected.contains(index + 13)
                                  ? mainColor
                                  : accentColor1,
                        ),
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
