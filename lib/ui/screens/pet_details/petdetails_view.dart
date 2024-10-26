import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/screens/pet_details/petdetails_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class PetdetailsView extends StatefulWidget {
  const PetdetailsView(
      {super.key,
      required this.name,
      required this.color,
      required this.owner,
      required this.desc,
      required this.sex,
      required this.location,
      required this.url,
      required this.price,
      required this.age,
      required this.petId,
      required this.phone});
  final String name, color, owner, desc, sex, location, url, phone;
  final num price, age;
  final String petId;

  @override
  State<PetdetailsView> createState() => _PetdetailsViewState();
}

class _PetdetailsViewState extends State<PetdetailsView> {
  bool isSaved = false;

  @override
  void initState() {
    _checkIfSaved();
    super.initState();
  }

  Future<void> _checkIfSaved() async {
    final viewModel = context.read<PetdetailsViewmodel>();
    final querySnapshot = await viewModel.favoriteList
        .where('petId', isEqualTo: widget.petId)
        .get();
    setState(() {
      isSaved = querySnapshot.docs.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PetdetailsViewmodel>.reactive(
      viewModelBuilder: () {
        return PetdetailsViewmodel();
      },
      builder: (context, viewModel, child) {
        return Scaffold(
          body: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Palette.mainblack,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                    alignment: Alignment.topLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            viewModel.goBack();
                          },
                          child: CircleAvatar(
                            backgroundColor: Palette.mainblack,
                            child: Icon(
                              Icons.pets,
                              size: 35,
                              color: Palette.mainWhite,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isSaved = !isSaved;
                              if (isSaved) {
                                context.read<PetdetailsViewmodel>().isFav(
                                    petId: widget.petId,
                                    petname: widget.name,
                                    phone: widget.phone,
                                    price: widget.price,
                                    url: widget.url,
                                    age: widget.age,
                                    color: widget.color,
                                    desc: widget.desc,
                                    location: widget.location,
                                    owner: widget.owner,
                                    sex: widget.sex,
                                    context: context);
                              } else {
                                context
                                    .read<PetdetailsViewmodel>()
                                    .removeFav(widget.petId, context);
                              }
                            });
                          },
                          child: CircleAvatar(
                            child: Icon(
                              isSaved ? Icons.favorite : Icons.favorite_outline,
                              color: Palette.red,
                            ),
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(widget.url))),
                  ),
                ),
                Container(
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        //details column
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Text(
                                      "${widget.price} ₹",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.pin_drop_sharp,
                                      color: Palette.brown,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      widget.location,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Palette.mainblack,
                                          fontSize: 25),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Sex",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            widget.sex,
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Age",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            "${widget.age} Years",
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.blue1)),
                                    ),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Color",
                                            style: TextStyle(
                                                color: Palette.green,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            widget.color,
                                            style: TextStyle(
                                                color: Palette.mainblack,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border:
                                              Border.all(color: Palette.grey)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    // CircleAvatar(
                                    //   radius: 25,
                                    //   backgroundImage:
                                    //       Assets.images.profile1.image().image,
                                    // ),
                                    // SizedBox(
                                    //   width: 10,
                                    // ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Owned by :",
                                          style: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          widget.owner,
                                          style: TextStyle(
                                              color: Palette.mainblack,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    InkWell(
                                      onTap: () async {
                                        //make a call
                                        final Uri url = Uri(
                                            scheme: 'tel', path: widget.phone);
                                        if (await canLaunchUrl(url)) {
                                          await launchUrl(url);
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  backgroundColor:
                                                      Palette.green1,
                                                  content: Text(
                                                    "Couldn't connect the call",
                                                    style: TextStyle(
                                                        color:
                                                            Palette.mainblack,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18),
                                                  )));
                                        }
                                      },
                                      child: CircleAvatar(
                                        child: Icon(
                                          Icons.call,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                //description
                                Text(
                                  widget.desc,
                                  style: TextStyle(
                                      color: Palette.mainblack,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Palette.blue1)),
                              onPressed: () {
                                viewModel.navigate(
                                    widget.name, widget.url, widget.price);
                              },
                              child: Text(
                                "Adopt me",
                                style: TextStyle(
                                    color: Palette.mainblack,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      color: Palette.mainWhite),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
