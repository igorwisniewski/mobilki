import 'package:dsw60288/utils/AppText.dart';
import 'package:dsw60288/utils/appColors.dart';
import 'package:dsw60288/utils/appImages.dart';
import 'package:dsw60288/views/widgets/basicTextFormField.dart';
import 'package:flutter/material.dart';

import '../register/registerViews.dart';

class Loginview extends StatefulWidget {
  const Loginview({super.key});

  @override
  State<Loginview> createState() => _LoginviewState();
}

class _LoginviewState extends State<Loginview> {
  @override
  Widget build(BuildContext context) {
    var boolValue = false;
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
                Basictextformfield(initialValue: 'email',),
                SizedBox(height: 40,),
                Basictextformfield(initialValue: 'passowrd',),
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
                    onTap: (){

                    },
                    child: Text(Apptext.SingUp, style: TextStyle(fontSize: 30),)
                ),
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
