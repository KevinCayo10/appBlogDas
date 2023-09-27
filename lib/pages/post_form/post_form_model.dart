import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PostFormModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for clave_post widget.
  TextEditingController? clavePostController;
  String? Function(BuildContext, String?)? clavePostControllerValidator;
  // State field(s) for autor_post widget.
  TextEditingController? autorPostController;
  String? Function(BuildContext, String?)? autorPostControllerValidator;
  // State field(s) for titulo_post widget.
  TextEditingController? tituloPostController;
  String? Function(BuildContext, String?)? tituloPostControllerValidator;
  // State field(s) for intro_post widget.
  TextEditingController? introPostController;
  String? Function(BuildContext, String?)? introPostControllerValidator;
  // State field(s) for cate_post widget.
  TextEditingController? catePostController;
  String? Function(BuildContext, String?)? catePostControllerValidator;
  // State field(s) for info_post widget.
  TextEditingController? infoPostController;
  String? Function(BuildContext, String?)? infoPostControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    clavePostController?.dispose();
    autorPostController?.dispose();
    tituloPostController?.dispose();
    introPostController?.dispose();
    catePostController?.dispose();
    infoPostController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
