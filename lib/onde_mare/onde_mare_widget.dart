import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OndeMareWidget extends StatefulWidget {
  OndeMareWidget({Key key}) : super(key: key);

  @override
  _OndeMareWidgetState createState() => _OndeMareWidgetState();
}

class _OndeMareWidgetState extends State<OndeMareWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Onde mare',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: Icon(
              Icons.waves,
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
