import 'package:flutter/material.dart';
import 'package:fly_app/core/utils/styles/styles.dart';

class HeaderWithLogo extends StatelessWidget {
  const HeaderWithLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Good Morning',
                  style: Styles.headLineStyle3,
                ),
                Text(
                  'Book Tickets',
                  style: Styles.headLineStyle1,
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://w7.pngwing.com/pngs/953/43/png-transparent-aviasales-hd-logo.png',
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
