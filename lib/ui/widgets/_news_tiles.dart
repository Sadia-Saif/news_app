import 'package:flutter/material.dart';
import 'package:news_app/config/theme/colors.dart';

class NewsTile extends StatelessWidget {
  final String? title, desc, imgUrl;

  const NewsTile({
    super.key,
    this.imgUrl,
    this.desc,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(
        //     builder: (context) => ArticleView(
        //       postUrl: posturl,
        //     )
        // ));
      },
      child: Container(
          margin: const EdgeInsets.only(bottom: 24),
          width: MediaQuery.of(context).size.width,
          child: Container(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(6),
                      bottomLeft: Radius.circular(6))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        imgUrl!,
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    title!,
                    // maxLines: 2,
                    style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    desc!,
                    // maxLines: 2,
                    style: const TextStyle(color: AppColors.white, fontSize: 14),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
