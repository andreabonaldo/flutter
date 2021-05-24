import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TempAcquaWidget extends StatefulWidget {
  TempAcquaWidget({Key key}) : super(key: key);

  @override
  _TempAcquaWidgetState createState() => _TempAcquaWidgetState();
}

class _TempAcquaWidgetState extends State<TempAcquaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Temperatura dell\'acqua',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Poppins',
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: Icon(
              Icons.thermostat_sharp,
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
