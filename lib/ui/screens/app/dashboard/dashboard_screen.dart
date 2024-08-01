import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:saladle_ui_package/flutx.dart';
import 'package:saladleapp/ui/base/base_ui.dart';
import 'package:saladleapp/ui/screens/app/dashboard/dashboard_controller.dart';

class DashboardScreen extends BaseScreen {
  static const String routeName = '/dashboard';

  const DashboardScreen({Key? key}) : super(key: key);
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends BaseState<DashboardScreen>
    with BasicStateMixin {
  DashboardController dashboardController = Get.find();

  @override
  Widget createBody() {
    return RefreshIndicator(
      onRefresh: dashboardController.onRefresh,
      child: dashboardController.obxS((state) => SingleChildScrollView(
            child: Column(
              children: [
                _buildCurrentAmount(),
                _buildWeekStatus(),
                _buildMonthStatus(),
              ],
            ),
          )),
    );
  }

  Widget _buildCurrentAmount() {
    return FxContainer(
      padding: EdgeInsets.zero,
      color: Colors.amber,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  FxText.bodyLarge(
                    'Số dư hiện tại:',
                  ),
                  FxText.bodyLarge(
                    '1.000.000đ',
                    fontSize: 30,
                    fontWeight: 700,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  FxText.bodyLarge(
                    'Tiền trong ví:',
                  ),
                  FxText.bodyLarge(
                    '500.000đ',
                    fontSize: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  FxText.bodyLarge(
                    'Tiền trong tài khoản:',
                  ),
                  FxText.bodyLarge(
                    '500.000đ',
                    fontSize: 20,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildWeekStatus() {
    return FxContainer(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        padding: EdgeInsets.zero,
        color: Colors.amber,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FxText(
                  'Tình trạng chi tiêu tuần này (27/8 - 4/9)',
                  fontWeight: 700,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FxContainer(
                          color: Colors.pink,
                          child: Column(
                            children: [
                              FxText('Dự chi: 250.000đ'),
                              FxText('Thực chi hiện tại: 250.000đ (70%)'),
                              FxText(
                                  'Đã vượt chi tiêu. Cần phải tiêu chậm lại'),
                            ],
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FxContainer(
                          color: Colors.purpleAccent,
                          child: Column(
                            children: [
                              FxText('Còn lại: 100.000đ'),
                              FxText('Số tiền mỗi ngày: 25.000đ'),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }

  Widget _buildMonthStatus() {
    return FxContainer(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        padding: EdgeInsets.zero,
        color: Colors.amber,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FxText(
                  'Tình trạng chi tiêu tháng này (27/8 - 29/9)',
                  fontWeight: 700,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FxContainer(
                          color: Colors.pink,
                          child: Column(
                            children: [
                              FxText('Dự chi: 250.000đ'),
                              FxText('Thực chi hiện tại: 250.000đ (70%)'),
                              FxText(
                                  'Đã vượt chi tiêu. Cần phải tiêu chậm lại'),
                            ],
                          )),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      FxContainer(
                          color: Colors.purpleAccent,
                          child: Column(
                            children: [
                              FxText('Còn lại: 100.000đ'),
                              FxText('Số tiền mỗi ngày: 25.000đ'),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}
