import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_car_admin_widget.dart' show EditCarAdminWidget;
import 'package:flutter/material.dart';

class EditCarAdminModel extends FlutterFlowModel<EditCarAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for CarName widget.
  FocusNode? carNameFocusNode;
  TextEditingController? carNameTextController;
  String? Function(BuildContext, String?)? carNameTextControllerValidator;
  // State field(s) for Manufacturer widget.
  FocusNode? manufacturerFocusNode;
  TextEditingController? manufacturerTextController;
  String? Function(BuildContext, String?)? manufacturerTextControllerValidator;
  // State field(s) for YearOfManufacture widget.
  FocusNode? yearOfManufactureFocusNode;
  TextEditingController? yearOfManufactureTextController;
  String? Function(BuildContext, String?)?
      yearOfManufactureTextControllerValidator;
  // State field(s) for DescriptionOfCar widget.
  FocusNode? descriptionOfCarFocusNode1;
  TextEditingController? descriptionOfCarTextController1;
  String? Function(BuildContext, String?)?
      descriptionOfCarTextController1Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DescriptionOfCar widget.
  FocusNode? descriptionOfCarFocusNode2;
  TextEditingController? descriptionOfCarTextController2;
  String? Function(BuildContext, String?)?
      descriptionOfCarTextController2Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    carNameFocusNode?.dispose();
    carNameTextController?.dispose();

    manufacturerFocusNode?.dispose();
    manufacturerTextController?.dispose();

    yearOfManufactureFocusNode?.dispose();
    yearOfManufactureTextController?.dispose();

    descriptionOfCarFocusNode1?.dispose();
    descriptionOfCarTextController1?.dispose();

    descriptionOfCarFocusNode2?.dispose();
    descriptionOfCarTextController2?.dispose();
  }
}
