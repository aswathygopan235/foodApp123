import 'package:flutter/material.dart';
import 'package:food_blog_app/models/reservation_data.dart';
import 'package:food_blog_app/widgets/reservation_tile.dart';
import 'package:food_blog_app/screens/reservation_details_screen.dart';

class ListReservation extends StatelessWidget {
  final ReservationData reservationData = ReservationData();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: reservationData.reservationCount,
      itemBuilder: (context, index) {
        final reservation = reservationData.reservations[index];

        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: ReservationTile(
            reservationThumbnailImagePath:
                reservation.reservationThumbnailImagePath,
            restaurantName: reservation.restaurantName,
            reservationDate: reservation.reservationDate,
            reservationTime: reservation.reservationTime,
            reservationStatus: reservation.reservationStatus,
          ),
          onTap: () {
            Navigator.pushNamed(context, ReservationDetailsScreen.id);
          },
        );
      },
    );
  }
}
