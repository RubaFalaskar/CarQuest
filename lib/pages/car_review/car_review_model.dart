import '/flutter_flow/flutter_flow_util.dart';
import 'car_review_widget.dart' show CarReviewWidget;
import 'package:flutter/material.dart';

class CarReviewModel extends FlutterFlowModel<CarReviewWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
