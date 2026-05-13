import 'package:flutter/material.dart';
import 'package:hirely/features/profile_setup_screen/presentation/view/component/role_container.dart';

class RolesListView extends StatefulWidget {
  const RolesListView({super.key, required this.onChanged});
  final ValueChanged<String?> onChanged;
  @override
  State<RolesListView> createState() => _RolesListViewState();
}

class _RolesListViewState extends State<RolesListView> {
  int? selectedIndex;

  final List<String> roles = [
    "Graduate",
    "Student",
    "Professional",
    " HR Team",
  ];

  void select(int index) {
    setState(() {
      selectedIndex = index;
    });

    widget.onChanged(roles[index]);
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RoleContainer(
          title: "Fresh Graduate",
          description: "Just graduated · looking for first job",
          icon: Icons.school_outlined,
          isSelected: selectedIndex == 0,
          onTap: () => select(0),
        ),
        SizedBox(height: 10),
        RoleContainer(
          title: "University Student",
          description: "Still studying",
          icon: Icons.menu_book_outlined,
          isSelected: selectedIndex == 1,
          onTap: () => select(1),
        ),
        SizedBox(height: 10),
        RoleContainer(
          title: "Working Professional",
          description: "Experienced hire",
          icon: Icons.work_outline,
          isSelected: selectedIndex == 2,
          onTap: () => select(2),
        ),
        SizedBox(height: 10),
        RoleContainer(
          title: "Company / HR Team",
          description: "Looking to hire",
          icon: Icons.apartment,
          isSelected: selectedIndex == 3,
          onTap: () => select(3),
        ),
      ],
    );
  }
}
