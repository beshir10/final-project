import 'package:finalprojectaon/Screens/Register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

import '../Widget/counter.dart';
import '../Widget/step_progress.dart';

class Verifyphone extends StatefulWidget {
  const Verifyphone({super.key});

  @override
  State<Verifyphone> createState() => _VerifyphoneState();
}

class _VerifyphoneState extends State<Verifyphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body:
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: [
                  const CustomStepProgress(totalSteps: 3, currentStep: 2),

                  const SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.only(left: 0,right: 50),
                    child: Text(
                      'Verify phone number'
                      ,
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,right: 125),
                    child: Text(
                      'Enter the verification code sent to\n '
                          '+9647700000000 via WhatsApp\n',


                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),















                  ),const SizedBox(height: 30,),
                  Pinput(
                    length:6,
                    defaultPinTheme: PinTheme(
                      height: 60,
                      width: 56,
                      textStyle: const TextStyle(
                        fontSize: 22,
                        color: Colors.blueAccent,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFFBFBFBF))
                      ),
                    ),
                  ),const SizedBox(height: 40,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.access_time_rounded,
                        size: 35,
                        color: Color(0xFFBFBFBF),

                      ),
                      countimer(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Text and Resend button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive a message?",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle resend action
                          print("Resend button clicked");
                        },
                        child: Text(
                          "Resend",
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: const Color(0xFF3C97AF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),const SizedBox(height: 50,),


                  SizedBox(height: 50,width: 345,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(color: Colors.grey),
                          ),
                          backgroundColor:
                          const Color(0xFF3C97AF)
                        // Button color based on selection
                      ),
                      onPressed:
                          () {
                        Get.to(Registerscreen());
                        },
                      // Disable if no option is selected
                      child: Row(
                        mainAxisSize: MainAxisSize.min, // Make the row fit its content
                        children: [
                          Text(
                            "Verify",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),


                    ),
                  )

















                ]
            )
        )
    );
  }
}