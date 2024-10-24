import 'package:flutter/material.dart';

import '../../model/news.dart';

class CardTrending extends StatelessWidget {
  const CardTrending({
    super.key,
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 183,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(news.urlToImage),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(news.author),
        const SizedBox(
          height: 4,
        ),
        Text(
          news.title,
          maxLines: 2,
          style: const TextStyle(
            fontFamily: 'poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              news.source,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              news.publishedAt,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
