import 'dart:async';
import 'dart:math';

import 'package:Difesa/shared/constants.dart';
import 'package:Difesa/shared/widgets/circular_button.dart';
import 'package:Difesa/shared/widgets/gradient.dart';
import 'package:flutter/material.dart';

import 'package:animated_widgets/animated_widgets.dart';

class MainDashboard extends StatefulWidget {
  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }

  void _runAnimation() async {
    while (true) {
      await _animationController.forward();
      await _animationController.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    // FlutterIntroductionTooltip.showBottomTutorialOnWidget(
    // context, key, Colors.red, () {}, 'Hi', 'subtitle', 'Close');

    return Scaffold(
      backgroundColor: Color(0xfff6f8f8),
      body: Stack(
        // mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: GradientWidget(
                  child: Text(
                    'SELECT AN OPTION',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  gradient: Gradients.dashboardButtonGradient,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child:

                      ///`Buttons`
                      Wrap(
                    alignment: WrapAlignment.center,
                    direction: Axis.horizontal,
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      CircularButtonDashboard(
                          icon: Constants.sosIcon,
                          text: 'SOS',
                          onPressed: () => () {}),
                      CircularButtonDashboard(
                        icon: Constants.policeIcon,
                        text: 'Police Stations',
                      ),
                      CircularButtonDashboard(
                        icon: Constants.taxiIcon,
                        text: 'Taxi/Cab',
                      ),
                      CircularButtonDashboard(
                        icon: Constants.selfDefenseIcon,
                        text: 'Self Defense',
                      ),
                      CircularButtonDashboard(
                        icon: Constants.arIcon,
                        text: 'AR Detection',
                      ),
                      CircularButtonDashboard(
                        icon: Constants.sirenIcon,
                        text: 'Play Siren',
                      ),
                      CircularButtonDashboard(
                        icon: Constants.firIcon,
                        text: 'FIR',
                      ),
                      CircularButtonDashboard(
                        icon: Constants.shakeIcon,
                        text: 'Shake',
                        onPressed: () {
                          Gradients.showMyDialog(
                            context,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ShakeAnimatedWidget(
                                  enabled: true,
                                  duration: Duration(milliseconds: 300),
                                  shakeAngle: Rotation.deg(z: 5),
                                  curve: Curves.linear,
                                  child: Transform.rotate(
                                    angle: (pi / 180) * -35,
                                    child: Icon(Constants.shakeIcon,
                                        size: 70, color: Color(0xffffc400)),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Shake to capture and activate emergency',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    // fontWeight:
                                    // FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            () {},
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
