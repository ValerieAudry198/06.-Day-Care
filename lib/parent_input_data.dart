import 'package:flutter/material.dart';

class ParentInputDataPage extends StatelessWidget {
  const ParentInputDataPage(Key? key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          backgroundColor: Colors.brown[50],
          title: Text('Child\'s Personal Data'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Child Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person_outline)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Date of Birth",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.cake_outlined)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Gender",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.wc_outlined)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Allergy",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.warning_amber_rounded)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Favorite Food",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.fastfood_outlined)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Favorite Drink",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.local_drink_outlined)),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Notes",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.notes_outlined)),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 3, left: 3),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/loginParents');
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.brown[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
