import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/Projects/projectsWeb.dart';
import 'package:portfolio/sections/about/about.dart';
import 'package:portfolio/sections/portfolio/portfolio.dart';
import 'package:portfolio/widgets/navbar.dart';
import 'package:portfolio/widgets/sidebar.dart';

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NabBar(),
//     );
//   }
// }
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ScrollController _scrollController;
  String _curNavItem;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  List<Widget> _screensList = [
    homeBody(),
    About(),
    ProjectsWeb(),
    Contact(),    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          alignment: Alignment.bottomLeft,
          children: [
            CustomScrollView(
              physics:
                  PageScrollPhysics(), // use NeverScrollableScrollPhysics() to block user scrolling
              controller: _scrollController,
              slivers: <Widget>[
                // This is just SliverAppBar wrapped in InterheritedWidget called NavState
                // You can use just SliverAppBar
                SliverAppBar(
                  pinned: true,
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    super.widget));
                      },
                      child: GlowText("VK",
                          style: GoogleFonts.ubuntu(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                            fontSize: 25,
                          )),
                    ),
                  ),
                  actions: [
                    NavbarItem(
                        text: "Home",
                        onTap: () {
                          scrollTo("Home");
                        }),
                    NavbarItem(
                        text: "About",
                        onTap: () {
                          scrollTo("About");
                        }),
                    NavbarItem(
                        text: "Contact",
                        onTap: () {
                          scrollTo("Contact");
                        }),
                    OutlineButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Coming Soon")));
                      },
                      child: Text("Resume"),
                      hoverColor: Colors.red[400],
                      borderSide: BorderSide(color: Colors.red),
                    ),
                  ],
                ),

                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return _screensList[index];
                    },
                    childCount: _screensList.length,
                  ),
                ),
              ],
            ),
            SideBar(),
          ],
        ),
      ),
    );
  }

  void scrollTo(String title) {
    var SizeConfig = MediaQuery.of(context).size;
    double offsetHome = 0;
    double offsetAbout = SizeConfig.height;
    double offsetBlog = 2 * SizeConfig.height;
    double offsetProjects = 3 * SizeConfig.height;
    double offset = 0;
    switch (title) {
      case "HOME":
        offset = offsetHome;
        break;
      case "About":
        offset = offsetAbout;
        break;
      case "Contact":
        offset = offsetBlog;
        break;
      case "PROJECTS":
        offset = offsetProjects;
        break;
    }
    setState(() {
      _curNavItem = title;
    });
    // animate to the pag
    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutQuart,
    );
  }
}

class homeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        spacing: 150,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hi,my name is",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 18,
                      color: Colors.green[300]
                      // decoration: TextDecoration.underline,
                      )),
              Text("Vivek Khandelwal.",
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      fontSize: 80,
                      color: Color(0xfeCCD6F6)
                      // decoration: TextDecoration.underline,
                      )),
              Text(
                "I love to build things for Android",
                style: GoogleFonts.roboto(
                    color: Color(0xfe7E8AA7),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          LayoutBuilder(builder: (context, box) {
            if (MediaQuery.of(context).size.width > 760) {
              return Image.asset(
                "intro.png",
                width: 300,
                height: 300,
              );
            }
            return Container();
          })
        ],
      ),
    );
  }
}
