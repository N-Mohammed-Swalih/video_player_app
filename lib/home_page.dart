import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<HomePage> {
  final _controller = YoutubePlayerController();
  @override
  void initState() {
    super.initState();
    // TO load a video by its unique id
    _controller.loadVideoById(videoId: "gvmomKDqs-s");
  }

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var coaches = [
      "https://scontent.fccj8-1.fna.fbcdn.net/v/t1.6435-9/34308271_2070459782995357_2054338108136095744_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=5f2048&_nc_ohc=sTOMhOK4njcAX-Az7eX&_nc_ht=scontent.fccj8-1.fna&oh=00_AfAOu09ytiLW4G0f0-x0S0t8PCwfgZXjzNXrxvSdZcZVng&oe=661CD570",
      "https://scontent.fccj8-1.fna.fbcdn.net/v/t39.30808-6/262340458_463195645165927_6699357745291596014_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=5f2048&_nc_ohc=HefiA5svZTsAX-UBRma&_nc_ht=scontent.fccj8-1.fna&oh=00_AfCaoNH7TS-ImWp4bf8C4LDphL4nFOCr99ok5t2MtDbXTQ&oe=65F9AAFD",
      "https://scontent.cdninstagram.com/v/t39.30808-6/377424076_17997514031152742_1912361479548514388_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE3OTYuc2RyIn0&_nc_ht=scontent.cdninstagram.com&_nc_cat=102&_nc_ohc=kuDGhHjzcNoAX8DrqVw&edm=APs17CUAAAAA&ccb=7-5&ig_cache_key=MzE4ODE0MDgzNTI0NjMzNTA0MQ%3D%3D.2-ccb7-5&oh=00_AfBQagz6m-Hdr6nJee83yFHi6z-rkfm0Z2CKQ3C70AmcTg&oe=65FB4436&_nc_sid=10d13b",
      "https://media.licdn.com/dms/image/C5603AQFZlr3fRWFQEw/profile-displayphoto-shrink_800_800/0/1660210327950?e=2147483647&v=beta&t=bMGFbWaVHx1XxzGiQK1TtU_rec0OxPkjubMn4A4O4CQ",
    ];

    var coachesname = [
      "Casac Benjali",
      "Ebadu Rahman",
      "Riyas Hakkim",
      "Ar Ranjith"
    ];
    var salesvideoposter = [];

    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: SafeArea(
        child: ListView(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Image.asset("assets/logo.png",
                        height: MediaQuery.of(context).size.height * .14,
                        width: MediaQuery.of(context).size.width * .14),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: RichText(
                          text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: ' Biz',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white)),
                        TextSpan(
                          text: ' Learning',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      ]))),
                ]),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
            YoutubePlayer(
              controller: _controller, // Controler that we created earlier
              aspectRatio: 16 / 9,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20),
              child: Text(
                "Business Coach",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.26,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coaches.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 180,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(coaches[index]),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0, top: 20),
              child: Text(
                "Top Videos",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coaches.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisExtent: 270,
                    mainAxisSpacing: 5,
                  ),
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(salesvideoposter[index]),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
