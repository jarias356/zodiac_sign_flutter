// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);
//
//   @override
//   State<SignUp> createState() => _SignUpState();
// }
//
// class _SignUpState extends State<SignUp> {
//   final username = TextEditingController();
//   final password = TextEditingController();
//   final confirmPassword = TextEditingController();
//   bool isVisible = false;
//
//   final formKey = GlobalKey<FormState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: SingleChildScrollView(
//           child: Form(
//             key: formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ListTile(
//                     title: Text(
//                       'Registrar Nueva Cuenta',
//                       style: GoogleFonts.firaSans(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 50,
//                         color: const Color.fromARGB(255, 251, 13, 215),
//                       ),
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: const Color.fromARGB(255, 255, 0, 247).withOpacity(0.2),
//                     ),
//                     child: TextFormField(
//                       controller: username,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'El Usario es requerido';
//                         }
//                         return null;
//                       },
//                       decoration: const InputDecoration(
//                         icon: Icon(Icons.person),
//                         border: InputBorder.none,
//                         hintText: 'Usuario',
//                       ),
//                     ),
//                   ),
//                   // password
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: const Color.fromARGB(255, 255, 13, 243).withOpacity(0.3),
//                     ),
//                     child: TextFormField(
//                       controller: password,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'La contraseña es requerida';
//                         }
//                         return null;
//                       },
//                       obscureText: !isVisible,
//                       decoration: InputDecoration(
//                         icon: const Icon(Icons.lock),
//                         border: InputBorder.none,
//                         hintText: 'Contraseña',
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isVisible = !isVisible;
//                             });
//                           },
//                           icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // confirm password
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: const Color.fromARGB(255, 255, 13, 243).withOpacity(0.3),
//                     ),
//                     child: TextFormField(
//                       controller: confirmPassword,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'La verificación de contraseña es requerida';
//                         } else if (password.text != confirmPassword.text) {
//                           return "Las contraseñas no coinciden";
//                         }
//                         return null;
//                       },
//                       obscureText: !isVisible,
//                       decoration: InputDecoration(
//                         icon: const Icon(Icons.lock),
//                         border: InputBorder.none,
//                         hintText: 'Contraseña verificada',
//                         suffixIcon: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               isVisible = !isVisible;
//                             });
//                           },
//                           icon: Icon(isVisible ? Icons.visibility : Icons.visibility_off),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10,),
//                   // login button
//                   Container(
//                     height: 55,
//                     width: MediaQuery.of(context).size.width * 0.9,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       color: const Color.fromARGB(255, 230, 0, 255),
//                     ),
//                     child: TextButton(
//                       onPressed: () {
//                         Get.toNamed('/');
//                       },
//                       child: Text(
//                         'Registrarse',
//                         style: GoogleFonts.firaSans(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 26,
//                           color: const Color.fromARGB(255, 252, 196, 244),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // button
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Ya tienes una cuenta? ",
//                         style: GoogleFonts.firaSans(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                           color: const Color.fromARGB(255, 0, 0, 0),
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {
//                          if (formKey.currentState!.validate()) {
//                           Get.toNamed('/');
//                         }
//                         },
//                         child: Text(
//                           'Inicia Sesión',
//                           style: GoogleFonts.firaSans(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 18,
//                             color: const Color.fromARGB(255, 2, 91, 255),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
