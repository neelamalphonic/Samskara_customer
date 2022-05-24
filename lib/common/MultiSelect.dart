import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:flutter/material.dart';

class MultiSelect extends StatefulWidget {
  const MultiSelect({Key? key}) : super(key: key);

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  static  final _languages = [
    Animal(id: 1, name: "Hindi"),
    Animal(id: 2, name: "English"),

  ];
  final _items = _languages
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
      .toList();

   var _selectedAnimals5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedAnimals5 = _languages;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    debugPrint('items${_items}');

    var packsize, height, width;
    packsize = MediaQuery.of(context).size;
    height = packsize.height;
    width = packsize.width;
    return   Container(
      width: width,
      alignment:Alignment.center,
      child: MultiSelectChipField(

        items: _items,
        initialValue: [],
        title: Text("Select Language*",style: TextStyle(color: Color(0xFFA3A3A3)),),
        headerColor: Color(0xFFF3F5FF),
        decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: Color(0xFFF3F5FF), width: 0),
            color: Color(0xFFF3F5FF)),
        selectedChipColor: Color(0xFF1E2F59),
        selectedTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
        onTap: (values) {
          debugPrint('lang${values}');
          _selectedAnimals5 = values;
        },
        validator: (_selectedAnimals5) {
          debugPrint('animal${_selectedAnimals5}');
          if (_selectedAnimals5==null || _selectedAnimals5.isEmpty) {
            return "Please Select Language";
          }
          // else if(!value.isValidPhone){ return "Please Enter Valid Phone Number";}
          return null;
        },
      ),
    );
  }
}
    // Dialog(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(12),
    //     ),
    //     alignment: Alignment.center,
    //     backgroundColor: Colors.white,
    //     // clipBehavior:Clip.none,
    //     elevation: 5,
    //     // insetAnimationCurve: Curves.decelerate,
    //     // insetAnimationDuration: const Duration(milliseconds: 100),
    //     insetPadding:EdgeInsets.all(10),
    //     child:
    //     Container(
    //         width: width-50,
    //         height: 150,
    //         alignment:Alignment.center,
    //         padding: const EdgeInsets.all(20),
    //         child: MultiSelectChipField(
    //           items: _items,
    //           initialValue: _selectedAnimals5,
    //           title: Text("Select Language*",style: TextStyle(color: Color(0xFFFFFFFF)),),
    //           headerColor: Color(0xFF1E2F59),
    //           decoration: BoxDecoration(
    //             //border: Border.all(color: Colors.blue, width: 1.8),
    //           ),
    //           selectedChipColor: Color(0xFF1E2F59),
    //           selectedTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
    //           onTap: (values) {
    //             debugPrint('lang${values}');
    //             _selectedAnimals5 = values;
    //           },
    //         ),
    //         // ListView.builder(
    //         //   scrollDirection: Axis.vertical,
    //         //   itemCount:_animals.length,
    //         //   itemBuilder: (BuildContext context,index){
    //         //     debugPrint('itemsone ${_items[index]}');
    //         //     return Container(
    //         //       margin: const EdgeInsets.all(10),
    //         //       alignment: Alignment.center,
    //         //       padding: const EdgeInsets.all(5),
    //         //       height: 40,
    //         //       decoration: BoxDecoration(
    //         //           borderRadius: BorderRadius.circular(8.0),
    //         //           //border: Border.all(color: Color(0xFF1E2F59), width: 0),
    //         //           color: Color(0xFF1E2F59)),
    //         //       child: Text(
    //         //         _items[index],
    //         //         style: TextStyle(
    //         //           color: Color(0xFFFFFFFF),
    //         //           fontWeight: FontWeight.w400,
    //         //           fontSize: 16,
    //         //         ),
    //         //       ),
    //         //     );
    //         //
    //         //   },
    //         // )
    //     )
    // );











class Animal {
  final int id;
  final String name;

  Animal({required this.id, required this.name,
  });
}
