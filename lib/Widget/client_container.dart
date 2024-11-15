import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ClientContainer extends StatefulWidget {
  const ClientContainer({super.key});

  @override
  State<ClientContainer> createState() => _ClientContainerState();
}

class _ClientContainerState extends State<ClientContainer> {
  @override
  Widget build(BuildContext context) {
    return
      Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      height: 468,
      width: 345,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(12),
          boxShadow: [
            BoxShadow(
                blurRadius: 8,
                spreadRadius: 0,
                offset: Offset(0, 2),
                color: Color(0xff3C97AF14))
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 20, horizontal: 20),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  // backgroundImage: AssetImage('Image/ProfileImage.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Client Name',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Posted 2 hours age',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff808080)),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                ///available icon
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Available',
                    style: TextStyle(color: Color(0xff4DB251)),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffDDF8E7),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ///dotes icon
                InkWell(
                  onTap: () {

                  },
                  child: SvgPicture.asset('SvgIcon/dotes (1).svg'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Loking for Full-Stack Developer\nWith experience +2 years',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('to build a responsive, user-focused web application. Must be skilled in both front-end and back-end development...See more'),
          ),


          SizedBox(height: 20,),
          ///photo container
          Container(
            height: 176,
            width: 313,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Image/image 2.png'))
            ),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              children: [
                SvgPicture.asset('SvgIcon/like.svg'),
                SizedBox(width: 4,),
                Text('like',
                  style: TextStyle(color: Color(0xff999999),
                      fontSize: 14),),

                SizedBox(width: 40,),
                SvgPicture.asset('SvgIcon/comment.svg'),
                SizedBox(width: 4,),
                Text('comment',
                  style: TextStyle(color: Color(0xff999999),
                      fontSize: 14),),
              ],
            ),
          )



        ],
      ),
    );
  }
}
