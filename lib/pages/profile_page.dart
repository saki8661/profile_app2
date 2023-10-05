import 'package:flutter/material.dart';
import 'package:profile_app2/comrpnents/profile_buttons.dart';
import 'package:profile_app2/comrpnents/profile_drawer.dart';
import 'package:profile_app2/comrpnents/profile_header.dart';
import 'package:profile_app2/comrpnents/profile_tab.dart';

import '../comrpnents/profile_count_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: ProfileDrawer(),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  ProfileHeader(),
                  ProfileCountInfo(),
                  ProfileButtons(),
                ],
              ),
            )
          ];
        },
        body: Expanded(child: ProfileTab()),
      ),
    );
  }
}
