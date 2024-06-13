import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:intl/intl.dart';
import 'package:tro/Authentification/Signup.dart';
import 'package:tro/Authentification/login.dart';
import 'package:tro/Componants/List_Of_States.dart';
import 'package:tro/Componants/SelectChip.dart';
import 'package:tro/Componants/SizebaleTextField.dart';
import 'package:tro/Componants/SquaretTile.dart';
import 'package:tro/Componants/textfiled.dart';
import 'package:tro/Authentification/LOginChoice.dart';
import 'package:tro/Authentification/loginOrsignup.dart';
import 'package:tro/Authentification/signin.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tro/constants/Size.dart';

class GuideSignup extends StatefulWidget {
  const GuideSignup({super.key});
  @override
  State<StatefulWidget> createState() {
    ;
    // TODO: implement createState
    return _GuideSignup();
  }
}

class _GuideSignup extends State<GuideSignup> {
  List<String> selectedItems = [];
  TextEditingController datecontroller = TextEditingController();
  TextEditingController _controller = TextEditingController();
  FocusNode _Focusenode = FocusNode();
  TextEditingController Lastnamecontroller = TextEditingController();
   bool isSelected = false;
  bool ismen = false;
  bool iswoemn = false;

  final WhatDoYouDo = TextEditingController();
 
  void _openMultiSelect() async {
    final List<String> items = ["English", "Francais", "Italian", "Arabic"];
    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(
          items: items,
          Text: "choose your language ",
        );
      },
    );

    if (results != null) {
      setState(() {
        selectedItems = results;
      });
    }
  }

  List<String> SelectedItems = [];
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>    LoginChoice()),);
          },

        ),
        title: Text("personnal informations"),),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        const SizedBox(height: 50),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Fill in your informations",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: 150,
            width: 180,
            child: Image.asset("lib/photos/4722714.jpg"),
          ),
        ]),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "chose your spoken languages",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            minimumSize: Size(350, 60),
          ),
          onPressed: _openMultiSelect,
          child: const Text(
            "Please select the languages you speak ",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 56, 53, 53)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          children: selectedItems
              .map((item) => Chip(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    label: Text(item),
                    onDeleted: () {
                      setState(() {
                        selectedItems.remove(item);
                      });
                    },
                  ))
              .toList(),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "enter your birthdate ",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            focusNode: _Focusenode,
            controller: datecontroller,
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.calendar_month,
              ),
              hintText: " MM/DD/YYYY",
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(108, 167, 165, 165),),
                borderRadius:
                    BorderRadius.circular(10.0), // Set borderRadius here
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(108, 255, 255, 255)),
                borderRadius:
                    BorderRadius.circular(10.0), // Set borderRadius here
              ),
              fillColor: const Color.fromARGB(255, 255, 255, 255),
              filled: true,
            ),
            // readOnly: true,
            onTap: () async {
              _Focusenode.requestFocus();
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2025));

              if (pickeddate != null) {
                setState(() {
                  datecontroller.text =
                      DateFormat("MM/dd/yyyy").format(pickeddate);
                });
              }
            },
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Text(
              "Where are you currently located ? ",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 16,
                fontWeight: FontWeight.bold,
                //font fam to add later
              ),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TypeAheadField(
  noItemsFoundBuilder: (context) => const SizedBox(
    height: 50,
    child: Center(
      child: Text("No Item Found "),
    ),
  ),
  suggestionsCallback: (value) => ListOfStates.getSuggestion(value),
  itemBuilder: (context, String suggestion) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Text(
        suggestion,
        overflow: TextOverflow.ellipsis,
      ),
    );
  },
  debounceDuration: const Duration(milliseconds: 400),
  textFieldConfiguration: TextFieldConfiguration(
    decoration: InputDecoration(
      hintText: "search",
      prefixIcon: Icon(Icons.search),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(108, 167, 165, 165),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(108, 179, 177, 177),
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      fillColor: const Color.fromARGB(255, 255, 255, 255),
      filled: true,
    ),
  ),
  onSuggestionSelected: (String suggestion) {
    setState(() {
      _controller.text = suggestion;
    });
  },
)

            ],
          ),
        ),

        
         
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "choose your grnder  ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                      ismen = true;
                      iswoemn = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected && ismen && !iswoemn
                          ? Colors.blue // Change color when selected
                          : Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected && ismen && !iswoemn
                              ? Colors.blue
                              : Color.fromARGB(255, 255, 255, 255), // Change border color when selected
                          width: 2), // Increase border width when selected
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // shadow direction: bottom
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 187, 186, 186)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, -2), // shadow direction: top
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/casual-life-3d-profile-picture-of-man-in-green-shirt-and-orange-hat.png",
                              height: 60,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          " i am a man  ",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                      iswoemn = true;
                      ismen = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected && iswoemn && !ismen
                          ? Colors.blue // Change color when selected
                          : Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected && iswoemn && !ismen
                              ? Colors.blue
                              : Color.fromARGB(255, 255, 255, 255), // Change border color when selected
                          width: 2), // Increase border width when selected
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // shadow direction: bottom
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 172, 170, 170)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, -2), // shadow direction: top
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                              height: 60,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          " i am a Women ",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "What do you do ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Describe yourslef in less than 200 character  ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 161, 158, 158)
                          .withOpacity(0.7),

                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
               
                  SizebaleTextfield(controller: WhatDoYouDo, sizefield:  1, max:  200, hintText:  "Describe what you do ", iconVisible:  false, iconOnPressed:  ()=>{}),

        //regester now
        const SizedBox(
          height: 25,
        ),

        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              sigin(
                onTap:()=>{
                 
                },
                btntext: "         Back         ",
              ),
              sigin(
                onTap:  ()=>{
                   
            Navigator.pushNamed(
              context,
              '/pageOne',
              arguments: '/pageTwo',
            )
                },
                btntext: "      continue       ",
              ),
            ],
          ),
        )
      ]))),
    );
  }

  siginmethod() {}
}

