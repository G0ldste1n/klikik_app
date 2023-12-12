import 'package:flutter/material.dart';
import 'package:klikik_app/ui/poli_detail_page.dart';
import 'package:klikik_app/ui/poli_form_page.dart';


import '../model/poli.dart';
import '../widget/sidebar.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  Stream<List<Poli>> getList() async*{
    List<Poli> data = await PoliService().listData();
    yield data;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      appBar: AppBar(
        title: Text("Data Poli", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }
        ),
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.add, color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => 	PoliForm()));
            },
          )
        ],
      ),

    );
  }
}
