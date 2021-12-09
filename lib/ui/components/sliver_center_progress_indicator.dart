import 'package:flutter/material.dart';

class SliverCenterProgressIndicator extends StatelessWidget {
  const SliverCenterProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: (MediaQuery.of(context).size.height) -
            (MediaQuery.of(context).padding.top),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
