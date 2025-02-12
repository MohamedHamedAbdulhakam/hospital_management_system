import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/core/utils/colors.dart';
import 'package:hospital_system/core/utils/styles.dart';
import 'package:hospital_system/core/widgets/custom_app_bar.dart';
import 'package:hospital_system/features/auth/presentation/views/widgets/custom_auth_button.dart';
import 'package:hospital_system/features/tasks/presentation/views/widgets/custom_add_check_box.dart';
import 'package:hospital_system/features/tasks/presentation/views/widgets/custom_select_employee_text_field.dart';

import '../../../../reports/presentation/cubit/image_picker/image_picker_cubit.dart';
import '../../../../reports/presentation/views/widgets/custom_report_text_field.dart';

class CreateTaskViewBody extends StatelessWidget {
  const CreateTaskViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const CustomAppBar(title: 'Create Task'),
                    const SizedBox(
                      height: 24,
                    ),
                    const CustomReportTextField(
                      hintText: 'Task Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomSelectEmployeeTextField(
                      hintText: 'Select Employee',
                      items: [
                        'Mohamed Ahmed',
                        'Ahmed Mohamed',
                        'Mohamed Ali',
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomReportTextField(
                      hintText: 'Description',
                      maxLines: 4,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'To do',
                          style: Styles.regular16,
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              showDragHandle: true,
                              useSafeArea: true,
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const CustomReportTextField(
                                        hintText: 'Description',
                                        maxLines: 4,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      CustomAuthButton(
                                        text: 'Add',
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: kMainColor,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                              const Text(
                                'Add',
                                style: Styles.regular16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      children: const [
                        CustomAddCheckBox(
                          description: 'Lorem Ipsum is simply dummy text of',
                        ),
                        CustomAddCheckBox(
                          description: 'Lorem Ipsum is simply dummy text of',
                        ),
                        CustomAddCheckBox(
                          description: 'Lorem Ipsum is simply dummy text of',
                        ),
                        CustomAddCheckBox(
                          description: 'Lorem Ipsum is simply dummy text of',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DottedBorder(
                      strokeCap: StrokeCap.butt,
                      color: kLightGrey,
                      strokeWidth: 1,
                      // Border thickness
                      dashPattern: const [20, 12],
                      // Dash pattern (dash length, gap length)
                      borderType: BorderType.RRect,
                      // Border type (Rect, RRect, Circle, Oval)
                      radius: const Radius.circular(4),
                      child: SizedBox(
                        height: 230,
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BlocBuilder<ImagePickerCubit, ImagePickerState>(
                              builder: (context, state) {
                                if (state is ImagePickerLoaded) {
                                  return Container(
                                    width: 200,
                                    height: 150,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: FileImage(state.image),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: kMainColor, width: 2),
                                    ),
                                  );
                                } else if (state is ImagePickerLoading) {
                                  return const CircularProgressIndicator();
                                } else if (state is ImagePickerError) {
                                  return Text(state.message,
                                      style:
                                          const TextStyle(color: Colors.red));
                                } else {
                                  return Image.asset(
                                      'assets/images/upload_image.png');
                                }
                              },
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<ImagePickerCubit>().pickImage();
                              },
                              child: Container(
                                height: 40,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: kMainColor,
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Icon(
                                        Icons.add,
                                        color: kMainColor,
                                      ),
                                      Text(
                                        'Upload Image',
                                        style: Styles.regular14
                                            .copyWith(color: kMainColor),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: CustomAuthButton(
              text: 'Send',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
