import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ticket_booking_app/bloc/ticket_bloc.dart';
import 'package:ticket_booking_app/common/themes.dart';
import 'package:ticket_booking_app/data/model/ticket.dart';
import 'package:ticket_booking_app/view/widget/category_card.dart';
import 'package:ticket_booking_app/view/widget/ticket_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TicketBloc _ticketBloc = TicketBloc();

  @override
  void initState() {
    super.initState();
    _ticketBloc.add(FetchTicket());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: BlocProvider(
        create: (_) => _ticketBloc,
        child: SingleChildScrollView(
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
      child: BlocBuilder<TicketBloc, TicketState>(
        builder: (context, state) {
          if (state is TicketInitial) {
            return _buildLoading();
          } else if (state is TicketLoaded) {
            return Column(
              children: [
                _buildCategory(),
                const SizedBox(
                  height: 27,
                ),
                _buildCard(context, state.ticketResult),
              ],
            );
          } else {
            return _buildNoData();
          }
        },
      ),
    );
  }

  Widget _buildCategory() {
    return Container(
      margin: const EdgeInsets.fromLTRB(14, 18, 0, 0),
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CategoryCard(
              index: index,
            ),
          );
        },
      ),
    );
  }

  Widget _buildCard(BuildContext context, var ticketResult) {
    var _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height,
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: ListView.builder(
        itemCount: ticketResult.length,
        itemBuilder: (context, index) {
          var ticket = Ticket.fromJson(ticketResult[index]);
          // return Text("${res.id}");
          return TicketCard(
            ticket: ticket,
          );
        },
      ),
    );
  }

  Widget _buildLoading() => const Center(
        child: CircularProgressIndicator(),
      );
  Widget _buildNoData() => const Center(child: Text("No Data"));
}
