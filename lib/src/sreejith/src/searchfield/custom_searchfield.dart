import 'package:flutter/material.dart';
import 'package:nexteon_group_packages/src/sajin/core/const/my_text_style.dart';
// import 'package:nexteon_group_packages/src/sreejith/src/a_models/search_model.dart';

class CustomSearchWidget extends StatelessWidget {
  CustomSearchWidget({super.key, this.hintText, required this.suggestionlist});

  final String? hintText;
  ///need to give the list of data for suggestion,
  final List<dynamic> suggestionlist;

  ///for search filter defined model
  // final List<dynamic> suggestions = [
  //   SearchModel(lastname: "muhammed", firstname: " najeeb"),
  //   SearchModel(lastname: "duglas", firstname: " sajin"),
  //   SearchModel(lastname: "duglas", firstname: "amos"),
  //   SearchModel(lastname: "duglas", firstname: "anush"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchAnchor(
        viewBackgroundColor: Theme.of(context).colorScheme.onTertiary,
        headerTextStyle: TextStyle(fontSize: MyTextSTyles.subText.fontSize),
        builder: (context, controller) {
          return SearchBar(
            textStyle: WidgetStateProperty.all(
                TextStyle(fontSize: MyTextSTyles.subText.fontSize)),
            elevation: WidgetStateProperty.all(0),
            side: WidgetStateProperty.all(
                BorderSide(color: Theme.of(context).colorScheme.onSecondary)),
            backgroundColor: WidgetStateProperty.all(
                Theme.of(context).colorScheme.onTertiary),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
            controller: controller,
            leading: const Icon(Icons.search),
            hintText: hintText,

//

            hintStyle: WidgetStateProperty.all(
                TextStyle(fontSize: MyTextSTyles.subText.fontSize)),
            onTap: () {
              if (controller.text.isNotEmpty) {
                controller.openView();
              }
            },
            onChanged: (value) {
              controller.openView();
            },
          );
        },
        suggestionsBuilder: (context, controller) {
          List<Widget> matchingItems = [];
          for (var item in suggestionlist) {
            if (item.firstname
                .toLowerCase()
                .contains(controller.text.toLowerCase())) {
              matchingItems.add(
                ListTile(
                  tileColor: Theme.of(context).colorScheme.onTertiary,
                  title: Text(
                    item.firstname,
                    style: TextStyle(fontSize: MyTextSTyles.subText.fontSize),
                  ),
                  onTap: () {
                    controller.closeView(item.firstname);
                  },
                ),
              );
            }
          }

          if (matchingItems.isEmpty && controller.text.isNotEmpty) {
            // If no items match the search text, show a "Nothing found" message
            return [const Text("Nothing found")];
          } else {
            // Otherwise, show the matching items
            return matchingItems;
          }
        },
      ),
    );
  }
}
