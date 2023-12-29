import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spark_cart/src/screens/home/components/camera_app.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        textCapitalization: TextCapitalization.words,
        onChanged: onChanged,
        style: const TextStyle(color: Colors.deepOrange),
        cursorColor: Colors.deepOrange,
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.deepOrange, fontSize: 18),
            prefixIcon: const Icon(
              CupertinoIcons.search,
              size: 22,
              color: Colors.deepOrange,
            ),
            suffixIcon: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraApp()),
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: const Center(
                  child: Icon(
                    CupertinoIcons.camera,
                    color: Colors.deepOrange,
                    size: 35,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
