import 'package:cardi_care/shared/theme.dart';
import 'package:cardi_care/views/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OlahragaView extends StatefulWidget {
  const OlahragaView({super.key});

  @override
  State<OlahragaView> createState() => _OlahragaViewState();
}

class _OlahragaViewState extends State<OlahragaView> {
  late TextEditingController dateCtl = TextEditingController();
  String? selectedOption;

  List<String> options = ['Berat', 'Ringan', 'Sedang'];

  @override
  void initState() {
    super.initState();
    dateCtl = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    dateCtl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColor,
        foregroundColor: whiteColor,
        title: Text(
          'Olahraga',
          style: whiteText.copyWith(
            fontSize: 20,
            fontWeight: semibold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kenapa olahraga penting?',
              style: blackText.copyWith(
                fontSize: 18,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna.',
              style: blackText.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Olahragaku',
              style: blackText.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              controller: dateCtl,
              decoration: InputDecoration(
                filled: true,
                fillColor: pinkColor,
                labelText: 'Tanggal',
                suffixIcon: const Icon(Icons.date_range),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: redColor,
                  ),
                ),
              ),
              onTap: () async {
                FocusScope.of(context).requestFocus(FocusNode());
                DateTime now = DateTime.now();
                DateTime? dateTime = await showDatePicker(
                  context: context,
                  initialDate: now.subtract(const Duration(days: 7)),
                  firstDate: now
                      .subtract(const Duration(days: 7)), // Seminggu yang lalu
                  lastDate: now,
                );
                if (dateTime != null) {
                  String formattedDate =
                      DateFormat('dd-MM-yyyy').format(dateTime);
                  setState(() {
                    dateCtl.text = formattedDate;
                  });
                }
              },
            ),
            const SizedBox(
              height: 8,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Jenis olahraga',
                filled: true,
                fillColor: pinkColor,
                floatingLabelStyle: TextStyle(color: redColor),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: redColor,
                  ),
                ),
              ),
              value: selectedOption,
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              items: options.map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: pinkColor,
                floatingLabelStyle: TextStyle(color: redColor),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: redColor)),
                suffixIcon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Menit',
                      style: blackText.copyWith(fontSize: 12, fontWeight: bold),
                    ),
                  ],
                ),
                labelText: 'Durasi Olahraga',
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: CustomRedButton(
          title: 'Simpan',
          onPressed: () {},
        ),
      ),
    );
  }
}
