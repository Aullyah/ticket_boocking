import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:ticket_booking_app/data/api/api_service.dart';
import 'package:ticket_booking_app/data/model/ticket.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  TicketBloc() : super(TicketInitial()) {
    on<FetchTicket>((event, emit) async {
      var ticket = await ApiService().getListTicket('T');
      print(ticket);
      emit(TicketLoaded(ticket));
    });
  }
}
