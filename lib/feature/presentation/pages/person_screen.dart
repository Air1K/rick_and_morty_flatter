import 'package:flutter/material.dart';
import 'package:rick_and_morty/feature/presentation/widgets/person_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Characters'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search), color: Colors.white,),
        ],
      ),
      body: PersonList(),
    );
  }
}
