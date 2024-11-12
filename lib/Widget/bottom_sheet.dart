import 'package:finalprojectaon/Controller/bottom_sheet_controller.dart';
import 'package:finalprojectaon/Controller/check_box_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
final Checkboxcontroller checkbox=Get.put(Checkboxcontroller());
Bottomsheetcontrol bottomsheetcontrol =Get.put(Bottomsheetcontrol());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 492,
        padding: EdgeInsets.all(20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:5 ,
                  width: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(32),
                    color: Color(0xff61646B)
                  ),
                )
              ],
            ),


            SizedBox(height: 12,),
            Row(
              children: [
                IconButton(onPressed: (){
                  bottomsheetcontrol.Closebottomshet();
                },
                    icon: SvgPicture.asset('SvgIcon/cancel-01.svg')),

                SizedBox(width: 90,),
                Text('Filter Project',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                )
              ],

            ),
            SizedBox(height: 10,),



            Obx(()=>
                Column(
                  children: [
                    ListTile(
                    leading: Checkbox(
                      value:checkbox.isChecked[0].value ,
                      onChanged: (value)=>checkbox.checkboxselected(0,value??false),
                      activeColor: checkbox.selctedcolor[0].value,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color(0xffD1D1D6)
                          )
                      ),),
                    title: Text('Full Stack Developer'),

                  ),
                    ListTile(
                      leading: Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                            value:checkbox.isChecked[1].value ,
                            onChanged: (value)=>checkbox.checkboxselected(1,value??false),
                        activeColor: checkbox.selctedcolor[1].value,
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadiusDirectional.circular(7),
                          side: BorderSide(
                            color: Color(0xffD1D1D6),
                            width: 1,
                          )
                        ),),

                      ),
                      title: Text('Front-end Developer'),

                    ),
                    ListTile(
                      leading: Checkbox(
                        value:checkbox.isChecked[2].value ,
                        onChanged: (value)=>checkbox.checkboxselected(2,value??false),
                        activeColor: checkbox.selctedcolor[2].value,),
                      title: Text('Back-end Developer'),
                    ),
                    ListTile(
                      leading: Checkbox(
                        value:checkbox.isChecked[3].value ,
                        onChanged: (value)=>checkbox.checkboxselected(3,value??false),
                        activeColor: checkbox.selctedcolor[3].value,
                      ),
                      title: Text('Mobile Developer'),


                    ),  ],
                ),
            ),


            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    bottomsheetcontrol.Closebottomshet();
                  },
                  child: Text('Cancel Sort',
                    style: TextStyle(color: Color(0xff3C97AF),
                      fontSize: 16),),

                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(171, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(24)
                    ),
                    elevation: 0,
                    side: BorderSide(
                      color: Color(0xff3C97AF),

                    )

                  ), ),
                SizedBox(width:16 ,),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Apply',
                  style: TextStyle(color: Colors.white,
                  fontSize: 16),),

                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(24)
                      ),
                  backgroundColor: Color(0xff3C97AF),
                  minimumSize: Size(171, 56),
                    elevation: 0
                ),
                ),
              ],

            )
          ],
        ));
  }
}
