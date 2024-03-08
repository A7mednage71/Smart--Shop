import 'package:flutter/material.dart';
import 'package:smartshop/core/widgets/App_Name_Shimmer.dart';
import 'package:smartshop/features/ordersscreen/presentation/views/widgets/all_orders_widget.dart';
import 'package:smartshop/features/ordersscreen/presentation/views/widgets/completed_widget.dart';
import 'package:smartshop/features/ordersscreen/presentation/views/widgets/in_progress.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  static const routname = 'OrdersScreen';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const AppNameWidget(name: "Product details"),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            indicatorWeight: 3,
            splashBorderRadius: BorderRadius.circular(20),
            tabs: const [
              Tab(
                child: Text("All Orders"),
              ),
              Tab(
                child: Text("Completed"),
              ),
              Tab(
                child: Text("In-Process"),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          AllOrdersWidget(),
          CompletedOrdersWidget(),
          InProcessOrders()
        ]),
      ),
    );
  }
}
