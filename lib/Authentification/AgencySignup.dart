import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:tro/Componants/List_Of_States.dart';
import 'package:tro/Componants/SquaretTile.dart';
import 'package:tro/Componants/textfiled.dart';
import 'package:tro/Authentification/LOginChoice.dart';
import 'package:tro/Authentification/signin.dart';

class AgencySignup extends StatefulWidget {
  AgencySignup({Key? key}) : super(key: key);

  @override
  State<AgencySignup> createState() => _AgencySignupState();
}

class _AgencySignupState extends State<AgencySignup> {
  List<bool> isSelected = [true, false, false];
  String? userSelected; // Updated initialization
  final TextEditingController _controller = TextEditingController();
  final cntrfieldcompanyname = TextEditingController();

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
              MaterialPageRoute(builder: (context) =>    LoginChoice()),);
          },

        ),
        title: Text(""),),
      backgroundColor: const Color.fromARGB(255, 255, 252, 252),
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
                    "Continue as an agency",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 30,
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
                    'How many employees does your company have?',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ToggleButtons(
                disabledBorderColor: Colors.white,
                color: Colors.white,
                focusColor: Colors.white,
                selectedBorderColor: Colors.white,
                children: [
                  togglebtn(
                    text: "  3-5  ",
                    isSelected: isSelected[0],
                  ),
                  togglebtn(text: "5-10", isSelected: isSelected[1]),
                  togglebtn(text: "10-50", isSelected: isSelected[2]),
                ],
                isSelected: isSelected,
                fillColor: Colors.white,
                borderColor: Colors.white,
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                    
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      isSelected[buttonIndex] = (buttonIndex == index);
                    }
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Where is the company restrated ? ",
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
                child: TypeAheadField(
                    noItemsFoundBuilder: (context) => const SizedBox(
                          height: 50,
                          child: Center(
                            child: Text("No Item Found "),
                          ),
                        ),
                    suggestionsCallback: (value) =>
                        ListOfStates.getSuggestion(value),
                    itemBuilder: (context, String suggestion) {
                      return Padding(
                        padding: EdgeInsets.all(6),
                        child: Text(
                          suggestion,
                          overflow: TextOverflow.ellipsis,
                        ),
                      );
                    },
                    suggestionsBoxDecoration: const SuggestionsBoxDecoration(
                        color: Color.fromARGB(108, 136, 132, 132),
                        elevation: 4.0,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    debounceDuration: const Duration(milliseconds: 400),
                    textFieldConfiguration: TextFieldConfiguration(
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(108, 92, 92, 92)),
                          borderRadius: BorderRadius.circular(
                              10.0), // Set borderRadius here
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: const Color.fromARGB(109, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(
                              10.0), // Set borderRadius here
                        ),
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                        filled: true,
                      ),
                    ),
                    onSuggestionSelected: (String suggestion) {
                      setState(() {
                        _controller.text =
                            suggestion; // Update the text field with the selected suggestion
                      });
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " enter  your agency's legal name  ",
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
              textfiled(
                  controller: cntrfieldcompanyname,
                  hintext: "angency name ",
                  obscuretext: false),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    " enter your agency website link  ",
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
              textfiled(
                  controller: cntrfieldcompanyname,
                  hintext: "https : // www.websitename.com/ ",
                  obscuretext: false),
              const SizedBox(
                height: 25,
              ),
               
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
              arguments: '/pageFour',
            )
                },
                btntext: "      continue       ",
              ),
            ],
          ),
        )
            ],
          ),
        ),
      ),
    );
  }

  siginmethod() {}
}

class togglebtn extends StatelessWidget {
  final String text;
  final bool isSelected;
  togglebtn({super.key, required this.text, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(

          color: isSelected ? Colors.blue : const Color.fromARGB(255, 163, 163, 163),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              text,
              style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18.5),
            ),
            if (isSelected) // Add checkmark if the button is selected
              Icon(Icons.check, color: Color.fromARGB(255, 0, 0, 0)),
          ],
        ),
      ),
    );
  }
}
