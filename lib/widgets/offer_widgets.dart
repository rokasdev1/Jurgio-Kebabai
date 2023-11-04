import 'package:flutter/material.dart';

class BBQWidget extends StatelessWidget {
  const BBQWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          SizedBox(
            width: 250,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/1.png"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Nuo Liepos 15d. visuose Jurgio Kebabinėse bus parduodami mūsų specialūs BBQ Kebabai tik už 6.99 eurų! Akcija galioja iki Rugpjūčio 24d.',
            style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class CoffeeWidget extends StatelessWidget {
  const CoffeeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          SizedBox(
            width: 250,
            height: 250,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/images/2.png"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Nuo Liepos 15d. Jurgio Kebabinėse bus parduodami mūsų naujoji ir skaniausia kava. Ši kava turi visko ko tik prireiktų - kofeino, kavos pupelių ir svarbiausia - alkoholio.',
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
