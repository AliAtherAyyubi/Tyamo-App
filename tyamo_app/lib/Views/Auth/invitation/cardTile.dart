import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class InviteCard extends StatelessWidget {
  const InviteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        GFListTile(
          avatar: GFAvatar(size: 50),
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.all(0),
          titleText: '@faizan123',
          subTitleText: 'Send a friend request to you',
        ),
        Container(
          margin: EdgeInsets.all(0),
          width: 170,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GFButton(
                onPressed: () {},
                text: "Decline",
                elevation: 10,
                color: Colors.red,
                borderShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              GFButton(
                onPressed: () {},
                text: "Accept",
                elevation: 10,
                color: Colors.green,
                borderShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
