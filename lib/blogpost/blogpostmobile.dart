import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/constants/stringres.dart';

class BlogPostMobile extends StatefulWidget {
  const BlogPostMobile({super.key});

  @override
  State<BlogPostMobile> createState() => _BlogPostMobileState();
}

class _BlogPostMobileState extends State<BlogPostMobile> {
  late List<bool> isHoverBlog;

  @override
  void initState() {
    super.initState();
    isHoverBlog = List.generate(3, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    final List<Map<String, dynamic>> blogList = [
      {
        'user': 'Admin',
        'date': 'JAN 22,2024',
        'comments': '5 COMMENTS',
        'heading': blogheading,
        'desc': blogdesc,
        'image': performsurgery
      },
      {
        'user': 'Admin',
        'date': 'JAN 22,2024',
        'comments': '3 COMMENTS',
        'heading': blogheading,
        'desc': blogdesc,
        'image': orthosurgery
      },
      {
        'user': 'Admin',
        'date': 'JAN 22,2024',
        'comments': '7 COMMENTS',
        'heading': blogheading,
        'desc': blogdesc,
        'image': dentistsurgery
      },
    ];
    return SizedBox(
      height: width < 600
          ? MediaQuery.of(context).size.height * 2.1
          : MediaQuery.of(context).size.height * 2.7,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            'OUR BLOG',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Get Every Single Updates Here',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: blogList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
                      child: Column(children: [
                        Image.asset(blogList[index]['image'], fit: BoxFit.fill),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidUser,
                                    color: textColor,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    blogList[index]['user'],
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.calendarDays,
                                    color: textColor,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    blogList[index]['date'],
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.solidComment,
                                    color: textColor,
                                    size: 14,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    blogList[index]['comments'],
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onEnter: (_) =>
                                    setState(() => isHoverBlog[index] = true),
                                onExit: (_) =>
                                    setState(() => isHoverBlog[index] = false),
                                child: Text(
                                  blogList[index]['heading'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16,
                                      color: isHoverBlog[index]
                                          ? textColor
                                          : Colors.black),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                blogList[index]['desc'],
                                style: const TextStyle(fontSize: 14),
                              )
                            ],
                          ),
                        )
                      ]),
                    );
                  }))
        ],
      ),
    );
  }
}
