// import 'package:flutter/widgets.dart';

// class BackgroundPic extends StatelessWidget {
//   final Widget child;
//   final ImageProvider image;
//   const BackgroundPic({super.key, required this.child, required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedSwitcher(
//       duration: Duration(microseconds: 1000),
//       child: Container(
//         decoration: BoxDecoration(
//             image: DecorationImage(image: image),
//             border: Border.all(),
//             borderRadius: BorderRadius.circular(2)),
//         child: child,
//       ),
//     );
//   }
// }

import 'package:flutter/widgets.dart';

class BackgroundPic extends StatelessWidget {
  final Widget child;
  final ImageProvider image;
  final Duration transitionDuration;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;

  const BackgroundPic({
    super.key,
    required this.child,
    required this.image,
    this.transitionDuration = const Duration(milliseconds: 3000),
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: transitionDuration,
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.easeInOut,
      child: Container(
        key: ValueKey<ImageProvider>(image),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: fit,
            alignment: alignment,
          ),
          border: borderColor != null && borderWidth != null
              ? Border.all(
                  color: borderColor!,
                  width: borderWidth!,
                )
              : null,
          borderRadius: borderRadius != null
              ? BorderRadius.circular(borderRadius!)
              : null,
        ),
        child: child,
      ),
    );
  }
}
