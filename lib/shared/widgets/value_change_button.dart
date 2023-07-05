import 'dart:async';

import 'package:flutter/material.dart';
import 'package:personal_workout_app/generated_assets/colors.gen.dart';

enum ValueChangeButtonType {
  negative,
  positive,
}

enum ValueChangeButtonDecorationType {
  roundedBottom,
  roundedTop,
  roundedAll,
}

class ValueChangeButton extends StatefulWidget {
  const ValueChangeButton({
    required this.value,
    required this.callback,
    required this.type,
    this.minValue = 1,
    this.valueChangeStep = 1,
    this.decorationType = ValueChangeButtonDecorationType.roundedAll,
    this.iconSize,
    super.key,
  });

  final int value;
  final int minValue;
  final int valueChangeStep;
  final void Function(int) callback;
  final ValueChangeButtonType type;
  final ValueChangeButtonDecorationType decorationType;
  final double? iconSize;

  @override
  State<ValueChangeButton> createState() => _ValueChangeButtonState();
}

class _ValueChangeButtonState extends State<ValueChangeButton> {
  Timer? timer;

  void _action() {
    switch (widget.type) {
      case ValueChangeButtonType.negative:
        if ((widget.value - widget.valueChangeStep) >= widget.minValue) {
          widget.callback(widget.value - widget.valueChangeStep);
        }

      case ValueChangeButtonType.positive:
        widget.callback(widget.value + widget.valueChangeStep);
    }
  }

  Icon _getIcon() {
    switch (widget.type) {
      case ValueChangeButtonType.negative:
        return const Icon(Icons.remove);

      case ValueChangeButtonType.positive:
        return const Icon(Icons.add);
    }
  }

  Color _getBackgroundColor() {
    switch (widget.type) {
      case ValueChangeButtonType.negative:
        return ColorName.cF3C1CB;

      case ValueChangeButtonType.positive:
        return ColorName.c7587FF;
    }
  }

  OutlinedBorder _getDecoration() {
    switch (widget.decorationType) {
      case ValueChangeButtonDecorationType.roundedTop:
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              12,
            ),
            topRight: Radius.circular(
              12,
            ),
          ),
        );
      case ValueChangeButtonDecorationType.roundedBottom:
        return const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              12,
            ),
            bottomRight: Radius.circular(
              12,
            ),
          ),
        );
      default:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    timer = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => timer = Timer.periodic(
        const Duration(
          milliseconds: 50,
        ),
        (timer) {
          _action();
        },
      ),
      onLongPressEnd: (_) => timer?.cancel(),
      child: IconButton.filled(
        onPressed: _action,
        icon: _getIcon(),
        style: IconButton.styleFrom(
          iconSize: widget.iconSize,
          foregroundColor: ColorName.white,
          backgroundColor: _getBackgroundColor(),
          padding: EdgeInsets.zero,
          shape: _getDecoration(),
        ),
      ),
    );
  }
}
