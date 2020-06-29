import 'package:flutter/material.dart';
import 'package:pricingpage/menuItem.dart';
import 'centered_view.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'constants.dart';

class PricingPage extends StatefulWidget {
  @override
  _PricingPageState createState() => _PricingPageState();
}

class _PricingPageState extends State<PricingPage> {

  // Initialization and declaration of dropDownMenu items
  Items selectedItem;
  List<Items> items = <Items>[
    Items('2500 MAUs'),
    Items('3000 MAUs'),
    Items('5000 MAUs'),
    Items('10000 MAUs'),
  ];

  // Initializing color scheme variables


  @override
  Widget build(BuildContext context) {

    // Assigning widthOfScreen variable depending on screen size
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CenteredView(
        color: kPrimaryBgColor,
        child: Column(
          children: [
            // Top 'current plan' container also making it responsive using Expanded widget
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kAccentColor,
                        borderRadius: BorderRadius.circular(4),
                    ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16, left: 48.0, right: 48.0),
                        child: Column(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text('Your current plan:', style: TextStyle(fontSize: 12.0, color: Colors.white),),
                                ),
                              ),
                              Expanded(flex: 1,child: Text('Starter Trial + 500MAUs', style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.bold, color: Colors.white),)),
          ],),
                      ),
      ),
                  SizedBox(width: 280.0),
                  FlutterSwitch(
                    width: 80.0,
                    height: 30.0,
                    toggleSize: 15.0,
                    value: true,
                    borderRadius: 30.0,
                    padding: 3.0,
                    showOnOff: true,
                    activeText: 'Dark',
                    activeColor: kAccentColor,
                    inactiveText: 'Light',
                    onToggle: (val) {
                      setState(() {
                        if (val == true){
                          kAccentColor = Color(0xFFc60046);
                          kPrimaryBgColor = Color(0xFF00010a);
                          kHeaderTextColor = Colors.white;
                          kSubTextColor = Color(0xFF8C9494);
                          kModalContainerColor = Color(0xFF0a0b14);
                          kModalHeaderTextColor = Colors.white70;
                          kModalDetailsTextColor = Color(0xFF8C8C94);
                          kDropDownBorderColor = Colors.white10;
                        }else if (val == false){
                          kAccentColor = Color(0xFFc60046);
                          kPrimaryBgColor = Color(0xFF949498);
                          kHeaderTextColor = Colors.black;
                          kSubTextColor = Colors.black54;
                          kModalContainerColor = Colors.white70;
                          kModalHeaderTextColor = Colors.black87;
                          kModalDetailsTextColor = Colors.black54;
                          kDropDownBorderColor = Colors.black12;
                        }
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            Expanded(
              flex: 7,
              child: Column(
        children: [
          Expanded(flex: 1,child: Text('Choose a plan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: kHeaderTextColor))),
          SizedBox(height: 20.0),
          Expanded(
            flex: 1,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Billed monthly  ', style: TextStyle(fontSize: 12.0, color: kSubTextColor,),),
                  FlutterSwitch(
                    width: 40.0,
                    height: 20.0,
                    toggleSize: 15.0,
                    value: false,
                    borderRadius: 30.0,
                    padding: 3.0,
                    showOnOff: true,
                    activeText: '',
                    activeColor: kAccentColor,
                    inactiveText: '',
                    onToggle: (val) {
                      setState(() {
                        val = true;
                      });
                    },
                  ),
                  Text('   Billed annually', style: TextStyle(fontSize: 12.0, color: kSubTextColor,),),
                ],
            ),
          ),
          SizedBox(height: 20.0),

          Expanded(
            flex: 20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: kModalContainerColor,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Starter', style: TextStyle(fontSize: 15.0, color: kModalHeaderTextColor)),
                            ),
                            Text('\$19', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: kHeaderTextColor)),
                            SizedBox(height: 45.0),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('500 MAUs', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('3 projects', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Unlimited guides', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Unlimited flows', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Unlimited branded themes', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Email support', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),

                            SizedBox(height: 20.0),

                            MaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                minWidth: widthOfScreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(width: 1, style: BorderStyle.solid, color: kAccentColor.withOpacity(0.5)),
                                ),
                                height: 40,
                                color: kModalContainerColor,
                                child: Text('Choose Plan',
                                    style: TextStyle(color: kHeaderTextColor))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: kModalContainerColor,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Pro', style: TextStyle(fontSize: 15.0, color: kModalHeaderTextColor)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text('\$99', style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: kHeaderTextColor)),
                                Text('/month', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold, color: kHeaderTextColor))
                              ],
                            ),
                            SizedBox(height: 2.0),

                            // DropDownMenu container plus styling
                            Container(
                              width: double.infinity,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(width: 1.0, style: BorderStyle.solid, color: kDropDownBorderColor),
                                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 28.0),
                                  child: Container(
                                    child: new DropdownButton<Items>(
                                      value: selectedItem,
                                      onChanged: (Items value) {
                                        setState(() {
                                          selectedItem = value;
                                        });
                                      },
                                      items: items.map((Items items) {
                                        return  DropdownMenuItem<Items>(
                                          value: items,
                                          child: Text(
                                            items.name,
                                            style:  TextStyle(color: kModalHeaderTextColor, fontSize: 14.0),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                              child: Text('Monthly active users', style: TextStyle(color: kAccentColor, fontSize: 10.0),),
                            ),
                            SizedBox(height: 20.0),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('All starter features, plus:', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Unlimited projects', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Unlimited fully customizable themes', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('A dedicated Success Manager', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),

                            SizedBox(height: 20.0),

                            MaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                minWidth: widthOfScreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                height: 40,
                                color: kAccentColor,
                                child: Text('Choose Plan',
                                    style: TextStyle(color: Colors.white))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: kModalContainerColor,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0, bottom: 20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: Text('Enterprise', style: TextStyle(fontSize: 15.0, color: kModalHeaderTextColor)),
                            ),
                            Text('Let\'s Talk!' , style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: kHeaderTextColor)),
                            SizedBox(height: 72.0),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('All Pro features', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Unlimited MAUs', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Dedicated environment', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Enterprise account administration', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(Icons.control_point, color: kAccentColor, size: 15.0,),
                                  ),
                                  Text('Premium support and services', style: TextStyle(fontSize: 12.0, color: kModalDetailsTextColor)),
                                ],
                              ),
                            ),

                            SizedBox(height: 20.0),

                            MaterialButton(
                                onPressed: () {},
                                elevation: 0,
                                minWidth: widthOfScreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(width: 1, style: BorderStyle.solid, color: kAccentColor.withOpacity(0.5)),
                                ),
                                height: 40,
                                color: kModalContainerColor,
                                child: Text('Contact Us',
                                    style: TextStyle(color: kModalHeaderTextColor))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
            ),
      ],
    ),
    ),
    );
  }
}
