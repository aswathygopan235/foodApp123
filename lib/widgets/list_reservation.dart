import 'package:flutter/material.dart';
import 'package:food_blog_app/models/reservation_data.dart';
import 'package:food_blog_app/widgets/reservation_tile.dart';

class ListReservation extends StatelessWidget {
  final ReservationData reservationData = ReservationData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: reservationData.reservationCount,
      itemBuilder: (context, index) {
        final reservation = reservationData.reservations[index];
        return ReservationTile(
          reservationThumbnailImagePath:
              reservation.reservationThumbnailImagePath,
          restaurantName: reservation.restaurantName,
          reservationDate: reservation.reservationDate,
          reservationTime: reservation.reservationTime,
          reservationStatus: reservation.reservationStatus,
        );
      },
    );
  }
}
