import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/entities/field_entity.dart';
import 'field_container.dart';

class FieldsGridView extends StatelessWidget {
  const FieldsGridView({
    super.key,
    required this.fields,
    required this.selectedField,
    required this.onChanged,
  });

  final List<FieldEntity> fields;
  final String? selectedField;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: fields.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 1.2,
      ),
      itemBuilder: (context, index) {
        final field = fields[index];

        return FieldContainer(
          title: field.name,
          icon: _getFieldIcon(field.name),
          isSelected: selectedField == field.name,
          onTap: () => onChanged(field.name),
        );
      },
    );
  }

  IconData _getFieldIcon(String fieldName) {
    switch (fieldName) {
      case "Software Dev":
        return Icons.computer;
      case "Marketing":
        return Icons.campaign_outlined;
      case "Design":
        return Icons.draw_outlined;
      case "Finance":
        return Icons.account_balance_outlined;
      case "Human Resources":
        return Icons.groups_outlined;
      case "Sales":
        return Icons.trending_up;
      default:
        return Icons.work_outline;
    }
  }
}