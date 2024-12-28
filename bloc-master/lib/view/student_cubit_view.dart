import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/cubit/student_cubit.dart';

// ignore: must_be_immutable
class StudentCubitView extends StatelessWidget {
  StudentCubitView({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController address = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Cubit View'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Name",
              ),
              controller: name,
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Age",
              ),
              controller: age,
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Address",
              ),
              controller: address,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<StudentCubit>()
                      .addStd((name.text), (age.text), (address.text));
                },
                child: const Text("add")),
            ElevatedButton(
                onPressed: () {
                  context.read<StudentCubit>().delStd();
                },
                child: const Text("delete")),
            BlocBuilder<StudentCubit, String>(builder: (context, state) {
              return Text(
                state,
                style: const TextStyle(fontSize: 18),
              );
            })
          ],
        ),
      ),
    );
  }
}
