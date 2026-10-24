import 'package:dsw60288/utils/AppText.dart';
import 'package:dsw60288/utils/appColors.dart';
import 'package:dsw60288/utils/appImages.dart';
import 'package:flutter/material.dart';

import '../register/registerViews.dart';

class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 62, width: 62),
                Image(image: AssetImage(Appimages.logo), height: 129),
                SizedBox(height: 21),
                _SingIn(),
                SizedBox(height: 42,),
                TextFormField(),
                SizedBox(height: 40,),
                TextFormField(),
                ElevatedButton(
                  child: const Text('Register'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const Registerview(),
                      ),
                    );
                  },
                ),
                GestureDetector(
                    onTap: (){},
                    child: Text(Apptext.SingUp, style: TextStyle(fontSize: 30),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
Widget _SingIn(){
  return  Align(alignment:.topLeft, child: Text(
    Apptext.SingInText,
    style: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: Appcolors.PurpleColor,
    ),
  ),);
}
