import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nep_blog/presentation/widgets/status_full.dart';

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  height: 100,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 71,
                          margin: const EdgeInsets.only(
                              left: 15.0, right: 15, top: 25, bottom: 5),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple[600]!, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://pyxis.nymag.com/v1/imgs/180/c21/43215cdda0adde4e5caefe7a24791a0a7f-blackpink-mac.2x.rsocial.w600.jpg',
                            ),
                          )),
                      Positioned(
                        bottom: 7,
                        right:
                            15, //give the values according to your requirement
                        child: Material(
                            color: Colors.deepPurple,
                            elevation: 10,
                            borderRadius: BorderRadius.circular(100),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Sound Byte',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  height: 100,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 71,
                          margin: const EdgeInsets.only(
                              left: 12.0, top: 21, bottom: 0),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://www.grazia.fr/wp-content/uploads/grazia/2022/12/bestimage_00592153_000063-scaled-1.jpg',
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Chris Pyne',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext context) => const StatusFull(),
                );

                Navigator.of(context).push(route);
              },
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    height: 100,
                    child: Stack(
                      children: <Widget>[
                        Container(
                            height: 78,
                            width: 71,
                            margin: const EdgeInsets.only(
                                left: 20.0, top: 25, bottom: 5),
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.deepPurple[600]!, width: 2),
                                borderRadius: BorderRadius.circular(140)),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://pagesix.com/wp-content/uploads/sites/3/2021/06/selena-gomez-1.jpg?quality=75&strip=all',
                              ),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      'Matt Redman',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          fontSize: 12,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  height: 100,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 71,
                          margin: const EdgeInsets.only(
                              left: 25.0, top: 25, bottom: 5),
                          padding: const EdgeInsets.all(2.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.deepPurple[600]!, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F21%2F2022%2F11%2F03%2FGettyImages-1438548026-2000.jpg',
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Virat Kholi',
                    style: GoogleFonts.lato(
                        color: Colors.grey[700],
                        fontSize: 12,
                        letterSpacing: 1,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
