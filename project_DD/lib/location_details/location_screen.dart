import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:project_dd/hotel_recommendations/widgets/Dropdownwidget.dart';
import 'package:project_dd/location_details/locations_details.dart';
import 'package:project_dd/location_details/models/location_model.dart';
import 'package:project_dd/location_details/widgets/customheader.dart';

class Locationscreen extends StatelessWidget {
  const Locationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Activity> activities = Activity.activities;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const CustomHeader(
            title: 'Locations',
          ),
          Dropdownclass(values: ['Rawalpindi', 'Islamabad'], width: width),
          _LocationMasonryGrid(width: width, activities: activities),
        ],
      ),
    );
  }
}

class _LocationMasonryGrid extends StatelessWidget {
  const _LocationMasonryGrid({
    Key? key,
    this.masonryCardHeights = const [200, 250, 300],
    required this.width,
    required this.activities,
  }) : super(key: key);
  final List<double> masonryCardHeights;
  final double width;
  final List<Activity> activities;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(10.0),
        itemCount: 9,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        itemBuilder: (context, index) {
          Activity activity = activities[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LocationDetailsScreen(
                            activity: activity,
                          )));
            },
            child: Column(
              children: [
                Hero(
                  tag: '${activity.id}_${activity.title}',
                  child: Container(
                    height: masonryCardHeights[index % 3],
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: NetworkImage(activity.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  activity.title,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 13.0,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          );
        });
  }
}
