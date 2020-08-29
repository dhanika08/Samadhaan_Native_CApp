import 'package:flutter/material.dart';
import 'complaint.dart';

class CircularAvatar extends StatelessWidget {
  final ComplaintStatus status;

  CircularAvatar({@required this.status});

  @override
  Widget build(BuildContext context) {
    if (status == ComplaintStatus.Ongoing)
      return StatusOfComplaints(
        Color(0xfff4b601),
        Color(0xffffee77),
      );
    else if (status == ComplaintStatus.New)
      return StatusOfComplaints(
        Color(0xff3d84fa),
        Color(0xff34afff),
      );
    else if (status == ComplaintStatus.Done)
      return StatusOfComplaints(
        Color(0xff51b328),
        Color(0xff85eb29),
      );
    else if (status == ComplaintStatus.Transfer)
      return StatusOfComplaints(
        Color(0xffff4A2B),
        Color(0xffFE7325),
      );
    return null;
  }
}

class StatusOfComplaints extends StatelessWidget {
  final Color color1;
  final Color color2;
  StatusOfComplaints(this.color1, this.color2);

  Widget build(BuildContext context) {
    return Container(
      width: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}
