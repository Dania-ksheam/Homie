// // import 'package:flutter/material.dart';
// // import 'dart:async';
// // import 'sigin_screen.dart';  // Ensure this import is correct

// // class SplashScreen extends StatefulWidget {
// //   @override
// //   _SplashScreenState createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<double> _bounceAnimation;
// //   late Animation<double> _fadeAnimation;
// //   late Animation<double> _rotateAnimation;

// //   @override
// //   void initState() {
// //     super.initState();

// //     // Initialize AnimationController
// //     _controller = AnimationController(
// //       duration: const Duration(seconds: 3),
// //       vsync: this,
// //     );

// //     // Define bounce animation
// //     _bounceAnimation = CurvedAnimation(
// //       parent: _controller,
// //       curve: Curves.bounceOut,
// //     );

// //     // Define fade animation for text
// //     _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
// //       CurvedAnimation(parent: _controller, curve: Curves.easeIn),
// //     );

// //     // Define rotation animation for the logo
// //     _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
// //       CurvedAnimation(parent: _controller, curve: Curves.easeOut),
// //     );

// //     // Start the animation
// //     _controller.forward();

// //     // Navigate to the SignInScreen after 3 seconds
// //     Timer(const Duration(seconds: 3), () {
// //       Navigator.pushReplacement(
// //         context,
// //         MaterialPageRoute(
// //           builder: (context) => SignInScreen(
// //          // Or whatever userType you need
// //             changeLocale: () {}, // You can pass the actual function here
// //           ),
// //         ),
// //       );
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // Combined animation: Bounce and Rotate
// //             AnimatedBuilder(
// //               animation: _controller,
// //               builder: (context, child) {
// //                 return Transform.rotate(
// //                   angle: _rotateAnimation.value * 2 * 3.14159, // Full rotation
// //                   child: Transform.scale(
// //                     scale: _bounceAnimation.value,
// //                     child: Image.asset(
// //                       'images/Homie_logo.png', // Ensure the path is correct
// //                       width: 200,
// //                       height: 200,
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //             const SizedBox(height: 20),
// //             // Fade-in welcome text with two lines
// //             FadeTransition(
// //               opacity: _fadeAnimation,
// //               child: Column(
// //                 children: [
// //                   Text(
// //                     "Welcome",  // You can localize this
// //                     style: const TextStyle(
// //                       fontSize: 30,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black87,
// //                     ),
// //                   ),
// //                   Text(
// //                     "to Homie",  // You can localize this
// //                     style: const TextStyle(
// //                       fontSize: 30,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.black87,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'sigin_screen.dart';  // Ensure this import is correct

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _bounceAnimation;
//   late Animation<double> _fadeAnimation;
//   late Animation<double> _rotateAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Initialize AnimationController
//     _controller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     );

//     // Define bounce animation
//     _bounceAnimation = CurvedAnimation(
//       parent: _controller,
//       curve: Curves.bounceOut,
//     );

//     // Define fade animation for text
//     _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeIn),
//     );

//     // Define rotation animation for the logo
//     _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeOut),
//     );

//     // Start the animation
//     _controller.forward();

//     // Navigate to the SignInScreen after 3 seconds
//     Timer(const Duration(seconds: 3), () {
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(
//           builder: (context) => SignInScreen(
//           //  userType: "RegularUser", // Pass the required userType argument
//             changeLocale: () {}, // You can pass the actual function here
//           ),
//         ),
//       );
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Combined animation: Bounce and Rotate
//             AnimatedBuilder(
//               animation: _controller,
//               builder: (context, child) {
//                 return Transform.rotate(
//                   angle: _rotateAnimation.value * 2 * 3.14159, // Full rotation
//                   child: Transform.scale(
//                     scale: _bounceAnimation.value,
//                     child: Image.asset(
//                       'images/Homie_logo.png', // Ensure the path is correct
//                       width: 200,
//                       height: 200,
//                     ),
//                   ),
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             // Fade-in welcome text with two lines
//             FadeTransition(
//               opacity: _fadeAnimation,
//               child: Column(
//                 children: [
//                   Text(
//                     "Welcome",  // You can localize this
//                     style: const TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                   Text(
//                     "to Homie",  // You can localize this
//                     style: const TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:async';
import 'sigin_screen.dart'; // Ensure this import is correct
import 'user_home.dart';
import 'package:test/extantion.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _bounceAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _bounceAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
         builder: (context) => SignInScreen(changeLocale: () {}),

        
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotateAnimation.value * 2 * 3.14159,
                  child: Transform.scale(
                    scale: _bounceAnimation.value,
                    child: Image.asset(
                      'images/Homie_logo.png', // Ensure the asset path is correct
                      width: 200,
                      height: 200,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                children: const [
                  Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "to Homie",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
