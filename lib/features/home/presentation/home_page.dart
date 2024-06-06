import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fly_app/core/utils/styles/styles.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          const Gap(25),
          const _HeaderWithLogo(),
          const Gap(20),
          const _Search(),
          const Gap(25),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Upcoming Flights',
                        style: Styles.headLineStyle2,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const Gap(20),
                    _Ticket(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Ticket extends StatelessWidget {
  const _Ticket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text('NYC'), Text('New-York')],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [_TicketPlaneDraw(), Text('8H 30M')],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [Text('LDN'), Text('London')],
            )
          ],
        ),
      ),
    );
  }
}

class _TicketPlaneDraw extends StatelessWidget {
  const _TicketPlaneDraw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(90),
              ),
            ),
            ...List.generate(
              5,
              (index) => Container(
                width: 5,
                height: 1,
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 3),
              ),
            ),
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(90),
              ),
            ),
          ],
        ),
        const Icon(
          color: Colors.white,
          size: 28,
          FluentSystemIcons.ic_fluent_airplane_filled,
        )
      ],
    );
  }
}

class _Search extends StatelessWidget {
  const _Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FluentSystemIcons.ic_fluent_search_regular,
              color: Styles.textColor,
            ),
            const SizedBox(width: 5),
            Text(
              'Search',
              style: Styles.headLineStyle4,
            )
          ],
        ),
      ),
    );
  }
}

class _HeaderWithLogo extends StatelessWidget {
  const _HeaderWithLogo({
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
