import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project_dd/location_details/models/location_model.dart';
import 'package:project_dd/location_details/widgets/ClipperContainer.dart';

class LocationDetailsScreen extends StatelessWidget {
  const LocationDetailsScreen({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ActivityImage(activity: activity),
          _ActivityInformation(activity: activity)
        ],
      ),
    );
  }
}

class _ActivityInformation extends StatelessWidget {
  const _ActivityInformation({required this.activity});
  final Activity activity;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              activity.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            RatingBar.builder(
                initialRating: activity.rating,
                minRating: 0,
                direction: Axis.horizontal,
                ignoreGestures: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                onRatingUpdate: (rating) {}),
            const SizedBox(
              height: 20,
            ),
            Text(
              'About',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              activity.description,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class ActivityImage extends StatelessWidget {
  const ActivityImage({
    Key? key,
    required this.activity,
  }) : super(key: key);

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const ClipperContainer(
          height: 415,
        ),
        Hero(
          tag: '${activity.id}_${activity.title}',
          child: ClipperContainer(imageUrl: activity.imageUrl),
        ),
      ],
    );
  }
}
