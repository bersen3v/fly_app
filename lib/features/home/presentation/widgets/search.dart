import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:fly_app/core/utils/styles/styles.dart';

class Search extends StatelessWidget {
  const Search({
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
            Expanded(
              child: Text(
                'Search',
                style: Styles.headLineStyle4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
