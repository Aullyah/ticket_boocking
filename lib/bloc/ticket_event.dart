part of 'ticket_bloc.dart';

@immutable
abstract class TicketEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchTicket extends TicketEvent {}

class GetTickets extends TicketEvent {
  final String ticketId;

  GetTickets(this.ticketId);

  @override
  List<Object> get props => [ticketId];
}
