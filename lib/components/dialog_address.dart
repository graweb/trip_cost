import 'package:flutter/material.dart';

Future<void> showDialogAddress(BuildContext context) async {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  return await showDialog(
      context: context,
      builder: (context) {
        final TextEditingController startTextController =
            TextEditingController();

        final TextEditingController endTextController = TextEditingController();
        final TextEditingController fuelPrice = TextEditingController();

        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            content: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: startTextController,
                    validator: (value) {
                      return value!.isNotEmpty
                          ? null
                          : "Preencha o endereço de origem";
                    },
                    decoration: const InputDecoration(hintText: "Origem:"),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: endTextController,
                    validator: (value) {
                      return value!.isNotEmpty
                          ? null
                          : "Preencha o endereço de destino";
                    },
                    decoration: const InputDecoration(hintText: "Destino:"),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: fuelPrice,
                    validator: (value) {
                      return value!.isNotEmpty ? null : "Preencha o preço do combustível";
                    },
                    decoration: const InputDecoration(hintText: "Preço (aproximado):"),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              ElevatedButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: const Text('Calcular'))
            ],
          );
        });
      });
}
