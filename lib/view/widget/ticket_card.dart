import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ticket_booking_app/common/themes.dart';
import 'package:ticket_booking_app/data/model/ticket.dart';

class TicketCard extends StatelessWidget {
  Ticket ticket;
  TicketCard({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String formattedTime =
        DateFormat.jm().format(ticket.time ?? DateTime.now());
    String formattedDate =
        DateFormat('dd-MM-yyyy').format(ticket.time ?? DateTime.now());
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3)),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ticket.name ?? '',
                  style: blackTextFont.copyWith(
                    color: mainColor,
                    fontSize: 18,
                  ),
                ),
                Text(
                  formattedTime,
                  style: blackTextFont.copyWith(
                    color: mainColor,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: accentColor1,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.send_outlined,
                        color: Colors.white, //Color(0xFF4CCB9B),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket.from ?? '',
                          style: blackTextFont.copyWith(fontSize: 13),
                        ),
                        Text(
                          formattedDate,
                          style: blackTextFont.copyWith(color: accentColor3),
                        )
                      ],
                    )
                  ],
                ),
                ElevatedButton(
                    onPressed: () => Navigator.pushNamed(
                        context, '/reservation',
                        arguments: {'ticket': ticket}),
                    style: ElevatedButton.styleFrom(primary: accentColor1),
                    child: Text(
                      "Buy Ticket",
                      style: blackTextFont.copyWith(color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: accentColor1,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.white, //Color(0xFF4CCB9B),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket.to ?? '',
                          style: blackTextFont.copyWith(fontSize: 13),
                        ),
                        Text(
                          formattedDate,
                          style: blackTextFont.copyWith(color: accentColor3),
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Price: ",
                      style: blackTextFont.copyWith(color: accentColor3),
                    ),
                    Text("\$${ticket.price ?? 0}")
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 9,
            ),
          ],
        ),
      ),
    );
  }
}
