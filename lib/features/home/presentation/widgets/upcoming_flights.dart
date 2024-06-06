import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:fly_app/core/utils/styles/styles.dart';

class UpcomingFlights extends StatelessWidget {
  const UpcomingFlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  style: Styles.textStyle.copyWith(color: Styles.primaryColor),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 180,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(children: List.generate(10, (index) => _Ticket())),
          ),
        ),
      ],
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
      margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 90,
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(20)),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NYC',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'New-York',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const _TicketPlaneDraw(),
                          Text(
                            '8H 30M',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'LDN',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'London',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 300,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 May',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Date',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '08:00 AM',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Departure time',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Number',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Row(
                children: List.generate(
              11,
              (index) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Styles.bgColor,
                ),
                width: 15,
                height: 15,
                margin: const EdgeInsets.symmetric(horizontal: 6),
              ),
            )),
          )
        ],
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
                margin: const EdgeInsets.symmetric(horizontal: 3),
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
