import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IsmaleCard extends StatelessWidget {
  final VoidCallback? onTap;
  final String? image;
  final String? text;
  final Color? color;
   const IsmaleCard({super.key, this.onTap, this.image, this.text,this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            color: color
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('$image'),
                height: 120.0,
                width: 150.0,
                color: Colors.white,
              ),
              Text(
                '$text',
                style: GoogleFonts.acme(
                    fontSize: 30.0,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultCard extends StatelessWidget{
  final String ?text;
  final int ?value;
  final VoidCallback ?minus;
  final VoidCallback ?plus;
  const DefaultCard({super.key,this.text,this.value,this.minus,this.plus});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff1d1e32),
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
               '$text',
              style: GoogleFonts.acme(
                  fontSize: 22.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '$value',
              style: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: minus,
                  backgroundColor: const Color(0xff4e515e),
                  child: const Icon(
                    Icons.remove,
                    size: 30.0,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  backgroundColor: const Color(0xff4e515e),
                  onPressed:plus,
                  child: const Icon(
                    Icons.add,
                    size: 30.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DefaultBottom extends StatelessWidget{
  final VoidCallback ?onPressed;
  final String ?text;
  const DefaultBottom({super.key, this.onPressed,this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight:Radius.circular(10.0),
        ),
        color: Color(0xfff50d56),
      ),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(
            vertical: 12.0
        ),
        onPressed:onPressed,
        child:  Text(
          '$text',
          style: GoogleFonts.acme(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

// class DefaultSlider extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//             horizontal: 20.0, vertical: 10.0),
//         child: Container(
//           decoration: BoxDecoration(
//               color: const Color(0xff111327),
//               borderRadius: BorderRadius.circular(10.0)),
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'HEIGHT',
//                 style: GoogleFonts.acme(
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(
//                 height: 10.0,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.baseline,
//                 textBaseline: TextBaseline.alphabetic,
//                 children: [
//                   Text(
//                     '${cubit.height.round()}',
//                     style: const TextStyle(
//                         fontSize: 50.0,
//                         fontWeight: FontWeight.w900,
//                         color: Colors.white),
//                   ),
//                   const Text(
//                     'cm',
//                     style: TextStyle(
//                         fontSize: 20.0, color: Colors.white),
//                   ),
//                 ],
//               ),
//               Slider(
//                 min: 100,
//                 max: 230,
//                 activeColor: Colors.white,
//                 thumbColor: const Color(0xfff50d56),
//                 inactiveColor: Colors.white,
//                 value: cubit.height,
//                 onChanged: (value) {
//                   // setState(() {
//                   //   height=value;
//                   // });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



