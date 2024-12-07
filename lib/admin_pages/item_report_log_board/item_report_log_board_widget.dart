import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/page_elements_admin/item_record/item_record_widget.dart';
import '/page_elements_main/nav_bar/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'item_report_log_board_model.dart';
export 'item_report_log_board_model.dart';

class ItemReportLogBoardWidget extends StatefulWidget {
  const ItemReportLogBoardWidget({
    super.key,
    this.backGround,
  });

  final FFUploadedFile? backGround;

  @override
  State<ItemReportLogBoardWidget> createState() =>
      _ItemReportLogBoardWidgetState();
}

class _ItemReportLogBoardWidgetState extends State<ItemReportLogBoardWidget> {
  late ItemReportLogBoardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemReportLogBoardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiItemReportResult = await GetItemReportsCall.call();

      if ((_model.apiItemReportResult?.succeeded ?? true)) {
        _model.itemReportListView =
            ((_model.apiItemReportResult?.jsonBody ?? '')
                    .toList()
                    .map<ItemReportListViewModelStruct?>(
                        ItemReportListViewModelStruct.maybeFromMap)
                    .toList() as Iterable<ItemReportListViewModelStruct?>)
                .withoutNulls
                .toList()
                .cast<ItemReportListViewModelStruct>();
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'itemReportLogBoard',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            appBar: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            )
                ? AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    title: Container(
                      width: 1842.0,
                      height: 68.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        border: Border.all(
                          color: Colors.white,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('homePage');
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Group_2.png',
                                width: 130.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  650.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Admin Item Report Records',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: Colors.black,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    actions: const [],
                    centerTitle: false,
                    toolbarHeight: 80.0,
                    elevation: 2.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 1920.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  alignment: const AlignmentDirectional(0.0, -0.4),
                                  image: Image.asset(
                                    'assets/images/1730261572968_(Large).jpg',
                                  ).image,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Flexible(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Container(
                                          width: 280.0,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Divider(
                                                  height: 12.0,
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Admin Navigation',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  200),
                                                          curve:
                                                              Curves.easeInOut,
                                                          width:
                                                              double.infinity,
                                                          height: 44.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'adminDashboard');
                                                                },
                                                                text:
                                                                    'Dashboard',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .dashboard,
                                                                  size: 25.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 225.0,
                                                                  height: double
                                                                      .infinity,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  hoverColor: const Color(
                                                                      0xFF6191FF),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  200),
                                                          curve:
                                                              Curves.easeInOut,
                                                          width:
                                                              double.infinity,
                                                          height: 44.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'studentLogBoard');
                                                                },
                                                                text:
                                                                    'Student Log',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .location_history_sharp,
                                                                  size: 25.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 225.0,
                                                                  height: double
                                                                      .infinity,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  hoverColor: const Color(
                                                                      0xFF6191FF),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  200),
                                                          curve:
                                                              Curves.easeInOut,
                                                          width:
                                                              double.infinity,
                                                          height: 44.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'studentReportRecord');
                                                                },
                                                                text:
                                                                    'Student Reports',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .nature_people,
                                                                  size: 25.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 225.0,
                                                                  height: double
                                                                      .infinity,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  hoverColor: const Color(
                                                                      0xFF6191FF),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        child:
                                                            AnimatedContainer(
                                                          duration: const Duration(
                                                              milliseconds:
                                                                  200),
                                                          curve:
                                                              Curves.easeInOut,
                                                          width:
                                                              double.infinity,
                                                          height: 44.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            shape: BoxShape
                                                                .rectangle,
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'itemReportLogBoard');
                                                                },
                                                                text:
                                                                    'Item Reports',
                                                                icon: const Icon(
                                                                  Icons.report,
                                                                  size: 25.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 225.0,
                                                                  height: double
                                                                      .infinity,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Inter',
                                                                        color: Colors
                                                                            .white,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  hoverColor: const Color(
                                                                      0xFF6191FF),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                                Divider(
                                                  height: 12.0,
                                                  thickness: 2.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 12.0,
                                                          16.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          GoRouter.of(context)
                                                              .prepareAuthEvent();
                                                          await authManager
                                                              .signOut();
                                                          GoRouter.of(context)
                                                              .clearRedirectLocation();

                                                          context.goNamedAuth(
                                                              'homePage',
                                                              context.mounted);
                                                        },
                                                        text: 'Logout',
                                                        icon: const Icon(
                                                          Icons.login_rounded,
                                                          size: 25.0,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 225.0,
                                                          height: 40.0,
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          iconPadding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          elevation: 0.0,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          hoverColor:
                                                              const Color(0xFFFF8484),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Flexible(
                                            child: Container(
                                              width: 1600.0,
                                              height: 920.0,
                                              decoration: BoxDecoration(
                                                color: const Color(0xE9343434),
                                                borderRadius:
                                                    BorderRadius.circular(24.0),
                                              ),
                                              child: Visibility(
                                                visible: responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .stretch,
                                                    children: [
                                                      if (responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                        tabletLandscape: false,
                                                      ))
                                                        Flexible(
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Divider(
                                                                        thickness:
                                                                            2.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                            tablet:
                                                                                false,
                                                                            tabletLandscape:
                                                                                false,
                                                                          ))
                                                                            Container(
                                                                              width: 1533.0,
                                                                              height: 800.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.circular(24.0),
                                                                              ),
                                                                              child: Visibility(
                                                                                visible: responsiveVisibility(
                                                                                  context: context,
                                                                                  phone: false,
                                                                                  tablet: false,
                                                                                  tabletLandscape: false,
                                                                                ),
                                                                                child: Builder(
                                                                                  builder: (context) {
                                                                                    final itemReportedList = _model.itemReportListView.toList();

                                                                                    return FlutterFlowDataTable<ItemReportListViewModelStruct>(
                                                                                      controller: _model.paginatedDataTableController,
                                                                                      data: itemReportedList,
                                                                                      columnsBuilder: (onSortChanged) => [
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Visibility(
                                                                                              visible: responsiveVisibility(
                                                                                                context: context,
                                                                                                phone: false,
                                                                                                tablet: false,
                                                                                                tabletLandscape: false,
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Reported List',
                                                                                                  textAlign: TextAlign.center,
                                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        color: Colors.black,
                                                                                                        fontSize: 25.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Reporter',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 25.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Date Reported',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 25.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Status',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 25.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        DataColumn2(
                                                                                          label: DefaultTextStyle.merge(
                                                                                            softWrap: true,
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: Text(
                                                                                                'Action',
                                                                                                textAlign: TextAlign.center,
                                                                                                style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                      fontFamily: 'Inter',
                                                                                                      color: Colors.black,
                                                                                                      fontSize: 25.0,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                      dataRowBuilder: (itemReportedListItem, itemReportedListIndex, selected, onSelectChanged) => DataRow(
                                                                                        color: WidgetStateProperty.all(
                                                                                          itemReportedListIndex % 2 == 0 ? FlutterFlowTheme.of(context).secondaryBackground : FlutterFlowTheme.of(context).primaryBackground,
                                                                                        ),
                                                                                        cells: [
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                itemReportedListItem.title,
                                                                                                'Title',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontSize: 20.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                itemReportedListItem.reportedBy,
                                                                                                'Reporter',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontSize: 20.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                itemReportedListItem.dateCreated,
                                                                                                'Date Reported',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontSize: 20.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                itemReportedListItem.reportStatus,
                                                                                                'Status',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    fontSize: 20.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                          Visibility(
                                                                                            visible: responsiveVisibility(
                                                                                              context: context,
                                                                                              phone: false,
                                                                                              tablet: false,
                                                                                              tabletLandscape: false,
                                                                                            ),
                                                                                            child: Align(
                                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                              child: FFButtonWidget(
                                                                                                onPressed: () async {
                                                                                                  _model.getItemReportViewResult = await GetReportCall.call(
                                                                                                    id: itemReportedListItem.itemReportId,
                                                                                                  );

                                                                                                  if ((_model.getItemReportViewResult?.succeeded ?? true)) {
                                                                                                    _model.updateItemReportBoolStruct(
                                                                                                      (e) => e
                                                                                                        ..reportId = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.reportId
                                                                                                        ..name = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.name
                                                                                                        ..roomName = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.roomName
                                                                                                        ..userName = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.userName
                                                                                                        ..title = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.title
                                                                                                        ..description = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.description
                                                                                                        ..dateCreated = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.dateCreated
                                                                                                        ..itemName = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.itemName
                                                                                                        ..reportTypeId = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.reportTypeId
                                                                                                        ..isNoisy = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isNoisy
                                                                                                        ..isCussing = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isCussing
                                                                                                        ..isEating = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isEating
                                                                                                        ..isUntidy = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isUntidy
                                                                                                        ..isDamaged = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isDamaged
                                                                                                        ..isNotWorking = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isNotWorking
                                                                                                        ..isResolved = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.isResolved
                                                                                                        ..action = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.action
                                                                                                        ..studentId = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.studentId
                                                                                                        ..roomId = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.roomId
                                                                                                        ..userId = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.userId
                                                                                                        ..idNumber = ReportLogViewModelStruct.maybeFromMap((_model.getItemReportViewResult?.jsonBody ?? ''))?.idNumber,
                                                                                                    );
                                                                                                    safeSetState(() {});
                                                                                                  } else {
                                                                                                    await showDialog(
                                                                                                      context: context,
                                                                                                      builder: (alertDialogContext) {
                                                                                                        return AlertDialog(
                                                                                                          title: const Text('Data Error'),
                                                                                                          content: const Text('Data does not exist.'),
                                                                                                          actions: [
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                              child: const Text('Ok'),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                  }

                                                                                                  _model.updateStudentViewModelStruct(
                                                                                                    (e) => e..studentId = _model.studentViewModel?.studentId,
                                                                                                  );
                                                                                                  safeSetState(() {});
                                                                                                  await showModalBottomSheet(
                                                                                                    isScrollControlled: true,
                                                                                                    backgroundColor: Colors.transparent,
                                                                                                    enableDrag: false,
                                                                                                    context: context,
                                                                                                    builder: (context) {
                                                                                                      return GestureDetector(
                                                                                                        onTap: () => FocusScope.of(context).unfocus(),
                                                                                                        child: Padding(
                                                                                                          padding: MediaQuery.viewInsetsOf(context),
                                                                                                          child: ItemRecordWidget(
                                                                                                            studentName: _model.itemReportBool!.name,
                                                                                                            itemName: _model.itemReportBool!.itemName,
                                                                                                            isDamaged: _model.itemReportBool!.isDamaged,
                                                                                                            isNotWorking: _model.itemReportBool!.isNotWorking,
                                                                                                            isReplaced: _model.itemReportBool!.isDamaged,
                                                                                                            isRepaired: _model.itemReportBool!.isNotWorking,
                                                                                                            itemDescription: _model.itemReportBool!.description,
                                                                                                            action: _model.itemReportBool!.action,
                                                                                                          ),
                                                                                                        ),
                                                                                                      );
                                                                                                    },
                                                                                                  ).then((value) => safeSetState(() {}));

                                                                                                  safeSetState(() {});
                                                                                                },
                                                                                                text: 'View Item Report',
                                                                                                options: FFButtonOptions(
                                                                                                  height: 40.0,
                                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                                                                                                  iconAlignment: IconAlignment.start,
                                                                                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                                  color: const Color(0xFF5146C9),
                                                                                                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                        fontFamily: 'Inter',
                                                                                                        color: Colors.white,
                                                                                                        fontSize: 20.0,
                                                                                                        letterSpacing: 0.0,
                                                                                                      ),
                                                                                                  elevation: 0.0,
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ].map((c) => DataCell(c)).toList(),
                                                                                      ),
                                                                                      paginated: true,
                                                                                      selectable: false,
                                                                                      hidePaginator: false,
                                                                                      showFirstLastButtons: true,
                                                                                      height: double.infinity,
                                                                                      headingRowHeight: 56.0,
                                                                                      dataRowHeight: 48.0,
                                                                                      columnSpacing: 20.0,
                                                                                      headingRowColor: const Color(0x80105DFB),
                                                                                      borderRadius: BorderRadius.circular(24.0),
                                                                                      addHorizontalDivider: true,
                                                                                      addTopAndBottomDivider: true,
                                                                                      hideDefaultHorizontalDivider: false,
                                                                                      horizontalDividerColor: Colors.black,
                                                                                      horizontalDividerThickness: 2.0,
                                                                                      addVerticalDivider: true,
                                                                                      verticalDividerColor: Colors.black,
                                                                                      verticalDividerThickness: 2.0,
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Divider(
                                                                        thickness:
                                                                            2.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                      ),
                                                                    ],
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
                                            ),
                                          ),
                                      ],
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 1920.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: wrapWithModel(
                          model: _model.navBarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const NavBarWidget(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
