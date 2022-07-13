import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/data/model/ticket.dart';

class ApiService {
  final String _endpoint = "https://62cbe9008042b16aa7c4e0c4.mockapi.io";
  final Dio _dio = Dio();

  getTicketCategory() async {
    try {
      Response response = await _dio.get(_endpoint + "/category");
      return response.data;
    } catch (e) {
      print("error: ${e.toString()}");
    }
  }

  Future<dynamic> getListTicket(String category) async {
    try {
      Response response = await _dio.get(_endpoint + "/ticket");
      // return TicketResult.fromJson(response.data);
      return response.data;
    } catch (e) {
      print("error: ${e.toString()}");
    }
  }
}
