import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/logic/cubits/general_cubit/general_cubit.dart';

class CenterErrorMessage extends StatelessWidget {
  final String errorMessage;

  const CenterErrorMessage({
    required this.errorMessage,
  });
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<GeneralCubit>(context).changeWidget(mustRefresh: true);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: LayoutBuilder(builder: (context, constraints) {
          return ListView(
            children: [
              Container(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: Text(
                    errorMessage,
                    style: TextStyle(
                      fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
