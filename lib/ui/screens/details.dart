import 'package:covid19_tracker_application/repositories/enums.dart';
import 'package:covid19_tracker_application/ui/widgets/learn.dart';
import 'package:covid19_tracker_application/ui/widgets/noNetwork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var connectionStatus = Provider.of<ConnectivityStatus>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: <Widget>[
            Text(
              'Covid-19 ',
              // textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Facts',
              // textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                color: Color(0xFF325384),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          SvgPicture.asset('assets/facts/undraw-learn-qa.svg'),
        ],
      ),
      body: connectionStatus == ConnectivityStatus.offline
          ? NoNetwork()
          : Learn(),
    );
  }
}
