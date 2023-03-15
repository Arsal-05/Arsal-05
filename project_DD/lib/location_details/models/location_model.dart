class Activity {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;
  final double rating;

  const Activity(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl,
      required this.price,
      required this.rating});
  static const List<Activity> activities = [
    Activity(
        id: '1',
        title: 'Location 1',
        description:
            'The full passage of standard Lorem Ipsum copy is: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
        imageUrl:
            'https://imgmedia.lbb.in/media/2020/12/5fd21d75c43b770ee99ba052_1607605621313.jpg',
        price: 89.99,
        rating: 3),
    Activity(
        id: '2',
        title: 'Location 2',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://imgmediagumlet.lbb.in/media/2020/12/5fd21c6fc43b770ee99b9edf_1607605359516.jpg?fm=webp&w=750&h=500&dpr=1',
        price: 100.99,
        rating: 5),
    Activity(
        id: '3',
        title: 'Location 3',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://imgmediagumlet.lbb.in/media/2021/03/6052f3a8d845f4305c22fdf7_1616049064369.jpg?fm=webp&w=750&h=500&dpr=1',
        price: 100.99,
        rating: 5),
    Activity(
        id: '4',
        title: 'Location 4',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZdx_rzK1NrKhME-sDDuHquAFngt4jpppZ4Q&usqp=CAU',
        price: 100.99,
        rating: 5),
    Activity(
        id: '5',
        title: 'Location 5',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2jeRkTWBddGiTtG1q2T7pQINB8pkJU8SqAg&usqp=CAU',
        price: 100.99,
        rating: 5),
    Activity(
        id: '6',
        title: 'Location 6',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrgr9E9-0wqSSiGDssy5yMcIU-g6diieERiw&usqp=CAU',
        price: 100.99,
        rating: 5),
    Activity(
        id: '7',
        title: 'Location 7',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrgr9E9-0wqSSiGDssy5yMcIU-g6diieERiw&usqp=CAU',
        price: 100.99,
        rating: 5),
    Activity(
        id: '8',
        title: 'Location 8',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://imgmediagumlet.lbb.in/media/2021/03/6052f3a8d845f4305c22fdf7_1616049064369.jpg?fm=webp&w=750&h=500&dpr=1',
        price: 100.99,
        rating: 5),
    Activity(
        id: '9',
        title: 'Location 9',
        description:
            'this is a lovely place to travel you can enjoy with your family',
        imageUrl:
            'https://imgmedia.lbb.in/media/2020/12/5fd21d75c43b770ee99ba052_1607605621313.jpg',
        price: 89.99,
        rating: 4),
  ];
}