class GuideSingupPageTwo extends StatefulWidget {
  const GuideSingupPageTwo({super.key});

  @override
  State<GuideSingupPageTwo> createState() => _GuideSingupPageTwoState();
}

class _GuideSingupPageTwoState extends State<GuideSingupPageTwo> {
  bool isSelected = false;
  bool ismen = false;
  bool iswoemn = false;

  final WhatDoYouDo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>     GuideSignup()),);
          },

        ),
        title: Text("personnal informations"),),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Profile Details",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(
                      "lib/photos/0e6227f38b13826f71f6fce067df96f7-removebg-preview.png"),
                ),
              ]),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Tell us a bit about yourself ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "choose your grnder  ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                      ismen = true;
                      iswoemn = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected && ismen && !iswoemn
                          ? Colors.blue // Change color when selected
                          : Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected && ismen && !iswoemn
                              ? Colors.blue
                              : Color.fromARGB(255, 255, 255, 255), // Change border color when selected
                          width: 2), // Increase border width when selected
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // shadow direction: bottom
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 187, 186, 186)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, -2), // shadow direction: top
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/casual-life-3d-profile-picture-of-man-in-green-shirt-and-orange-hat.png",
                              height: 60,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          " i am a man  ",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = true;
                      iswoemn = true;
                      ismen = false;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isSelected && iswoemn && !ismen
                          ? Colors.blue // Change color when selected
                          : Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: isSelected && iswoemn && !ismen
                              ? Colors.blue
                              : Color.fromARGB(255, 255, 255, 255), // Change border color when selected
                          width: 2), // Increase border width when selected
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 2), // shadow direction: bottom
                        ),
                        BoxShadow(
                          color: Color.fromARGB(255, 172, 170, 170)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: const Offset(0, -2), // shadow direction: top
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Image.asset(
                              "lib/photos/3d-casual-life-avatar-girl-with-hair.png",
                              height: 60,
                            )),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          " i am a Women ",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "What do you do ",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Describe yourslef in less than 200 character  ",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0)
                          .withOpacity(0.7),

                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      //font fam to add later
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
               
                  SizebaleTextfield(controller: WhatDoYouDo, sizefield:  1, max:  200, hintText:  "Describe what you do ", iconVisible:  false, iconOnPressed:  ()=>{}),

                   Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              sigin(
                onTap: siginmethod(),
                btntext: "         Back         ",
              ),
              sigin(
                onTap:  ()=>{
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>   Login()),
                      )
                },
                btntext: "      continue       ",
              ),
            ],
          ),
        )
            ],
          ),
        )));
  }

  siginmethod() {}
}

class GuideSignupThree extends StatefulWidget {
  const GuideSignupThree({super.key});

  @override
  State<GuideSignupThree> createState() => _GuideSignupThreeState();
}

class _GuideSignupThreeState extends State<GuideSignupThree> {
  final Namecontroller = TextEditingController();
  final LastNamecontroller = TextEditingController();
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Choose a profile picture ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            image != null
                ? ClipOval(
                    child: Image.file(
                      image!,
                      width: 160,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                  )
                : SizedBox(
                    width: 200,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 200,
                      ),
                    ),
                  ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Confirm your username ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "confirm your first and last name  ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 239, 236, 236)
                        .withOpacity(0.7),

                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "First name ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            textfiled(
                controller: Namecontroller,
                hintext: "First Name",
                obscuretext: false),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Last Name  ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    //font fam to add later
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            textfiled(
                controller: LastNamecontroller,
                hintext: "Last Name",
                obscuretext: false),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  sigin(
                    onTap: siginmethod(),
                    btntext: "       Back       ",
                  ),
                  sigin(
                    onTap: siginmethod(),
                    btntext: "   Create Account   ",
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }

  siginmethod() {}
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return null;
      }
      final Imagepath = File(image.path);
      setState(() {
        this.image = Imagepath;
        // ignore: empty_catches
      });
    } on PlatformException catch (e) {
      print("Failed to pick an image $e");
    }
  }
}
