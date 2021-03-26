import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_blog_app/widgets/thumbnail_image_widget.dart';

class ReservationTile extends StatelessWidget {
  final reservationThumbnailImagePath;
  final restaurantName;
  final reservationDate;
  final reservationTime;
  final reservationStatus;

  ReservationTile({
    this.reservationThumbnailImagePath,
    this.restaurantName,
    this.reservationDate,
    this.reservationTime,
    this.reservationStatus,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Container(
        child: SizedBox(
          height: 130,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: ThumbnailImageWidget(
                    thumbnailImagePath: reservationThumbnailImagePath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                  child: _ReservationDescription(
                    restaurantName: restaurantName,
                    reservationDate: reservationStatus,
                    reservationTime: reservationTime,
                    reservationStatus: reservationStatus,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _ReservationDescription extends StatelessWidget {
  final restaurantName;
  final reservationDate;
  final reservationTime;
  final reservationStatus;

  _ReservationDescription({
    this.restaurantName,
    this.reservationDate,
    this.reservationTime,
    this.reservationStatus,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$restaurantName',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Date:',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black38,
                        ),
                      ),
                      Text(
                        '$reservationDate',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Row(
                    children: [
                      Text(
                        'Time:',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black38,
                        ),
                      ),
                      Text(
                        '$reservationTime',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.grey[400],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Status:',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black38,
                    ),
                  ),
                  Text(
                    '$reservationStatus',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12.0,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
