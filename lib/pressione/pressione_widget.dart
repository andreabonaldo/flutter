import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PressioneWidget extends StatefulWidget {
  PressioneWidget({Key key}) : super(key: key);

  @override
  _PressioneWidgetState createState() => _PressioneWidgetState();
}

class _PressioneWidgetState extends State<PressioneWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'pressione',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: Icon(
              Icons.compress,
              color: Colors.black,
              size: 40,
            ),
          )
        ],
        centerTitle: true,
        elevation: 4,
      ),
    );
  }
}
