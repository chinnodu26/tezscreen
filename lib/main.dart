import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Select your language'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> languages = [
  ' English',
  ' Hindi',
  ' Telugu',
  ' Tamil',
  ' Kannada',
  ' Bengali'
];
List<String> convert_languages = [
  '       ',
  'हिंदी',
  'తెలుగు',
  'தமிழ்',
  'ಕನ್ನಡ',
  'বাংলা'
];
// late int tappedIndex;
// late int tappedIndex2;

// @override
// void initState() {
//   super.initState();
//   tappedIndex = 0;
//   tappedIndex2 = 0;
// }
int selected = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left,
            size: 28,
            color: Color(0xff1C1C1C),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )),
            Image.asset(
              "images/image1.png",
              width: 34,
              height: 36,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Languages available now",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: 14)),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Container(
            height: 550,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: languages.length,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        width: 382,
                        height: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: selected == index
                              ? Color(0xff114435)
                              : Color(0xffE5E5E5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "${languages[index]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: selected == index
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    " ${convert_languages[index]}",
                                    style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                            color: selected == index
                                                ? Colors.white
                                                : Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)),
                                  ),
                                ],
                              ),
                              if (index == selected)
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      selected = index;
                                    });
                                  },
                                  child: Icon(Icons.check_circle,
                                      size: 20,
                                      color: selected == index
                                          ? Colors.white
                                          : Colors.white),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider()),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff114435),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
