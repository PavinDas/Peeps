import 'package:flutter/material.dart';
import 'package:peeps/constants/consts.dart';
import 'package:peeps/constants/images.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,

      //* AppBar
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Image.asset(
          whiteLabel,
          scale: 18,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: textColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: textColor,
            ),
          ),
        ],
      ),

      //* Body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            //!

            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  color: secColor,
                  height: 260,
                  width: double.infinity,
                ),
              ),
            ),
            //!
          ],
        ),
      ),
    );
  }
}
