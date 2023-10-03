import 'package:flutter/material.dart';

class Details_Screen extends StatefulWidget {
  const Details_Screen({required this.blog});
  final blog;

  @override
  State<Details_Screen> createState() => _Details_ScreenState();
}

class _Details_ScreenState extends State<Details_Screen> {
  int _likes = 0;
  int _dislikes = 0;

  /* @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _likes = widget.blog['likes'];
    _dislikes = widget.blog['dislikes'];
  }

  void _incrementLikes() {
    setState(() {
      _likes++;
    });
  }

  void _incrementDislikes() {
    setState(() {
      _dislikes++;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.blog['title'],
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == 3) {}
              ;
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'option1',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
              const PopupMenuItem(
                  value: 2,
                  child: Text(
                    'option2',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
              const PopupMenuItem(
                  value: 3,
                  child: Text(
                    'option3',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  )),
            ],
            color: Colors.white,
            iconSize: 28,
            padding: const EdgeInsets.symmetric(vertical: 20),
          )
        ],
      ),
      body: Column(
        children: [
          if (widget.blog['image_url'] != null)
            Image.network(widget.blog['image_url']),
          SizedBox(
            height: 20,
          ),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
                'This type of blog post can be really fun to write, but remember to be wise. Controversy is always newsworthy — just look at the local news, theyre always reporting on different controversies'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () {
                  setState(() {
                    _likes++;
                  });
                },
              ),
              Text('Likes: $_likes'),
              IconButton(
                icon: Icon(Icons.thumb_down),
                onPressed: () {
                  setState(() {
                    _dislikes++;
                  });
                },
              ),
              Text('Dislikes: $_dislikes'),
            ],
          )
        ],
      ),
    );
  }
}
