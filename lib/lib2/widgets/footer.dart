import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.transparent.withOpacity(0.5),
                  ),
                  child: Center(
                    child: CupertinoButton(
                      onPressed: () {},
                      child: const Text(
                        "Made by Sumit Singh with Flutter 3.24",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
  }
}