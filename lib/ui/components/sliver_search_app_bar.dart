import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/logic/cubits/search_cubit/search_cubit.dart';

class SliverSearchAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    //
    return SliverAppBar(
      actions: [
        SizedBox(
          width: 75,
        ),
        const Icon(
          Icons.search,
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                /*autocorrect: false,
                enableSuggestions: false,*/
                autofocus: true,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  //remove underline border from bottom
                  border: InputBorder.none,
                  hintText: 'Search...',
                  hintStyle: TextStyle(
                    color: Colors.white70,
                  ),
                ),
                //just to disable the line under the text 'BUG'
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                  color: Colors.white,
                ),
                onChanged: (newValue) async {
                  await BlocProvider.of<SearchCubit>(context).search(newValue);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
