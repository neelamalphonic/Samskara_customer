import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class _LineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      sampleData1,
      swapAnimationDuration: const Duration(milliseconds: 250),
    );
  }
  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 5,
        maxY: 5,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          // tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [lineChartBarData1_1,];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(color: Color(0xffA3A3A3), fontWeight: FontWeight.w400, fontSize: 14,);
    int num;
    switch (value.toInt()) {
      case 0:
        num = 0;
        break;
      case 1:
        num = 25;
        break;
      case 2:
        num = 50;
        break;
      case 3:
        num = 75;
        break;
      case 4:
        num = 100;
        break;
         case 5:
        num = 125;
        break;
      default:
        return Container();
    }

    return Text(num.toString(), style: style, textAlign: TextAlign.center);
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color(0xffA3A3A3),
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = const Text('Jan', style: style);
        break;
      case 1:
        text = const Text('Feb', style: style);
        break;
      case 2:
        text = const Text('Mar', style: style);
        break;
        case 3:
        text = const Text('Apr', style: style);
        break;
        case 4:
        text = const Text('May', style: style);
        break;
        case 5:
        text = const Text('Jun', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return Padding(child: text, padding: const EdgeInsets.only(top: 10.0));
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize:40,
        interval:1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(
    show: true,
    drawHorizontalLine: true,
    drawVerticalLine: true,
    getDrawingVerticalLine: (value){
      return FlLine(color: Color.fromARGB(255, 241, 235, 235), strokeWidth: 1.0, );
    },
    getDrawingHorizontalLine: (value) {
          return FlLine(color: Color.fromARGB(255, 236, 229, 229), strokeWidth: 1.0);
        },
  );

  FlBorderData get borderData => FlBorderData(
        show: true,
        border:  Border.all(color: Color(0xffF0F0F0),width: 1,),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: false,
        color: const Color(0xff1E2F59),
        barWidth: 2,
        preventCurveOverShooting: true,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true,
          getDotPainter:(spot, percent, barData, index) {
                    return FlDotCirclePainter(
                    radius: 3,
                    color: Colors.red,
                    // strokeWidth: 2,
                    // strokeColor: black,
                  );}
        ),
        belowBarData: BarAreaData(
          show: true,
          color: const Color(0x00aa4cfc),
        ),
        spots: 
        const [
          FlSpot(0, 0.8,),
          FlSpot(1, 1.5),
          FlSpot(2, 2.2),
          FlSpot(3, 2.8),
          FlSpot(4, 3.2),
          FlSpot(5, 4),
        ],);
}

class LineChartSample1 extends StatefulWidget {
  const LineChartSample1({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LineChartSample1State();
}

class LineChartSample1State extends State<LineChartSample1> {
  // late bool isShowingMainData;

  @override
  // void initState() {
  //   super.initState();
  //   isShowingMainData = true;
  // }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          // gradient: LinearGradient(
          //   colors: [
          //     Color(0xff2c274c),
          //     Color(0xff46426c),
          //   ],
          //   begin: Alignment.bottomCenter,
          //   end: Alignment.topCenter,
          // ),
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(
                  height: 37,
                ),
                Row(
                  children:const [  
                    Text('Total Earnings : ₹5000.00 ',style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 18,
                    fontFamily: 'Tw Cen MT',
                    fontWeight: FontWeight.w400,
                    // height: 1.08,
                    // letterSpacing: 0.8
                  ),
                  textAlign: TextAlign.center,
                ), 
                 SizedBox(
                  width: 2,
                ),
                Text(
                  '(Last 6 Months)',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 12,
                    fontFamily: 'Tw Cen MT',
                    fontWeight: FontWeight.w400,
                    // letterSpacing: 2,
                    height: 2
                  ),
                  textAlign: TextAlign.center,
                ),
                ],),
               const SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0,),
                    child: _LineChart(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            // IconButton(
            //   icon: Icon(
            //     Icons.refresh,
            //     color: Colors.white.withOpacity(isShowingMainData ? 1.0 : 0.5),
            //   ),
            //   onPressed: () {
            //     setState(() {
            //       isShowingMainData = !isShowingMainData;
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }
}