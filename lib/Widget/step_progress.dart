import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';



class CustomStepProgress extends StatefulWidget {
  final int totalSteps;
  final int currentStep;
  final double selectedSize;
  final double unselectedSize;
  final Color selectedColor;
  final Color unselectedColor;
  final padding;
  const CustomStepProgress({
    Key? key,
    required this.totalSteps,
    required this.currentStep,
    this.selectedSize = 8,
    this.unselectedSize = 7,
    this.selectedColor = const Color(0xFF3C97AF),
    this.unselectedColor = const Color(0xFFBFBFBF),
    this.padding =4,
  }) : super(key: key);

  @override
  State<CustomStepProgress> createState() => _CustomStepProgressState();
}

class _CustomStepProgressState extends State<CustomStepProgress> {
  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: widget.totalSteps,
      currentStep: widget.currentStep,
      selectedSize: widget.selectedSize,
      unselectedSize: widget.unselectedSize,
      selectedColor: widget.selectedColor,
      unselectedColor: widget.unselectedColor,
      roundedEdges: Radius.circular(10),
      padding: 4,
    );
  }
}