import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_system/features/reports/presentation/cubit/image_picker/image_picker_cubit.dart';

import '../../../reports/data/repositories/image_picker_repository.dart';
import 'widgets/create_task_view_body.dart';

class CreateTaskView extends StatelessWidget {
  const CreateTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ImagePickerCubit(
          ImagePickerRepository(),
        ),
        child: const CreateTaskViewBody(),
      ),
    );
  }
}
