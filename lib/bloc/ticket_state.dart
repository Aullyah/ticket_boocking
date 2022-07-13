part of 'ticket_bloc.dart';

@immutable
abstract class TicketState extends Equatable {
  @override
  List<Object> get props => [];
}

class TicketInitial extends TicketState {
  @override
  List<Object> get props => [];
}

class TicketLoaded extends TicketState {
  final ticketResult;
  TicketLoaded(this.ticketResult);
  @override
  List<Object> get props => [ticketResult];
}
