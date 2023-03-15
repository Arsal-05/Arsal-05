import 'package:flutter/material.dart';

class ClipperContainer extends StatelessWidget {
  const ClipperContainer({
    Key? key,
    this.height = 400,
    this.imageUrl,
    this.color,
  }) : super(key: key);
  final double height;
  final String? imageUrl;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _customClipper(),
      child: Container(
        height: height,
        color: (imageUrl == null) ? const Color(0xFFE8AA42) : null,
        decoration: (imageUrl != null)
            ? BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                ),
              )
            : null,
      ),
    );
  }
}

class _customClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.85,
        size.width * 0.25, size.height * 0.85);
    path.lineTo(size.width * 0.7, size.height * 0.85);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.85, size.width * 1, size.height * 1);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
