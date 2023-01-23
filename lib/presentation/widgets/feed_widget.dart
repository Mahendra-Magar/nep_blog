import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FivthFeedUI extends StatelessWidget {
  const FivthFeedUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/media/EjX_TCnUYAEE5i5.jpg:large',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 13),
                child: Text(
                  'Pranpriya Manobal',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '1 hr',
                  style: GoogleFonts.lato(
                      color: Colors.grey[500],
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Text(
            'Lalisa Manobal known mononymously as Lisa, is a Thai rapper, singer and dancer.',
            style: GoogleFonts.lato(
                color: Colors.grey[600],
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
          child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              elevation: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.network(
                    'https://media.vogue.co.uk/photos/5f899ba85aee98b446e726d4/master/pass/MAC%20PROJECT%20L.jpg'),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/189/189671.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    '1k',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 22.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/6460/6460733.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    '155',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 22.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3925/3925154.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    '50',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
            padding: EdgeInsets.only(),
            child: Divider(
              color: Colors.grey,
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://pbs.twimg.com/media/EjX_TCnUYAEE5i5.jpg:large',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 13),
                child: Text(
                  'Pranpriya Manobal',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 16,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  '3 hr',
                  style: GoogleFonts.lato(
                      color: Colors.grey[500],
                      fontSize: 15,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
          child: Text(
            'Lalisa Manobal known mononymously as Lisa, is a Thai rapper, singer and dancer. She is a member of the South Korean girl group Blackpink. ',
            style: GoogleFonts.lato(
                color: Colors.grey[600],
                fontSize: 15,
                letterSpacing: 1,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 15),
          child: Material(
              borderRadius: const BorderRadius.all(Radius.circular(40)),
              elevation: 6,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                child: Image.network(
                    'https://kenh14cdn.com/thumb_w/600/203336854389633024/2021/4/16/photo1618549260677-16185492608751468653747.jpg'),
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/189/189671.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    '105',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 22.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/6460/6460733.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    '55',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 22.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3925/3925154.png',
                      height: 30,
                    ),
                  ),
                  Text(
                    '7',
                    style: GoogleFonts.averageSans(
                        color: Colors.grey[700],
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
