import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zodiac_sign_flutter/core/viewModels/get_sign_view_model.dart';
import 'package:zodiac_sign_flutter/utils/constants.dart';

class GetSignScreen extends StatelessWidget {
  const GetSignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GetSignViewModel getSignViewModel = Get.find<GetSignViewModel>();

    return Scaffold(
      appBar: AppBar(
          title: const Text(txtGetMySign),
          backgroundColor: const Color.fromARGB(255, 208, 1, 254),
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          )),
      body: Stack(
        children: [
          Center(
            child: Card(
              color: const Color.fromARGB(98, 240, 182, 241),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(168, 243, 229, 33),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '¡EMPECEMOS!',
                            style: GoogleFonts.firaSans(
                              fontSize: 30,
                              color: const Color.fromARGB(255, 0, 0, 1),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            txtChooseDayBirth,
                            style: GoogleFonts.firaSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: const Color.fromARGB(255, 45, 67, 76),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(158, 255, 211, 14),
                        borderRadius: BorderRadius.circular(
                            20), // Bordes circulares para este contenedor
                      ),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: IconButton(
                              onPressed: () async {
                                final result = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1020),
                                  lastDate: DateTime(2050),
                                );
                                getSignViewModel.setDayBirth(result);
                              },
                              icon: const Icon(Icons.calendar_today),
                              color: const Color.fromARGB(255, 208, 1, 254),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(171, 245, 251, 80),
                      ),
                      child: Column(
                        children: [
                          Obx(
                            () => Text(
                              getSignViewModel.dateUser.value,
                              style: GoogleFonts.firaSans(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 1, 1, 1),
                              ),
                            ),
                          ),
                          Obx(
                            () => Text(
                              getSignViewModel.resultYourSignName.value,
                              style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ),
                          Obx(
                            () => Text(
                              getSignViewModel.resultYourSignDescription.value,
                              style: GoogleFonts.firaSans(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
