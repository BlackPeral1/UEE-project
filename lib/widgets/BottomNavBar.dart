//  bottomNavigationBar: Container(
//           margin: EdgeInsets.all(displayWidth * .05),
//           height: displayWidth * 0.155,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black.withOpacity(.1),
//                     blurRadius: 30,
//                     offset: Offset(0, 10))
//               ],
//               borderRadius: BorderRadius.circular(50)),
//           child: ListView.builder(
//               itemCount: 4,
//               scrollDirection: Axis.horizontal,
//               padding: EdgeInsets.symmetric(horizontal: displayWidth * .82),
//               itemBuilder: (context, index) => InkWell(
//                     onTap: () {
//                       setState(() {
//                         currentIndex = index;
//                         HapticFeedback.lightImpact();
//                       });

//                     },
//                     splashColor: Colors.transparent,
//                   ))),