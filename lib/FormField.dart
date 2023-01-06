import 'package:class5/allButton.dart';
import 'package:flutter/material.dart';

class formfield extends StatefulWidget {
  const formfield({Key? key}) : super(key: key);

  @override
  State<formfield> createState() => _formfieldState();
}

class _formfieldState extends State<formfield> {
  final globalKey = GlobalKey<FormState>();

  final nameCntrl = TextEditingController();
  final phnCntrl = TextEditingController();
  final emailCntrl = TextEditingController();
  final passCntrl = TextEditingController();

  @override
  void dispose() {
    nameCntrl.dispose();
    phnCntrl.dispose();
    emailCntrl.dispose();
    passCntrl.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Textfield"),
      ),
      body: Form(
        key: globalKey,
        child: ListView(
            children: [
              SizedBox(height: 150,),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: nameCntrl,
              validator: (nmm) {
                if (nmm!.isEmpty || nmm.length<= 3) {
                  return "please Write your name";
                }
              },
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  labelText: "Name",
                  enabled: true,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: phnCntrl,
              validator: (pnn) {
                if (pnn!.isEmpty) {
                  return "Please write your phone Number";
                } else if (pnn.length != 11) {
                return  "Invalid  phone number";
                }
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter Your Phone Number",
                  labelText: "Phone",
                  enabled: true,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: emailCntrl,
              validator: (eml) {
                if (eml!.isEmpty) {
                  return "Email can't be empty";
                }else if (eml.length<=5){
                  return "Invalid email address";
                }
              },
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  labelText: "Email",
                  enabled: true,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: passCntrl,
              validator: (pss) {
                if (pss!.isEmpty) {
                  return "Please Submit your Password";
                } else if (pss.length <= 5) {
                  return  "Password must be 6 digit or Above";
                }
              },
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  labelText: "Password",
                  enabled: true,
                  filled: true,
                  hintStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),

          ///Divider.........................
          Divider(
            height: 50,
            color: Colors.green,
            thickness: 4,
            indent: 20,
          ),

          ///...............................
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.green.shade300,
                          shadowColor: Colors.pink,
                          foregroundColor: Colors.purple,
                          fixedSize: Size(150, 43)),
                      onPressed: () {
                        final smt = globalKey.currentState!.validate();
                        if(!smt){
                          return;
                            }
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context)=>buttonss()),
                                  (route) => route.isFirst);


                      }
                  )
              ),
            ],
          )
        ]),
      ),
    );
  }
}
