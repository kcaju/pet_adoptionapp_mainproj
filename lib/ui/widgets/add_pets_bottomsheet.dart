import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:petadpotion_app/constants/app_colors.dart';
import 'package:petadpotion_app/ui/widgets/custom_textfield.dart';

class AddPetsBottomsheet extends StatefulWidget {
  const AddPetsBottomsheet(
      {super.key,
      this.isLoveBird = false,
      required this.data,
      required this.documentId,
      required this.breed,
      required this.subId,
      this.collectionName,
      required this.category});
  final Map<String, dynamic> data;
  final String documentId, breed, subId, category;
  final String? collectionName;
  final bool isLoveBird;

  @override
  State<AddPetsBottomsheet> createState() => _AddPetsBottomsheetState();
}

class _AddPetsBottomsheetState extends State<AddPetsBottomsheet> {
  TextEditingController petname = TextEditingController();
  TextEditingController ownername = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController color = TextEditingController();
  TextEditingController desc = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController url = TextEditingController();
  TextEditingController phone = TextEditingController();
  final formkey = GlobalKey<FormState>();
  List<String> selectSex = ["male", 'female'];
  List<String> selectCategory = ["Dog", 'Cat', 'Bird'];
  List<String> selectBreed = [
    "Siberian-Husky",
    'Rottweiler',
    'Golden-Retriever',
    'Beagle',
    'St.Bernard',
    'British-Shorthair',
    'Persian-Cat',
    'Siberian-Cat',
    'Ragdoll',
    'Maine-Coon',
    'Macaw',
    'Cockatiel',
    'Conure',
    'Love-Birds',
    'Dove'
  ];
  String? pair;
  String? petCategory;
  String? chooseBreed;
  String? chooseSex;

  @override
  void initState() {
    super.initState();
    petCategory = widget.category;
    chooseBreed = widget.breed;
    // Set the pair variable based on the isBird property
    pair = widget.isLoveBird ? 'pair' : '';
    if (pair!.isNotEmpty) {
      selectSex.add(pair!); // Add pair to selectSex if it's not empty
    }
  }

  Future<void> updateData() async {
    var newPets = FirebaseFirestore.instance.collection("NewPets");
    var allBreeds = FirebaseFirestore.instance
        .collection("${widget.collectionName}")
        .doc(widget.documentId)
        .collection(widget.breed.toLowerCase());
    await allBreeds.add({
      'name': petname.text,
      'location': location.text,
      'price': num.parse(price.text),
      'age': num.parse(age.text),
      'sex': chooseSex,
      'color': color.text,
      'url': url.text,
      'owner': ownername.text,
      'desc': desc.text,
      'breed': chooseBreed,
      'category': petCategory,
      'phone': phone.text
    });
    await newPets.add({
      'name': petname.text,
      'location': location.text,
      'price': num.parse(price.text),
      'age': num.parse(age.text),
      'sex': chooseSex,
      'color': color.text,
      'url': url.text,
      'owner': ownername.text,
      'desc': desc.text,
      'breed': chooseBreed,
      'category': petCategory,
      'phone': phone.text,
    });
    Navigator.of(context).pop(); // Close the bottom sheet after updating
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Palette.green1,
        content: Text(
          "Your Pet is now up for Sale",
          style: TextStyle(
              color: Palette.mainblack,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        )));
  }

  Future<void> _showConfirmationDialog() async {
    return showDialog(
      context: context,
      barrierDismissible: false, // User must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Confirm Registration',
            style: TextStyle(
                color: Palette.mainblack,
                fontSize: 22,
                fontWeight: FontWeight.bold),
          ),
          content: Text(
            'Are you sure you want to register this pet for sale?',
            style: TextStyle(
                color: Palette.mainblack,
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Cancel',
                style: TextStyle(
                    color: Palette.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text(
                'Confirm',
                style: TextStyle(
                    color: Palette.blue4,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                updateData(); // Proceed to update data
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Register your pet for sale.",
                  style: TextStyle(
                      color: Palette.mainblack,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                CustomTextfield(data: "Pet's name", controller: petname),
                Row(
                  children: [
                    Expanded(
                        child: CustomTextfield(
                            data: "Owner's name", controller: ownername)),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: CustomTextfield(
                            isPhone: true,
                            data: "Phone number",
                            controller: phone)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButton(
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Palette.mainblack),
                        dropdownColor: Palette.fourth,
                        value: petCategory,
                        hint: Text(
                          "Pet Category",
                          style: TextStyle(
                              color: Palette.mainblack,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        items: List.generate(
                          selectCategory.length,
                          (index) => DropdownMenuItem(
                              value: selectCategory[index],
                              child: Text(selectCategory[index])),
                        ),
                        onChanged: (value) {
                          setState(() {
                            petCategory = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: DropdownButton(
                        alignment: Alignment.centerRight,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Palette.mainblack),
                        dropdownColor: Palette.fourth,
                        value: chooseBreed,
                        hint: Text(
                          "Breed",
                          style: TextStyle(
                              color: Palette.mainblack,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        items: List.generate(
                          selectBreed.length,
                          (index) => DropdownMenuItem(
                              value: selectBreed[index],
                              child: Text(selectBreed[index])),
                        ),
                        onChanged: (value) {
                          setState(() {
                            chooseBreed = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextfield(data: "Price", controller: price),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomTextfield(data: "Color", controller: color),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomTextfield(data: "Age", controller: age),
                    ),
                  ],
                ),
                CustomTextfield(data: "ImageUrl", controller: url),
                Row(
                  children: [
                    Expanded(
                      child: CustomTextfield(
                          data: "Location", controller: location),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: DropdownButton(
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Palette.mainblack),
                        dropdownColor: Palette.fourth,
                        value: chooseSex,
                        hint: Text(
                          "Sex",
                          style: TextStyle(
                              color: Palette.mainblack,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                        items: List.generate(
                          selectSex.length,
                          (index) => DropdownMenuItem(
                              value: selectSex[index],
                              child: Text(selectSex[index])),
                        ),
                        onChanged: (value) {
                          setState(() {
                            chooseSex = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                CustomTextfield(
                    maxlines: 5, data: "Description", controller: desc),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {
                        _showConfirmationDialog();
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Palette.mainblack)),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            color: Palette.mainWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
