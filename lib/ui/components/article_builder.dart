import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/constants.dart';
import 'package:news_app/ui/components/rotated_text.dart';
import 'package:news_app/ui/components/web_view_screen.dart';

class ArticleBuilder extends StatelessWidget {
  final String articleUrl;
  final String? imageUrl;
  final String title;
  final String date;

  const ArticleBuilder({
    required this.articleUrl,
    required this.imageUrl,
    required this.title,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return WebViewScreen(
                articleUrl: articleUrl,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.155,
              width: MediaQuery.of(context).size.width * 0.30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: imageUrl == null
                    ? RotatedText(text: 'NEWS APP')
                    : CachedNetworkImage(
                        imageUrl: imageUrl!,
                        placeholder: (_, __) {
                          return Center(
                            child: Text(
                              'Loading...',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .fontSize,
                              ),
                            ),
                          );
                        },
                        errorWidget: (context, url, error) => Icon(
                          Icons.error,
                          color: Colors.redAccent,
                        ),
                        fadeInDuration:
                            Duration(milliseconds: imageFadeDuration),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.025,
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.155,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.subtitle1!.fontSize,
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
