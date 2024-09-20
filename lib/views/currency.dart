import 'package:chat_bubbles/bubbles/bubble_special_one.dart';
import 'package:flutter/material.dart';
import 'package:mizan_app/constants.dart';
import 'package:mizan_app/widgets/custom_material_button.dart';
import 'package:mizan_app/widgets/custom_text_field.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  String? dropDownValue;
  TextEditingController currencyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/logo (2).png"),
                ),
                BubbleSpecialOne(
                  text:
                      'في هذه الغرفة يمكنك تحويل العملات الى قيمتها الدولارية',
                  color: kPrimaryColor2,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: kfontStyle2,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "اختر العملة المراد تحويلها",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Lemonada',
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: DropdownButton(
                    dropdownColor: kPrimaryColor3,
                    hint: dropDownValue == null
                        ? const Text(
                            'Egypt (EGP)',
                          )
                        : Text(
                            dropDownValue!,
                            style: const TextStyle(
                                fontSize: 16, fontFamily: kfontStyle4),
                          ),
                    iconSize: 24.0,
                    style:
                        const TextStyle(fontSize: 16, fontFamily: kfontStyle4),
                    items: items.map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(val),
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      setState(
                        () {
                          dropDownValue = val!;
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 130,
              width: 250,
              child: CustomTextField(
                  controller: currencyController,
                  name: "ادخل المبلغ",
                  keyboardType: TextInputType.number),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomMaterialButton(
              buttonName: 'تحويل',
              onPressed: () {
                setState(() {
                  if (currencyController.text.isEmpty) {
                    currencyController.text = '1';
                  }
                  if (dropDownValue == null) {
                    dropDownValue = 'Egypt (EGP)';
                  }
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: kPrimaryColor3,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Container(
                alignment: Alignment.center,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '  $dropDownValue (${currencyController.text}) = \n  ${{
                    double.parse(currencyController.text) /
                        moneyFelow[dropDownValue]!
                  }.toString().substring(1, 6)} USD ',
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      fontSize: 30,
                      fontFamily: kfontStyle4,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
