import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 40, width: 40, child: Image.asset(AppImages.blocks)),
              SizedBox(
                height: 24,
              ),
              Text("Gerenciamento de Estado", style: AppTextStyles.heading15),
              SizedBox(
                height: 32,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Text("3/10", style: AppTextStyles.body11)),
                  Expanded(
                    flex: 4,
                    child: ProgressIndicatorWidget(value: 0.4),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
