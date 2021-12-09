import 'package:flutter/material.dart';

class SliverIcon extends StatelessWidget {
  const SliverIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: (MediaQuery.of(context).size.height) -
            (AppBar().preferredSize.height) -
            (MediaQuery.of(context).padding.top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Icon(
                Icons.all_inclusive,
                size: 100,
              ),
            ),
            Text('No thing to show'),
          ],
        ),
      ),
    );
  }
}
