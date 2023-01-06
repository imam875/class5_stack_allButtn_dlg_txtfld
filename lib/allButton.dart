import 'package:flutter/material.dart';

class buttonss extends StatefulWidget {
  const buttonss({Key? key}) : super(key: key);

  @override
  State<buttonss> createState() => _buttonssState();
}

class _buttonssState extends State<buttonss> {
  List<String> itemss = [
    "Dhaka",
    "Chattogram",
    "Select Division",
    "Rajshahi",
    "Sylhet",
    "Khulna",
    "Barishal",
    "Rangpur"
  ];
  var districts = "Select Division";
  var chekVal = false;
  var gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///FooterButton....................................
      persistentFooterButtons: [
        ElevatedButton(onPressed: () {}, child: Text("FooterButton")),
      ],

      /// floatingActionButton..............................
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          style: IconButton.styleFrom(
            foregroundColor: Colors.deepOrange,
            backgroundColor: Colors.deepOrange,
          ),
          splashColor: Colors.green,
          highlightColor: Colors.orange,
          icon: Icon(
            Icons.accessibility,
            size: 40,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
      ),
      appBar: AppBar(
        title: Text("This is button Page"),
      ),
      body: ListView(
        children: [
          ///TextButton.....................................
          TextButton(onPressed: () {}, child: Text("TextButton")),

          ///ElevatedButton.................................
          ElevatedButton(onPressed: () {}, child: Text("ElevatedButton")),

         ///Icon & floating.....................................
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///FloatingActionButton............................
              FloatingActionButton(
                tooltip: "Floating Button",
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    size: 34,
                  )),
              SizedBox(width: 160,),
              ///IconButton.....................................
              IconButton(
                tooltip: "Icon Button",
                style: IconButton.styleFrom(
                  foregroundColor: Colors.deepOrange,
                  backgroundColor: Colors.deepOrange,
                ),
                splashColor: Colors.green,
                highlightColor: Colors.orange,
                icon: Icon(
                  Icons.person_add,
                  size: 40,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ],
          ),

        ///Tooltip.........................................
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Tooltip(
                  waitDuration: Duration(seconds: 22),
                  message: "Yes",
                  child: Text(
                    "ToolTip",
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  )),
            ),
          ),

          ///OutLinedButton..................................
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                OutlinedButton(onPressed: () {}, child: Text("OutLinedButton")),
          ),

          ///DropdownButton..................................
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              value: districts,
              items: itemss.map((r) {
                return DropdownMenuItem(value: r, child: Text(r));
              }).toList(),
              onChanged: (val) {
                districts = val!;
                setState(() {});
              },
              icon: Icon(Icons.arrow_drop_down_circle_outlined),
              iconDisabledColor: Colors.blue,
              iconSize: 25,
              underline: Container(
                color: Colors.green.withOpacity(.5),
                height: 2,
              ),
              autofocus: false,
              itemHeight: kMinInteractiveDimension,
              iconEnabledColor: Colors.deepPurpleAccent,
              focusColor: Colors.black,
              isExpanded: true,
              isDense: false,
              menuMaxHeight: 300,
              hint: Text(
                'Select',
                style: TextStyle(color: Colors.blue),
              ),
              elevation: 20,
              style: TextStyle(
                color: Colors.purple,
                fontSize: 18,
              ),
              dropdownColor: Color(0xFFA399EF),
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          ///Radio Button....................................
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.purple.withOpacity(.4), width: 2),
                  borderRadius: BorderRadius.circular(
                    10,
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Select Gender",
                          style: TextStyle(fontSize: 19),
                        )),
                  ),
                  ListTile(
                    title: Text("Male"),
                    leading: Radio(
                        value: 1,
                        groupValue: gender,
                        onChanged: (respons) {
                          setState(() {
                            gender = 1;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(
                        value: 2,
                        groupValue: gender,
                        onChanged: (ert) {
                          setState(() {
                            gender = 2;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Others"),
                    leading: Radio(
                        value: 3,
                        groupValue: gender,
                        onChanged: (ert) {
                          setState(() {
                            gender = 3;
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),

          ///PopupMenuButton.................................
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              Center(
                  child: Text(
                "PopupMenuButton",
                style: TextStyle(fontSize: 18),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Get The App")
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(
                            width: 10,
                          ),
                          Text("About")
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Row(
                        children: [
                          Icon(Icons.person_add),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Person")
                        ],
                      ),
                    ),
                  ],
                  offset: Offset(0, 100),
                  color: Colors.grey.shade300,
                  elevation: 5,
                ),
              ),
            ],
          ),

          ///CheckBox........................................
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 120,
              ),
              Text("Check Box"),
              Checkbox(
                  value: chekVal,
                  onChanged: (responss) {
                    chekVal = responss!;
                    setState(() {});
                  }),
            ],
          )
        ],
      ),
    );
  }
}
