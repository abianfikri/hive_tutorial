import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hive/hive.dart';
import 'package:project_hive_db/model/contact.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late Box<Contact> box;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    box = Hive.box('databaseContact');
  }

  String? name;
  String? email;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Enter your name",
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) {
                    name = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone",
                    hintText: "Enter your phone",
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value) {
                    phone = value;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){

                }, 
                child: Text(
                  "Save"
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}