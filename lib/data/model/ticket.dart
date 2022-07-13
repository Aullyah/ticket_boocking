class TicketResult {
  late List<Ticket> ticket;
  TicketResult({
    required this.ticket,
  });

  factory TicketResult.fromJson(Map<String, dynamic> json) => TicketResult(
        ticket:
            List<Ticket>.from(json["result"].map((x) => Ticket.fromJson(x))),
      );
}

class Ticket {
  Ticket({
    this.id,
    this.category,
    this.name,
    this.time,
    this.from,
    this.to,
    this.price,
  });

  int? id;
  String? category;
  String? name;
  DateTime? time;
  String? from;
  String? to;
  int? price;

  factory Ticket.fromJson(Map<String, dynamic> json) => Ticket(
        id: json["id"] ?? 0,
        category: json["category"] ?? 'T',
        name: json["name"] ?? '',
        time: DateTime.parse(json["time"] ?? DateTime.now()),
        from: json["from"] ?? '',
        to: json["to"] ?? '',
        price: json["price"] ?? 0,
      );
}
