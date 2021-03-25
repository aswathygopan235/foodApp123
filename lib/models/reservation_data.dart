import 'package:food_blog_app/models/reservation.dart';

class ReservationData {
  final List<Reservation> reservations = [
    Reservation(
        reservationThumbnailImagePath: 'images/food1.jpg',
        restaurantName: 'Name of the restaurant',
        reservationDate: 'YYYY-mm-dd',
        reservationTime: 'HH:mm',
        reservationStatus: 'Pending Approval'),
    Reservation(
        reservationThumbnailImagePath: 'images/food1.jpg',
        restaurantName: 'Name of the restaurant',
        reservationDate: 'YYYY-mm-dd',
        reservationTime: 'HH:mm',
        reservationStatus: 'Pending Approval'),
    Reservation(
        reservationThumbnailImagePath: 'images/food1.jpg',
        restaurantName: 'Name of the restaurant',
        reservationDate: 'YYYY-mm-dd',
        reservationTime: 'HH:mm',
        reservationStatus: 'Pending Approval'),
  ];

  int get reservationCount {
    return reservations.length;
  }
}
