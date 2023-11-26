import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class CheckButtonComponent extends StatelessWidget {
  CheckButtonComponent({
    super.key,
  });

  final Color defaultColor = const Color(0xffFFA3A3);
  final Color selectedColor = const Color(0xffEC7676);
  final RxBool isSelected = false.obs;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Material(
      child: Center(
        child: Obx(
          () {
            return Material(
              child: SizedBox(
                width: 280,
                height: 200,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (isSelected.value == false) {
                          isSelected.value = true;
                        } else {
                          isSelected.value = false;
                        }
                      },
                      borderRadius: BorderRadius.circular(
                        height * 0.02,
                      ),
                      child: Ink(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                              isSelected.value ? selectedColor : defaultColor,
                          borderRadius: BorderRadius.circular(
                            height * .014,
                          ),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0, 5),
                              blurRadius: 12,
                              color: Colors.blueGrey.withOpacity(.2),
                              spreadRadius: -5,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            height * .014,
                          ),
                          child: Stack(
                            children: [
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: Text(
                                    "Button",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                              ),
                              if (isSelected.value)
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Container(
                                    width: height * .05,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(
                                          height * .014,
                                        ),
                                        bottomLeft: Radius.circular(
                                          height * .014,
                                        ),
                                      ),
                                      color: const Color(0xffd62764),
                                    ),
                                    child: Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: height * .02,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
