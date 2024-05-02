// import 'package:fluent_ui/fluent_ui.dart';

// import '../../../features/rc_spectrogram/domain/entities/image_matrix.dart';

// class MatrixImagePainter extends CustomPainter {
//   MatrixImagePainter(this.imageMatrix);

//   final ImageMatrix imageMatrix;

//   List<List<int>> get matrixData => imageMatrix.data;

//   @override
//   void paint(Canvas canvas, Size size) {
//     final Paint paint = Paint();

//     // Calculate the width and height of each cell
//     final double cellWidth = size.width / matrixData[0].length;
//     final double cellHeight = size.height / matrixData.length;

//     // Loop through the matrix data and paint each cell
//     for (int row = 0; row < matrixData.length; row++) {
//       for (int col = 0; col < matrixData[row].length; col++) {
//         final int intensity = matrixData[row][col];
//         int redIntensity = 0;
//         int greenIntensity = 0;
//         int blueIntensity = 0;

//         int threshold = 150;
//         int threshold2 = 170;
//         int threshold3 = 210;

//         int diff = 20;
//         int diff2 = 15;
//         int diff3 = 0;

//         if (intensity > 0 && intensity < threshold) {
//           int adjustedIntensity = (intensity - diff);
//           greenIntensity = (adjustedIntensity ~/ 1).clamp(0, 255);
//           redIntensity = (adjustedIntensity ~/ 1).clamp(0, 255);
//           blueIntensity = (adjustedIntensity).clamp(0, 255);
//         }

//         if (intensity >= threshold && intensity < threshold2) {
//           int adjustedIntensity = (intensity - diff2);
//           redIntensity = (adjustedIntensity ~/ 1).clamp(0, threshold2);
//           greenIntensity = (adjustedIntensity ~/ 1).clamp(0, threshold2);
//           blueIntensity = (adjustedIntensity).clamp(0, threshold2);
//         }

//         if (intensity >= threshold2 && intensity < threshold3) {
//           int adjustedIntensity = (intensity - diff3);
//           greenIntensity = (adjustedIntensity).clamp(0, threshold3);
//           redIntensity = (adjustedIntensity).clamp(0, threshold3);
//           blueIntensity = (adjustedIntensity).clamp(0, threshold3);
//         }

//         if (intensity >= threshold3) {
//           int adjustedIntensity = intensity;
//           greenIntensity = (adjustedIntensity).clamp(0, 255);
//           redIntensity = (adjustedIntensity).clamp(0, 255);
//           blueIntensity = (adjustedIntensity).clamp(0, 255);
//         }

//         final Color color =
//             Color.fromARGB(255, redIntensity, greenIntensity, blueIntensity);

//         paint.color = color;

//         final Rect rect = Rect.fromLTWH(
//           col * cellWidth,
//           row * cellHeight,
//           cellWidth,
//           cellHeight,
//         );

//         canvas.drawRect(rect, paint);
//       }
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }
