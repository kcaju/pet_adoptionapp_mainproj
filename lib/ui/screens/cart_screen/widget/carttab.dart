import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';

class Carttab extends StatelessWidget {
  const Carttab(
      {super.key,
      required this.name,
      required this.url,
      required this.price,
      required this.qty,
      required this.status,
      this.isDecrement,
      this.isIncrement,
      this.removeCartItem});
  final String name, url, status;
  final num price, qty;
  final VoidCallback? isDecrement, isIncrement, removeCartItem;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 100,
        ),
        Card(
          color: Palette.blue1,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(url))),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // overflow: TextOverflow.ellipsis,
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text(
                            "${price} ₹",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Spacer(),
                          Text(
                            status,
                            style: TextStyle(
                                color: Palette.blue5,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: isDecrement,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Palette.green1,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "$qty",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: isIncrement,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Palette.green1,
                                  shape: BoxShape.circle),
                              child: Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 5,
            child: InkWell(
              onTap: removeCartItem,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: Palette.mainblack, shape: BoxShape.circle),
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: Palette.red,
                ),
              ),
            )),
      ],
    );
    ;
  }
}
