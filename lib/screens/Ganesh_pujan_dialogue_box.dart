import 'package:flutter/material.dart';

class Ganesh_pujan_dialogue_box extends StatefulWidget {
  const Ganesh_pujan_dialogue_box({Key? key}) : super(key: key);

  @override
  State<Ganesh_pujan_dialogue_box> createState() => _Ganesh_pujan_dialogue_boxState();
}

class _Ganesh_pujan_dialogue_boxState extends State<Ganesh_pujan_dialogue_box> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Container(
        width: 330,
        height: 305,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(15),
          color: Color(0xFFF3F5FF),
            boxShadow: const[
              BoxShadow(color: Colors.grey,offset: Offset(0,10),
                  blurRadius: 10
              ),]
        ),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                    "Ganesh Poojan",
                     style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.w400,
                       color: Color(0xFF1E2F59)
                     ),),
                  Row(
                    children: [
                      Image.asset("assets/icons/currency.png"),
                      const Text(
                        "1000.00",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000)
                        ),),

                    ],
                  )

              ],
            ),
             const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:Image.asset("assets/icons/product.png")
                ),
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:const Text(
                      "Pandit:",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF000000)
                      ),),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "1",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:Image.asset("assets/icons/product.png")
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Product:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Pooja Services",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:Image.asset("assets/icons/package.png")
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "package:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Standard",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:Image.asset("assets/icons/date.png")
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Date:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "12-May-2022",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:Image.asset("assets/icons/duration.png")
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Duration:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                    ),),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "3 Hours",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000)
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:Image.asset("assets/icons/slot.png")
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Slot:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                    ),),
                ),
                Expanded(
                  child:const Text(
                    "Morning 09:00AM to 12:00PM (IST)",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      overflow: TextOverflow.ellipsis,
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    margin: const EdgeInsets.only(right: 5),
                    child:Image.asset("assets/icons/location.png")
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child:const Text(
                    "Location:",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000)
                    ),),
                ),
                Container(
                  child:const Text(
                    "826, Kishanpole Bazar, Jaipur",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF000000),
                      overflow: TextOverflow.ellipsis
                    ),),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                 Container(
                   width: 145,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Color(0xFF0B7D2B),
                     borderRadius: BorderRadius.circular(20)
                   ),
                   child: TextButton(
                     onPressed: (){},
                     child: const Text(
                       "Accept",
                       style: TextStyle(
                           fontSize: 16,
                           fontWeight: FontWeight.w400,
                           color: Color(0xFFFFFFFF),
                           overflow: TextOverflow.ellipsis
                       ),),
                   )),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 145,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFD00009),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        "Reject",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFFFFFFF),
                            overflow: TextOverflow.ellipsis
                        ),),
                    )),
              ],
            )
          ]
        ),
      ),
    );
  }
}
