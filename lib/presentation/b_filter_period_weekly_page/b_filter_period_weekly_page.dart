import 'package:fintech_app/core/app_export.dart';
import 'package:fintech_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore_for_file: must_be_immutable
class BFilterPeriodWeeklyPage extends StatefulWidget {
  const BFilterPeriodWeeklyPage({Key? key})
      : super(
          key: key,
        );

  @override
  BFilterPeriodWeeklyPageState createState() => BFilterPeriodWeeklyPageState();
}

class BFilterPeriodWeeklyPageState extends State<BFilterPeriodWeeklyPage>
    with AutomaticKeepAliveClientMixin<BFilterPeriodWeeklyPage> {
  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 8.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: Column(
                    children: [
                      _buildCalendarWeekly(context),
                      Spacer(),
                      CustomElevatedButton(
                        text: "Done",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendarWeekly(BuildContext context) {
    return SizedBox(
      height: 348.v,
      width: 343.h,
      child: TableCalendar(
        locale: 'en_US',
        firstDay: DateTime(DateTime.now().year - 5),
        lastDay: DateTime(DateTime.now().year + 5),
        calendarFormat: CalendarFormat.month,
        rangeSelectionMode: rangeSelectionMode,
        startingDayOfWeek: StartingDayOfWeek.sunday,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
        calendarStyle: CalendarStyle(
          outsideDaysVisible: false,
          isTodayHighlighted: true,
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(
            color: appTheme.gray90004,
            fontFamily: 'General Sans Variable',
            fontWeight: FontWeight.w600,
          ),
        ),
        headerVisible: false,
        focusedDay: focusedDay,
        rangeStartDay: rangeStart,
        rangeEndDay: rangeEnd,
        onDaySelected: (selectedDay, focusedDay) {},
        onRangeSelected: (start, end, focusedDay) {},
        onPageChanged: (focusedDay) {},
      ),
    );
  }
}
