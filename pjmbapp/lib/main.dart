// ignore_for_file: unused_import

import 'package:flutter/material.dart';

// --- IMPORTS ฝั่ง CLIENT (5 หน้า) ---
import 'package:pjmbapp/view/client/service_detail_view.dart';
import 'package:pjmbapp/view/client/brief_page.dart';
import 'package:pjmbapp/view/client/orders_view.dart';
import 'package:pjmbapp/view/client/order_detail_view.dart';
import 'package:pjmbapp/view/client/review_view.dart';

// --- IMPORTS ฝั่ง ADMIN (3 หน้า) ---
import 'package:pjmbapp/view/admin/user_management_view.dart';
import 'package:pjmbapp/view/admin/category_management_view.dart';
import 'package:pjmbapp/view/admin/reports_moderation_view.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // 🟢 เปิดคอมเมนต์ (ลบ //) แค่หน้าเดียวที่ต้องการรันดูผลลัพธ์:
      
      // --- ฝั่ง CLIENT ---
      home: ServiceDetailPage(),        // หน้า 1: Service Detail
      // home: BriefPage(),             // หน้า 2: Brief
      // home: OrdersView(),            // หน้า 3: Orders List
      // home: OrderDetailView(),       // หน้า 4: Order Detail / Chat
      // home: ReviewView(),            // หน้า 5: Review
      
      // --- ฝั่ง ADMIN ---
      // home: UserManagementView(),     // หน้า Admin 1: User Management
      // home: CategoryManagementView(),  // หน้า Admin 2: Category Management
      // home: ReportsModerationView(),   // หน้า Admin 3: Reports & Moderation
    ));