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
      child: InkWell(
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
                color: Colors.black,
              ),
              Text(
                '$text',
                style: GoogleFonts.acme(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
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
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
               '$text',
              style: GoogleFonts.acme(
                  fontSize: 22.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
             Text(
              '$value',
              style: const TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: minus,
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.remove,
                    size: 30.0,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.blue,
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
