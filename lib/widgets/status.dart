import 'package:flutter/material.dart';

class AvatarStatus extends StatefulWidget {
  AvatarStatus(this.user, this.urlImage, this.live,
      {Key? key, this.myStories = false})
      : super(key: key);
  String urlImage;

  String user;
  bool live;
  bool myStories;

  @override
  State<AvatarStatus> createState() => _AvatarStatusState();
}

class _AvatarStatusState extends State<AvatarStatus> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromARGB(255, 197, 130, 5),
                    Color.fromARGB(255, 216, 5, 170)
                  ]),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3.5),
                height: 80,
                width: 80,
                child: CircleAvatar(
                    radius: 50, backgroundImage: NetworkImage(widget.urlImage)),
              ),
              widget.live
                  ? SizedBox(
                      height: 80,
                      width: 80,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(172, 0, 35, 1),
                              Color.fromRGBO(190, 0, 113, 1),
                            ]),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Text(
                            'AO VIVO',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  : Container(),
              widget.myStories
                  ? SizedBox(
                      height: 80,
                      width: 80,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ))),
                      ),
                    )
                  : Container()
            ],
          ),
          Text(
            widget.user,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
