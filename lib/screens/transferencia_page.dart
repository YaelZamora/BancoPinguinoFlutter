import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TransferenciaPage extends StatelessWidget {
  const TransferenciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Banco Pingüino',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        margin: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: ListView.separated(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) => ListTile(
            leading: const Text(
              'Cuenta',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            title: Text(
              cuentas.elementAt(index),
              style: const TextStyle(fontSize: 14),
            ),
            trailing: const Trailing(),
          ),
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 20,
            child: Divider(),
          ),
        ),
      ),
    );
  }
}

class Trailing extends StatelessWidget {
  const Trailing({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Pulse(
          infinite: true,
          child: Container(
            width: 75,
            height: 37,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
          ),
        ),
        Positioned(
          top: 1,
          bottom: 1,
          right: 0.5,
          left: 0.5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            clipBehavior: Clip.hardEdge,
            child: MaterialButton(
              color: Colors.blue.shade800,
              onPressed: () {},
              child: const Text(
                'Transferir',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<String> cuentas = [
  '1234567890123456',
  '5189154586405408',
  '0934828527398410',
  '0923784928352983',
  '9847293074230110',
  '8732464321481108',
  '0923472398470239',
  '9843274109482304',
  '3748203974293802',
  '8274023429034723',
  '7612349124720390',
  '1278337890120479',
  '8234873049804930',
  '8721398127812937',
  '1238789471200182',
  '8127389127498124',
  '9827439128379817',
  '8712623128973912',
  '9812378921762348',
  '2316129473219849',
];
