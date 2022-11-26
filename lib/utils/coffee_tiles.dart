import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeTiles extends StatelessWidget {
  final String pic;
  final String details;
  const CoffeeTiles({required this.pic, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black//Color(0xff674736),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(pic),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    width: 300.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 55),
                  child: Text(
                    details,
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'This is an amazing coffee at a discounted rate',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, color: Colors.white,
                height: 1.2),

              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0,0.0,8.0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$ 4.0'),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.orange,
                    ),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
