import 'package:flutter/material.dart';
import 'package:profile_app2/comrpnents/profile_buttons.dart';
import 'package:profile_app2/comrpnents/profile_count_info.dart';
import 'package:profile_app2/comrpnents/profile_drawer.dart';
import 'package:profile_app2/comrpnents/profile_header.dart';
import 'package:profile_app2/comrpnents/profile_tab.dart';

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
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ProfileHeader(),
                ProfileCountInfo(),
                ProfileButtons(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 400,
              child: ProfileTab(),
            ),
          )
        ],
      ),
    );
  }
}
