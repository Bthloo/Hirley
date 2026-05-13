import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hirely/core/custom_elevated_button.dart';
import 'package:hirely/core/teme_data.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../data/data_source/fields_data_source.dart';
import '../../../data/repositories/field_repositories_impl.dart';
import '../../../domain/entities/field_entity.dart';
import '../../cubit/form_selection_cubit.dart';
import '../../cubit/get_fields_cubit.dart';
import '../../cubit/get_specializations_cubit.dart';
import '../component/fields_Grid_view.dart';
import '../component/fields_grid_view.dart' hide FieldsGridView;
import '../component/step_section.dart';


class FieldSelectionScreen extends StatelessWidget {
  const FieldSelectionScreen({super.key});

  static const String routeName = "field_selection_screen";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetFieldsCubit(
            fieldRepo: FieldRepoImpl(datasource: FieldDatasource()),
          )..getFields(),
        ),
        BlocProvider(
          create: (_) => GetSpecializationsCubit(
            fieldRepo: FieldRepoImpl(datasource: FieldDatasource()),
          ),
        ),
        BlocProvider(
          create: (_) => FormSelectionCubit(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: Text("Hirely"), centerTitle: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StepSection(currentStep: 2),
                SizedBox(height: 10.h),
                Text(
                  "Your field",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF191C1D),
                  ),
                ),
                SizedBox(height: 10.h),
                BlocBuilder<GetFieldsCubit, GetFieldsState>(
                  builder: (context, state) {
                    if (state is GetFieldsLoading) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: FieldsGridView(
                          fields: List.generate(
                            6,
                                (index) => FieldEntity(name: "Loading"),
                          ),
                          selectedField: null,
                          onChanged: (_) {},
                        ),
                      );
                    } else if (state is GetFieldsFailure) {
                      return Center(child: Text(state.message));
                    } else if (state is GetFieldsSuccess) {
                      return BlocBuilder<FormSelectionCubit, FormSelectionState>(
                        builder: (context, formState) {
                          return FieldsGridView(
                            fields: state.fields,
                            selectedField: formState.selectedField,
                            onChanged: (value) {
                              context.read<FormSelectionCubit>().selectField(value);
                              context.read<GetSpecializationsCubit>().getSpecializations(value);
                            },
                          );
                        },
                      );
                    }
                    return SizedBox.shrink();
                  },
                ),

                SizedBox(height: 25.h),
                Text(
                  "SPECIALIZATION",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434653),
                  ),
                ),

                BlocBuilder<GetSpecializationsCubit, GetSpecializationsState>(
                  builder: (context, specState) {
                    final cubit = context.read<GetSpecializationsCubit>();
                    if (specState is GetSpecializationsLoading) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          height: 59.h,
                          width: double.infinity,
                          color: Colors.white.withAlpha(80),
                        ),
                      );
                    }

                    return BlocBuilder<FormSelectionCubit, FormSelectionState>(
                      builder: (context, formState) {
                        return DropdownMenu<String>(
                          key: ValueKey(formState.selectedField),
                          width: double.infinity,
                                                trailingIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      selectedTrailingIcon: Icon(
                        Icons.keyboard_arrow_up_outlined,
                      ),
                      menuStyle: MenuStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        padding: WidgetStatePropertyAll(EdgeInsets.all(10.r)),
                        side: WidgetStatePropertyAll(
                          BorderSide(color: Color(0xFFC3C6D5), width: 2),
                        ),
                      ),
                      inputDecorationTheme: InputDecorationTheme(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 12.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0xFFC3C6D5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0xFFC3C6D5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(
                            color: AppTheme.primary,
                            width: 2,
                          ),
                        ),
                      ),
                          enabled: formState.selectedField != null,
                          hintText: formState.selectedField == null
                              ? "Select field first"
                              : "Select specialization",
                          initialSelection: formState.selectedSpecialization,
                          onSelected: (value) {
                            if (value != null) {
                              context.read<FormSelectionCubit>().selectSpecialization(value);
                            }
                          },
                          dropdownMenuEntries: cubit.specializations
                              .map((e) => DropdownMenuEntry(value: e.name, label: e.name))
                              .toList(),
                        );
                      },
                    );
                  },
                ),

                SizedBox(height: 24.h),
                Text(
                  "EXPERIENCE LEVEL",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF434653),
                  ),
                ),

                BlocBuilder<FormSelectionCubit, FormSelectionState>(
                  builder: (context, formState) {
                    return DropdownMenu<String>(
                      width: double.infinity,
                      hintText: 'Select your Level',
                      initialSelection: formState.experience,
                                            trailingIcon: Icon(Icons.keyboard_arrow_down_outlined),
                      selectedTrailingIcon: Icon(
                        Icons.keyboard_arrow_up_outlined,
                      ),
                      menuStyle: MenuStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white),
                        padding: WidgetStatePropertyAll(EdgeInsets.all(10.r)),
                        side: WidgetStatePropertyAll(
                          BorderSide(color: Color(0xFFC3C6D5), width: 2),
                        ),
                      ),
                      inputDecorationTheme: InputDecorationTheme(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.w,
                          vertical: 12.h,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0xFFC3C6D5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(color: Color(0xFFC3C6D5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(
                            color: AppTheme.primary,
                            width: 2,
                          ),
                        ),
                      ),
                      onSelected: (value) {
                        if (value != null) {
                          context.read<FormSelectionCubit>().selectExperience(value);
                        }
                      },
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(value: "Junior (0 - 2 years)", label: "Junior (0 - 2 years)"),
                        DropdownMenuEntry(value: "Mid (2 - 5 years)", label: "Mid (2 - 5 years)"),
                        DropdownMenuEntry(value: "Senior (5 - 8 years)", label: "Senior (5 - 8 years)"),
                        DropdownMenuEntry(value: "Tech Lead ( more than 8 years)", label: "Tech Lead (more than 8 years)"),
                      ],
                    );
                  },
                ),

                SizedBox(height: 30.h),

                BlocBuilder<FormSelectionCubit, FormSelectionState>(
                  builder: (context, formState) {
                    return SizedBox(
                      height: 58.h,
                      child: CustomElevatedButton(
                        text: "Confirm & Continue",
                        onPressed: () {
                          if (formState.selectedField == null ||
                              formState.selectedSpecialization == null ||
                              formState.experience == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Please complete all fields")),
                            );
                            return;
                          }

                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



//
// class FieldSelectionScreen extends StatefulWidget {
//   const FieldSelectionScreen({super.key});
//
//   static const String routeName = "field_selection_screen";
//
//   @override
//   State<FieldSelectionScreen> createState() => _FieldSelectionScreenState();
// }
//
// class _FieldSelectionScreenState extends State<FieldSelectionScreen> {
//   String? selectedField;
//   String? selectedSpecialization;
//   String? specialization;
//   String? experience;
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           create: (_) => GetFieldsCubit(
//             fieldRepo: FieldRepoImpl(datasource: FieldDatasource()),
//           )..getFields(),
//         ),
//
//         BlocProvider(
//           create: (_) => GetSpecializationsCubit(
//             fieldRepo: FieldRepoImpl(datasource: FieldDatasource()),
//           ),
//         ),
//       ],
//       child: Scaffold(
//         appBar: AppBar(title: Text("Hirely"), centerTitle: true),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(15.w),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 StepSection(currentStep: 2),
//                 SizedBox(height: 10.h),
//                 Text(
//                   "Your field",
//                   style: TextStyle(
//                     fontSize: 24.sp,
//                     fontWeight: FontWeight.w600,
//
//                     color: Color(0xFF191C1D),
//                   ),
//                 ),
//                 SizedBox(height: 10.h),
//
//                 BlocBuilder<GetFieldsCubit, GetFieldsState>(
//                   builder: (context, state) {
//                     if (state is GetFieldsLoading) {
//                       return const Center(child: CircularProgressIndicator());
//                     } else if (state is GetFieldsFailure) {
//                       return Center(child: Text(state.message));
//                     } else if (state is GetFieldsSuccess) {
//                       return FieldsGridView(
//                         fields: state.fields,
//                         selectedField: selectedField,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedField = value;
//                             selectedSpecialization = null;
//                           });
//
//                           context
//                               .read<GetSpecializationsCubit>()
//                               .getSpecializations(value);
//                         },
//                       );
//                     } else {
//                       return SizedBox.shrink();
//                     }
//                   },
//                 ),
//
//                 SizedBox(height: 25.h),
//                 Text(
//                   "SPECIALIZATION",
//                   style: TextStyle(
//                     fontSize: 12.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xFF434653),
//                   ),
//                 ),
//
//                 BlocBuilder<GetSpecializationsCubit, GetSpecializationsState>(
//                   builder: (context, state) {
//                     final cubit = context.read<GetSpecializationsCubit>();
//
//                     if (state is GetSpecializationsLoading) {
//                       return const Padding(
//                         padding: EdgeInsets.all(10),
//                         child: CircularProgressIndicator(),
//                       );
//                     }
//
//                     return DropdownMenu<String>(
//                       key: ValueKey(selectedField),
//                       width: double.infinity,
//                       enabled: selectedField != null,
//                       hintText: selectedField == null
//                           ? "Select field first"
//                           : "Select specialization",
//                       trailingIcon: Icon(Icons.keyboard_arrow_down_outlined),
//                       selectedTrailingIcon: Icon(
//                         Icons.keyboard_arrow_up_outlined,
//                       ),
//                       menuStyle: MenuStyle(
//                         backgroundColor: WidgetStatePropertyAll(Colors.white),
//                         padding: WidgetStatePropertyAll(EdgeInsets.all(10.r)),
//                         side: WidgetStatePropertyAll(
//                           BorderSide(color: Color(0xFFC3C6D5), width: 2),
//                         ),
//                       ),
//                       inputDecorationTheme: InputDecorationTheme(
//                         filled: true,
//                         fillColor: Colors.white,
//                         contentPadding: EdgeInsets.symmetric(
//                           horizontal: 15.w,
//                           vertical: 12.h,
//                         ),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.r),
//                           borderSide: BorderSide(color: Color(0xFFC3C6D5)),
//                         ),
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.r),
//                           borderSide: BorderSide(color: Color(0xFFC3C6D5)),
//                         ),
//                         focusedBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(8.r),
//                           borderSide: BorderSide(
//                             color: AppTheme.primary,
//                             width: 2,
//                           ),
//                         ),
//                       ),
//                       initialSelection: selectedSpecialization,
//                       onSelected: (value) {
//                         setState(() {
//                           selectedSpecialization = value;
//                         });
//                       },
//
//                       dropdownMenuEntries: cubit.specializations
//                           .map(
//                             (e) =>
//                                 DropdownMenuEntry(value: e.name, label: e.name),
//                           )
//                           .toList(),
//                     );
//                   },
//                 ),
//
//                 SizedBox(height: 24.h),
//                 Text(
//                   "EXPERIENCE LEVEL",
//                   style: TextStyle(
//                     fontSize: 12.sp,
//                     fontWeight: FontWeight.w600,
//                     color: Color(0xFF434653),
//                   ),
//                 ),
//                 DropdownMenu<String>(
//                   width: double.infinity,
//                   inputDecorationTheme: InputDecorationTheme(
//                     filled: true,
//                     fillColor: Colors.white,
//                     contentPadding: EdgeInsets.symmetric(
//                       horizontal: 15.w,
//                       vertical: 12.h,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.r),
//                       borderSide: BorderSide(color: Color(0xFFC3C6D5)),
//                     ),
//                     enabledBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.r),
//                       borderSide: BorderSide(color: Color(0xFFC3C6D5)),
//                     ),
//                     focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(8.r),
//                       borderSide: BorderSide(color: AppTheme.primary, width: 2),
//                     ),
//                   ),
//                   hintText: 'Select your Level',
//                   trailingIcon: Icon(Icons.keyboard_arrow_down_outlined),
//                   selectedTrailingIcon: Icon(Icons.keyboard_arrow_up_outlined),
//                   menuStyle: MenuStyle(
//                     backgroundColor: WidgetStatePropertyAll(Colors.white),
//                     padding: WidgetStatePropertyAll(EdgeInsets.all(10.r)),
//                     side: WidgetStatePropertyAll(
//                       BorderSide(color: Color(0xFFC3C6D5), width: 2),
//                     ),
//                   ),
//                   initialSelection: experience,
//                   onSelected: (value) {
//                     setState(() {
//                       experience = value;
//                     });
//                   },
//                   dropdownMenuEntries: [
//                     DropdownMenuEntry(
//                       value: "Junior (0 - 2 years)",
//                       label: "Junior (0 - 2 years)",
//                     ),
//                     DropdownMenuEntry(
//                       value: "Mid (2 - 5 years)",
//                       label: "Mid (2 - 5 years)",
//                     ),
//                     DropdownMenuEntry(
//                       value: "Senior (5 - 8 years)",
//                       label: "Senior (5 - 8 years)",
//                     ),
//                     DropdownMenuEntry(
//                       value: "Tech Lead ( more than 8 years)",
//                       label: "Tech Lead (more than 8 years)",
//                     ),
//                   ],
//                 ),
//
//                 SizedBox(height: 30.h),
//                 SizedBox(
//                   height: 58.h,
//                   child: CustomElevatedButton(
//                     text: "Confirm & Continue",
//                     onPressed: () {
//                       if (selectedField == null ||
//                           selectedSpecialization == null ||
//                           experience == null) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             content: Text("Please complete all fields"),
//                           ),
//                         );
//                         return;
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
