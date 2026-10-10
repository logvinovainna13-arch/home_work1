import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: const Color(0xFF0F0F11),
     body: SafeArea(
       top: false,
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             _buildImageHeader(context),
             Padding(
                 padding: const EdgeInsets.symmetric(horizontal:16.0, vertical: 20.0 ),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   const Text(
                     'Наушники Beats by Dre',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 22,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   const SizedBox(height: 12),
                   Row(
                     textBaseline: TextBaseline.alphabetic,
                     crossAxisAlignment: CrossAxisAlignment.baseline,
                     children: [
                       const Text(
                         '400 000 ₩',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 24,
                       fontWeight: FontWeight.bold,
                     ),
                   ),
                   const SizedBox(width: 8),
                       Text(
                         'Договорная',
                         style: TextStyle(
                           color: Colors.redAccent.shade100,
                           fontSize: 14,
                         ),
                       ),
                     ],
                   ),
               const SizedBox(height: 24),
               const Text(
                 'Описание',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontWeight: FontWeight.w600,
                 ),
               ),
               const SizedBox(height: 12),
               _buildDarkCard(
                 child: const Text(
                   'Эти наушники — верный спутник в мире звука и стиля. С их элегантным дизайном и превосходным качеством звучания вы погружаетесь в музыкальный опыт нового уровня. Наушники идеально сбалансированы между комфортом и функциональностью, обеспечивая чистоту звука и ясные высокие частоты.',
                   style: TextStyle(
                     color: Color(0xFFD1D1D6),
                     fontSize: 14,
                     height: 1.4,
                   ),
                 ),
               ),
               const SizedBox(height: 24),
               const Text(
                 'Продавец',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 18,
                   fontWeight: FontWeight.w600,
                 ),
               ),
               const SizedBox(height: 12),
               _buildSellerProfile(),
               const SizedBox(height: 32),
                   SizedBox(
                     width: double.infinity,
                     height: 50,
                     child: ElevatedButton(
                     onPressed: () {
                     },
                       style: ElevatedButton.styleFrom(
                         backgroundColor: const Color(0xFFE05332),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         ),
                       ),
                       child: const Text(
                         'Связаться с продавцом',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,
                         ),
                       ),
                     ),
                   ),
               const SizedBox(height: 16),
               Center(
                 child: TextButton.icon(
                   onPressed: () {},
                   icon: const Icon(Icons.warning_amber_rounded, color: Colors.grey, size: 18),
                   label: const Text(
                     'Пожаловаться',
                     style: TextStyle(
                       color: Colors.grey,
                       fontSize: 14,
                     ),
                   ),
                 ),
               ),
               const SizedBox(height: 20),
                 ],
               ),
             ),
           ],
         ),
       ),
     ),
   );
  }

   Widget _buildDarkCard({required Widget child}) {
     return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
    color: const Color(0xFF1C1C1E),
    borderRadius: BorderRadius.circular(12),
    ),
    child: child,
     );
   }
   Widget _buildImageHeader(BuildContext context) {
   return Stack(
   children: [
   Image.asset(
     'assets/images/headphones.png',
    width: double.infinity,
    fit: BoxFit.cover,
    ),
    Positioned.fill(
    child: Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.black54, Colors.transparent, Colors.transparent],
      ),
   ),
  ),
),

   Positioned(
    top: MediaQuery.of(context).padding.top + 10,
    left: 16,
    right: 16,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [

      IconButton(
       icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
       onPressed: () {},
       ),

    Row(
     children: [
    IconButton(
     icon: const Icon(Icons.favorite_border, color: Colors.white),
     onPressed: () {},
     ),
       IconButton(
        icon: const Icon(Icons.ios_share, color: Colors.white),
        onPressed: () {},
      ),
     ],
    ),
   ],
  ),
),

  Positioned(
   bottom: 16,
   left: 0,
   right: 0,
   child: Row(
   mainAxisAlignment: MainAxisAlignment.center,
    children: List.generate(5, (index) {
    return Container(
    margin: const EdgeInsets.symmetric(horizontal: 4.0),
    width: 8,
    height: 8,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: index == 0 ? const Color(0xFFE05332) : Colors.grey.withValues(alpha: 0.5),
        ),
       );
      }
      ),
     ),
    ),
    ],
   );
  }

  Widget _buildSellerProfile() {
  return _buildDarkCard(
    child: Row(
    children: [
  const CircleAvatar(
    radius: 24,
    backgroundColor: Colors.grey,
    backgroundImage: const AssetImage('assets/images/ivan.png'),
      ),
      const SizedBox(width: 16),
   Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
   const Text(
    'Иванов Иван',
     style: TextStyle(
     color: Colors.white,
     fontSize: 16,
     fontWeight: FontWeight.bold,
       ),
     ),
    const SizedBox(height: 4),
    Row(
     children: [
      const Icon(Icons.star, color: Color(0xFFE05332), size: 16),
      const SizedBox(width: 4),
      Text(
       'Отзывы ',
      style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
       ),
     const Text(
    '(20)',
    style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
        ),
       ],
      ),
     ],
    ),
  ),
  const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
],
),
);
}
}



