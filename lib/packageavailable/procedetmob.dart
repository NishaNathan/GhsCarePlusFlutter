import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ghscareplus/commonwidget/buttonwidget.dart';
import 'package:ghscareplus/constants/color.dart';

class PriceDetMob extends StatefulWidget {
  const PriceDetMob({super.key});

  @override
  State<PriceDetMob> createState() => _PriceDetMobState();
}

class _PriceDetMobState extends State<PriceDetMob> {
  late List<bool> isHoverPriceDet;

  @override
  void initState() {
    super.initState();
    isHoverPriceDet = List.generate(4, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    final List<Map<String, dynamic>> priceDetails = [
      {
        'plan': 'BASIC PLAN',
        'cost': '50',
      },
      {
        'plan': 'BEGINEER PLAN',
        'cost': '79',
      },
      {
        'plan': 'PREMIUM PLAN',
        'cost': '89',
      },
      {
        'plan': 'ULTIMATE PLAN',
        'cost': '99',
      },
    ];

    final List<List<String>> priceInfoList = [
      [
        'Diagnostic Services',
        'Professional Consultation',
        'Tooth Implants',
        'Surgical Extractions',
        'Teeth Whitening',
        'Teeth Cleaning'
      ],
      [
        'Diagnostic Services',
        'Professional Consultation',
        'Tooth Implants',
        'Surgical Extractions',
        'Teeth Whitening',
        'Teeth Cleaning'
      ],
      [
        'Diagnostic Services',
        'Professional Consultation',
        'Tooth Implants',
        'Surgical Extractions',
        'Teeth Whitening',
        'Teeth Cleaning'
      ],
      [
        'Diagnostic Services',
        'Professional Consultation',
        'Tooth Implants',
        'Surgical Extractions',
        'Teeth Whitening',
        'Teeth Cleaning'
      ],
    ];
    return SizedBox(
      height: width < 600
          ? MediaQuery.of(context).size.height * 2.35
          : MediaQuery.of(context).size.height * 2.1,
      child: Column(
        children: [
          Text(
            'OUR PRICING',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w900, fontSize: 18),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Pricing & Packages',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: priceInfoList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final plan = priceDetails[index]['plan'] ?? '';
                    final cost = priceDetails[index]['cost'] ?? '';
                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      onEnter: (_) =>
                          setState(() => isHoverPriceDet[index] = true),
                      onExit: (_) =>
                          setState(() => isHoverPriceDet[index] = false),
                      child: Padding(
                        padding: width < 600
                            ? const EdgeInsets.all(20.0)
                            : const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 50.0),
                        child: Container(
                          padding:
                              const EdgeInsets.only(top: 20.0, bottom: 20.0),
                          decoration: BoxDecoration(
                            border: isHoverPriceDet[index]
                                ? null
                                : Border.all(
                                    color: const Color.fromARGB(
                                        255, 144, 144, 144)),
                            color: isHoverPriceDet[index] ? Colors.white : null,
                            boxShadow: isHoverPriceDet[index]
                                ? [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 5,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3),
                                    ),
                                  ]
                                : null,
                          ),
                          child: Column(
                            children: [
                              Text(
                                plan.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    WidgetSpan(
                                      child: Transform.translate(
                                        offset: const Offset(0.0, -10.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.dollarSign,
                                          color: textColor,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                        text: cost.toString(),
                                        style: TextStyle(
                                            fontSize: 40,
                                            color: textColor,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              SizedBox(
                                height: 290,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: priceInfoList[index].length,
                                  itemBuilder:
                                      (BuildContext context, int innerIndex) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              FaIcon(
                                                FontAwesomeIcons.rightLong,
                                                color: textColor,
                                                size: 14,
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Text(priceInfoList[index]
                                                  [innerIndex]),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                ),
                              ),
                              CommonButtonWidget(
                                backgroundColor: Colors.amber,
                                borderColor: Colors.amber,
                                borderRadius: BorderRadius.circular(5.0),
                                btnText: 'Get started'.toUpperCase(),
                                foregroundColor: Colors.black,
                                onPressed: () {},
                                height: 40,
                                width: 200,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
