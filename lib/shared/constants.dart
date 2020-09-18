import 'package:flutter/material.dart';

class Gradients {
  static Color startColor = Colors.redAccent[400];
  static Color endColor = Color(0xffe72d88);

  static LinearGradient dashboardButtonGradient = LinearGradient(

      // stops: [0.1, 1],

      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.redAccent[400], Color(0xffe72d88)]);

  static const LinearGradient sosGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    // stops: [0.5, 1],
    // center: Alignment.topLeft,
    // radius: 0.5,
    colors: <Color>[Colors.redAccent, Color(0xffe72f8b)],
    tileMode: TileMode.repeated,
  );

  static const Color mainColor = Color(0xffff9100);

  static Function(BuildContext, Widget, Function) showMyDialog =
      (BuildContext context, Widget child, Function onPressed) =>
          showGeneralDialog(
              barrierColor: Colors.black.withOpacity(0.5),
              transitionBuilder: (context, a1, a2, widget) {
                // Constants.listenShake();
                return Transform.scale(
                  scale: a1.value,
                  child: Opacity(
                    opacity: a1.value,
                    child: AlertDialog(
                      backgroundColor: Colors.transparent,
                      shape: CircleBorder(
                          // side: BorderSide(width: 0),
                          ),
                      // title: Text('Hello!!'),
                      content: Container(
                        padding: EdgeInsets.all(20),

                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(253, 137, 1, 0.65)),

                        // duration: Duration(seconds: 1),

                        child: Container(
                          constraints:
                              BoxConstraints.tight(Size.fromRadius(300)),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            // gradient: LinearGradient(

                            //     // stops: [0.1, 1],

                            //     begin: Alignment.topLeft,
                            //     end: Alignment.bottomRight,
                            //     colors: [
                            //       Colors.redAccent[400],
                            //       Color(0xffe72d88)
                            //     ]),
                          ),
                          child: FlatButton(
                              shape: CircleBorder(),
                              onPressed: onPressed,
                              child: child),
                        ),
                      ),
                    ),
                  ),
                );
              },
              transitionDuration: Duration(milliseconds: 200),
              barrierDismissible: true,
              barrierLabel: '',
              context: context,
              pageBuilder: (context, animation1, animation2) {});
}

class Constants {
  static IconData policeIcon = Icons.control_point_duplicate;
  static IconData sosIcon = Icons.scanner;
  static IconData arIcon = Icons.panorama_fish_eye;
  static IconData shakeIcon = Icons.vibration;
  static IconData selfDefenseIcon = Icons.perm_device_information;
  static IconData sirenIcon = Icons.notification_important;
  static IconData taxiIcon = Icons.local_taxi;
  static IconData firIcon = Icons.find_in_page;
}
