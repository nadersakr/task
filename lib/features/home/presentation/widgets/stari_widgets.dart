import 'package:flutter/material.dart';

class StairList extends StatelessWidget {
  final List<Widget> children;
  final double stepHeight; // vertical offset each time
  final double? spacing; // null = auto spacing
  final bool expand; // fill available width

  const StairList({
    super.key,
    required this.children,
    this.stepHeight = 10,
    this.spacing,
    this.expand = true,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Auto spacing if none provided
        double effectiveSpacing = spacing ??
            ((constraints.maxWidth -
                        (children.length * _maxChildWidth(context))) /
                    (children.length - 1))
                .clamp(0, double.infinity);

        return Row(
          mainAxisSize: expand ? MainAxisSize.max : MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: List.generate(children.length, (index) {
            return Padding(
              padding: EdgeInsets.only(
                  right: index == children.length - 1 ? 0 : effectiveSpacing),
              child: Transform.translate(
                offset: Offset(0, -index * stepHeight),
                child: children[index],
              ),
            );
          }),
        );
      },
    );
  }

  double _maxChildWidth(BuildContext context) {
    // This assumes all children have intrinsic width (like Icon, Text, etc.)
    // If you want exact measurement, wrap children in `IntrinsicWidth` in the parent.
    return children
        .map((w) => _estimateWidth(w, context))
        .reduce((a, b) => a > b ? a : b);
  }

  double _estimateWidth(Widget widget, BuildContext context) {
    if (widget is Icon) return widget.size ?? IconTheme.of(context).size ?? 24;
    if (widget is Text) return (widget.data?.length ?? 0) * 8.0;
    return 40.0; // fallback guess
  }
}
