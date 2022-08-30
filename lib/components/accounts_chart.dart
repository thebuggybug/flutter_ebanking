import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountsChart extends StatefulWidget {
  const AccountsChart({Key? key}) : super(key: key);

  @override
  State<AccountsChart> createState() => _AccountsChartState();
}

class _AccountsChartState extends State<AccountsChart> {
  late List<BalanceData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Your monthly expenditure of ",
                  style: GoogleFonts.lato(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
                Text(
                  "July :",
                  style: GoogleFonts.lato(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue),
                ),
              ],
            ),
            SfCircularChart(
              // title: ChartTitle(text: "Monthly expenses of July"),
              legend: Legend(
                  isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
              tooltipBehavior: _tooltipBehavior,
              series: <CircularSeries>[
                PieSeries<BalanceData, String>(
                  dataSource: _chartData,
                  xValueMapper: (BalanceData data, _) => data.continent,
                  yValueMapper: (BalanceData data, _) => data.gdp,
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  enableTooltip: true,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<BalanceData> getChartData() {
    final List<BalanceData> chartData = [
      BalanceData("Entertainment", 10000),
      BalanceData("Education", 22000),
      BalanceData("Health and Medications", 4300),
      BalanceData("Utility payments", 2400),
      BalanceData("Travels ", 3000),
    ];
    return chartData;
  }
}

class BalanceData {
  BalanceData(this.continent, this.gdp);

  final String continent;
  final int gdp;
}
