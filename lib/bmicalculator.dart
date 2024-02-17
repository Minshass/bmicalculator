import 'package:flutter/material.dart';
class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double h_value = 0;
  double w_value = 0;
  double result = 0;

  void calculate() {
    h_value = double.parse(height.text)/100;
    w_value = double.parse(weight.text);
    result = w_value / (h_value * h_value);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('BmiCalculator'), backgroundColor: Colors.red,),
      backgroundColor: Colors.blue,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [

        TextField(
          controller: height,
          decoration: InputDecoration(filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              border: OutlineInputBorder(),
              hintText: 'Enter1:',
              hintStyle: TextStyle(color: Colors.black)

          ),
        ),
        SizedBox(height: 20,),

        TextField(
          controller: weight,
          decoration: InputDecoration(filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              border: OutlineInputBorder(),
              hintText: 'Enter2:',
              hintStyle: TextStyle(color: Colors.black)
          ),),

    TextButton(onPressed: (){
      setState(() {
        calculate()
      });
    },
      child: Text('Calculate',style:TextStyle(fontSize: 30, color:Colors.green))),
      Text('result',style: TextStyle(fontSize:30,color:Colors.black),)

    ],),);
  }
}
