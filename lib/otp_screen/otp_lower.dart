import 'package:flutter/material.dart';
import '../../widgets/app_buttons.dart';
import '../../widgets/otp_textform.dart';

class OtpLower extends StatelessWidget {
  const OtpLower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              SizedBox(height: 10,),
              Text("Enter Verification Code", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              SizedBox(height: 40*2,),
              OtpForm(),

              SizedBox(height: 20,),
              Text(
                "Please enter OTP received by SMS",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height:50,),
              Text(
                "Don't receive the OTP",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Text(
                  "Resend OTP",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize:15,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onTap: ()
                {
                  print("OPT resend");
                },
              ),
              SizedBox(height: 40,),
              AppButtons(text: "Verify"),
              SizedBox(height: 20,),
              SizedBox(
                height: 35,
                width: 320,
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  color: Colors.deepPurple,
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>  AddCompanyInfo()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular((7.0)),
                  ),
                  child: Text("Verify to Reset Password", textAlign: TextAlign.center,style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                  ),

                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}


class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return
      Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              child: OtpTextForm(),
            ),
            SizedBox(width: 20,),
            SizedBox(
              width:50,
              child: OtpTextForm(),
            ),
            SizedBox(width: 20,),
            SizedBox(
              width:50,
              child: OtpTextForm(),
            ),
            SizedBox(width: 20,),
            SizedBox(
              width: 50,
              child: OtpTextForm(),
            ),
          ],
        ),
      );

  }
}


