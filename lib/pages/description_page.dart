import 'package:flutter/material.dart';
import 'package:second_app/class/item_class.dart';
import 'package:second_app/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        backgroundColor: Colors.purpleAccent,
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.dangerous),
        // ), sử dụng không cẩn thận có thể đưa về trang đen
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Hello no info here haha'),
                behavior: SnackBarBehavior.floating,
              ));
            },
            icon: const Icon(
              Icons.info,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(children: [
            Image.asset(widget.box.imagePath),
            Wrap(
              spacing: kDouble10,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 25;
                    });
                  },
                  child: const Text('Small Title'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 50;
                    });
                  },
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white),
                  child: const Text('Medium Title'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 100;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent,
                      foregroundColor: Colors.white),
                  child: const Text('Large Title'),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      fontSizeCustom = 200;
                    });
                  },
                  child: const Text('Huge Title'),
                ),
              ],
            ),
            FittedBox(
              child: Text(
                widget.box.title,
                style: TextStyle(
                  fontSize: fontSizeCustom,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              baconDescription,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: kDouble10,
            ),
            const Text(
              baconDescription,
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    );
  }
}
