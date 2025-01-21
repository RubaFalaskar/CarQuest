import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'car_details_model.dart';
export 'car_details_model.dart';

class CarDetailsWidget extends StatefulWidget {
  const CarDetailsWidget({super.key});

  @override
  State<CarDetailsWidget> createState() => _CarDetailsWidgetState();
}

class _CarDetailsWidgetState extends State<CarDetailsWidget>
    with TickerProviderStateMixin {
  late CarDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarDetailsModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'stackOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 1200.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.6, 0.6),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'stackOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1400.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1400.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 1400.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.6, 0.6),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'stackOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 1600.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 1600.0.ms,
            duration: 400.0.ms,
            begin: const Offset(0.6, 0.6),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: const Color(0xFF526C70),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('homePage');
            },
          ),
          title: Text(
            'Car Details',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter Tight',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/PHOTO-2024-11-12-11-17-03.jpeg',
                              width: 390.0,
                              height: 238.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/1720107822porsche-car-logo-png.png',
                                    width: 70.0,
                                    height: 50.0,
                                    fit: BoxFit.contain,
                                    alignment: const Alignment(0.0, 0.0),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 1.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 10.0, 0.0, 0.0),
                                    child: SelectionArea(
                                        child: Text(
                                      'Porsche 911 Turbo S  2024',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: const Color(0xFF143969),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: 354.0,
                                height: 115.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFFE6E6E6),
                                    width: 2.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SelectionArea(
                                            child: Text(
                                          'The Porsche 911 is an iconic sports car that combines high performance with elegant design. It features a rear-engine layout, offering unique balance and an enjoyable driving experience. Known for its powerful engines and sleek design, it merges luxury with excitement.',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto Condensed',
                                                letterSpacing: 0.0,
                                                lineHeight: 1.3,
                                              ),
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 486.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 8.0, 24.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                const Icon(
                                                  Icons.star_sharp,
                                                  color: Color(0xFF143969),
                                                  size: 24.0,
                                                ),
                                                const Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -2.0, 0.0),
                                                  child: Icon(
                                                    Icons.star_sharp,
                                                    color: Color(0xFF143969),
                                                    size: 24.0,
                                                  ),
                                                ),
                                                const Icon(
                                                  Icons.star_sharp,
                                                  color: Color(0xFF143969),
                                                  size: 24.0,
                                                ),
                                                const Icon(
                                                  Icons.star_sharp,
                                                  color: Color(0xFF143969),
                                                  size: 24.0,
                                                ),
                                                const Icon(
                                                  Icons.star_half,
                                                  color: Color(0xFF143969),
                                                  size: 24.0,
                                                ),
                                                Flexible(
                                                  child: Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '4.7',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '(2.5k reviews)',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'CarReview');
                                                    },
                                                    child: Icon(
                                                      Icons
                                                          .keyboard_arrow_right_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ).animateOnPageLoad(animationsMap[
                                                'rowOnPageLoadAnimation']!),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 24.0, 16.0, 24.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                SizedBox(
                                                  width: 110.0,
                                                  height: 120.0,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 110.0,
                                                          height: 130.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.04, -0.79),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                const CheckboxThemeData(
                                                              shape:
                                                                  CircleBorder(),
                                                            ),
                                                            unselectedWidgetColor:
                                                                const Color(
                                                                    0xFF143969),
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue1 ??=
                                                                true,
                                                            onChanged:
                                                                (newValue) async {
                                                              safeSetState(() =>
                                                                  _model.checkboxValue1 =
                                                                      newValue!);
                                                            },
                                                            side: const BorderSide(
                                                              width: 2,
                                                              color: Color(
                                                                  0xFF143969),
                                                            ),
                                                            activeColor: const Color(
                                                                0xFF143969),
                                                            checkColor: const Color(
                                                                0xFF143969),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.45),
                                                        child: Text(
                                                          '\$129.99',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Standard',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'stackOnPageLoadAnimation1']!),
                                                SizedBox(
                                                  width: 110.0,
                                                  height: 120.0,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 110.0,
                                                          height: 110.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model
                                                              .checkboxValue2 ==
                                                          false)
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  'carDetailsHF');
                                                            },
                                                            child: Container(
                                                              width: 110.0,
                                                              height: 130.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: _model
                                                                            .checkboxValue1 ==
                                                                        true
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                shape: BoxShape
                                                                    .rectangle,
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.04, -0.79),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                const CheckboxThemeData(
                                                              shape:
                                                                  CircleBorder(),
                                                            ),
                                                            unselectedWidgetColor:
                                                                const Color(
                                                                    0xFF143969),
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue2 ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              safeSetState(() =>
                                                                  _model.checkboxValue2 =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                if (Navigator.of(
                                                                        context)
                                                                    .canPop()) {
                                                                  context.pop();
                                                                }
                                                                context.pushNamed(
                                                                    'carDetailsHF');
                                                              }
                                                            },
                                                            side: const BorderSide(
                                                              width: 2,
                                                              color: Color(
                                                                  0xFF143969),
                                                            ),
                                                            activeColor: const Color(
                                                                0xFF143969),
                                                            checkColor: const Color(
                                                                0xFF143969),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.45),
                                                        child: Text(
                                                          '\$129.99',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Half Full ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'stackOnPageLoadAnimation2']!),
                                                SizedBox(
                                                  width: 110.0,
                                                  height: 120.0,
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Container(
                                                          width: 110.0,
                                                          height: 130.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              width: 2.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      if (_model
                                                              .checkboxValue3 ==
                                                          false)
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                  'carDetailsF');
                                                            },
                                                            child: Container(
                                                              width: 110.0,
                                                              height: 130.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: _model
                                                                        .checkboxValue3!
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.04, -0.79),
                                                        child: Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                const CheckboxThemeData(
                                                              shape:
                                                                  CircleBorder(),
                                                            ),
                                                            unselectedWidgetColor:
                                                                const Color(
                                                                    0xFF143969),
                                                          ),
                                                          child: Checkbox(
                                                            value: _model
                                                                    .checkboxValue3 ??=
                                                                false,
                                                            onChanged:
                                                                (newValue) async {
                                                              safeSetState(() =>
                                                                  _model.checkboxValue3 =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                context.pushNamed(
                                                                    'carDetailsF');
                                                              }
                                                            },
                                                            side: const BorderSide(
                                                              width: 2,
                                                              color: Color(
                                                                  0xFF143969),
                                                            ),
                                                            activeColor: const Color(
                                                                0xFF143969),
                                                            checkColor: const Color(
                                                                0xFF143969),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.45),
                                                        child: Text(
                                                          '\$149.99',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Text(
                                                          'Full',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'stackOnPageLoadAnimation3']!),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 354.0,
                                            height: 180.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(5.0),
                                                bottomRight:
                                                    Radius.circular(5.0),
                                                topLeft: Radius.circular(5.0),
                                                topRight: Radius.circular(5.0),
                                              ),
                                              border: Border.all(
                                                color: const Color(0xFFE6E6E6),
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 10.0,
                                                                0.0, 0.0),
                                                    child: SelectionArea(
                                                        child: Text(
                                                      'Standard Configuration:',
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto Condensed',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    )),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(10.0),
                                                    child: Text(
                                                      '- 3.8L twin-turbo flat-six engine, 640 HP, 0-100 km/h in 2.7 seconds.\n- Porsche Ceramic Composite Brakes (PCCB).\n- LED Matrix headlights with PDLS+.\n- 10.9-inch touchscreen, wireless Apple CarPlay.\n- Dual-zone climate control for hot weather.\n- Arabic-supported navigation optimized for local maps.',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Roboto Condensed',
                                                            letterSpacing: 0.0,
                                                            lineHeight: 1.3,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 360.0,
                                    height: 121.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0x0000E6E6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
