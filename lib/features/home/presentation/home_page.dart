import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fly_app/core/utils/styles/styles.dart';
import 'package:fly_app/features/home/presentation/widgets/header_with_logo.dart';
import 'package:fly_app/features/home/presentation/widgets/search.dart';
import 'package:fly_app/features/home/presentation/widgets/upcoming_flights.dart';
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
          const HeaderWithLogo(),
          const Gap(20),
          const Search(),
          const Gap(25),
          UpcomingFlights(),
          Hotels(),
          const Gap(50)
        ],
      ),
    );
  }
}

class Hotels extends StatelessWidget {
  const Hotels({
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
                  'Hotels',
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
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HotelCard(),
                HotelCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: const EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Styles.orangeColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://wallpapers.com/images/file/modern-coastal-luxury-dream-beach-house-te8hgz0pej6vgbju.jpg",
              fit: BoxFit.fitWidth,
            ),
          ),
          Text(
            'Hotel Name',
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          Text(
            'City',
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
          Text(
            'Price',
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(10)
        ],
      ),
    );
  }
}
