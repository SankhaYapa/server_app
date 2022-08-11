import 'package:flutter/material.dart';
import 'package:server_app/components/custome_textfield.dart';
import 'package:server_app/widgets/listserver_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _showForm() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: 'Server Name',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: 'Host',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: 'api forlder',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextField(
                    hintText: 'port',
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          // backgroundColor:
                          //     MaterialStateProperty.all<Color>(Colors.red),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(color: Colors.blue)))),
                      child: Text('Add New Server'))
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Server List'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            _showForm();
          },
          backgroundColor: Color.fromARGB(255, 168, 86, 194),
          icon: Icon(Icons.add),
          label: Text(
            'Create Server',
          )),
      body: ListView.separated(
          padding: EdgeInsets.all(15),
          physics: BouncingScrollPhysics(),
          itemBuilder: ((context, index) {
            return ListCard();
          }),
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10,
            );
          },
          itemCount: 5),
    ));
  }
}
