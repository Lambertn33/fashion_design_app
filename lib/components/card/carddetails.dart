import 'package:fashion_design_app/helpers/constants.dart';
import 'package:flutter/material.dart';

class CardDetails extends StatefulWidget {
  final String imageProp;
  const CardDetails({required this.imageProp, super.key});

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Hero(
          tag: widget.imageProp,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.imageProp), fit: BoxFit.cover)),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: 140,
              width: 200,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(widget.imageProp),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Card Details Header'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Constants.mainColor,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text('Card Details description'),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
