import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/bindings.dart';
import 'package:lms/modules/create_emolpyee/views/create_employe_view.dart';
import 'package:lms/modules/get_employee/views/get_employee_view.dart';
import 'package:lms/modules/home/views/home_views.dart';
import 'package:lms/modules/login_module/login_views/login_views.dart';

void main() {
  runApp(LeaveManagement());
}

class LeaveManagement extends StatelessWidget {
  const LeaveManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      title: 'Leave Management',
      theme: ThemeData.dark(),
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomeView(),
          binding: HomeBindings(),
        ),
        GetPage(
          name: '/employee',
          page: () => const GetEmployee(),
          binding: GetEmoloyeeBindings(),
        ),
        GetPage(
          name: '/create-employee',
          page: () => const CreateEmployeeView(),
          binding: CreateEmployeeBindings(),
        ),
        GetPage(
          name: '/login',
          page: () => LoginView(),
          binding: LoginBindings(),
        )
      ],
    );
  }
}
