import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/blogpost/blogpostmobile.dart';
import 'package:ghscareplus/constants/color.dart';
import 'package:ghscareplus/constants/imageres.dart';
import 'package:ghscareplus/constants/stringres.dart';

class BlogPost extends StatefulWidget {
  const BlogPost({super.key});

  @override
  State<BlogPost> createState() => _BlogPostState();
}

class _BlogPostState extends State<BlogPost> {
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
    return width > 1000
        ? Container(
            //color: Colors.pink.shade100,
            padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  'OUR BLOG',
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Get Every Single Updates Here',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 40.0,
                            mainAxisSpacing: 20.0,
                            childAspectRatio: 2.5 / 3.5),
                    itemCount: blogList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(children: [
                        Image.asset(blogList[index]['image'], fit: BoxFit.fill),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.solidUser,
                                    color: textColor,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(blogList[index]['user']),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.calendarDays,
                                    color: textColor,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(blogList[index]['date']),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  FaIcon(
                                    FontAwesomeIcons.solidComment,
                                    color: textColor,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(blogList[index]['comments']),
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
                      ]);
                    },
                  ),
                )),
              ],
            ),
          )
        : const BlogPostMobile();
  }
}
