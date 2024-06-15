import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/main_tile_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/question/question.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/support/support.dart';
import 'package:nomad_taxi/src/features/help/presentation/bloc/help_bloc.dart';
import 'package:nomad_taxi/src/features/help/presentation/widgets/show_info_modal_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../domain/entities/questions.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return BaseBlocWidget<HelpBloc, HelpEvent, HelpState>(
      starterEvent: const HelpEvent.getQuestions(),
      bloc: getIt<HelpBloc>(),
      builder: (context, state, bloc) {
        return state.when(
          initial: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loading: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          loaded: (viewModel) {
            final Questions questions = viewModel.questions!;
            final List<Question> questionList = questions.questions;
            final Support support = questions.support;
            return Scaffold(
              appBar: CustomAppBar(
                  leading: BackButtonWrapper(onPressed: () => context.pop())),
              body: SafeArea(
                child: Container(
                  padding: const EdgeInsets.all(UIConstants.defaultPadding),
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.help,
                        style: context.theme.textStyles.titleMain,
                        textAlign: TextAlign.left,
                      ),
                      const Gap(UIConstants.defaultGap2),
                      Text(
                        S.current.answers_popular_questions,
                        style: context.theme.textStyles.bodyMain
                            .copyWith(color: context.theme.secondary),
                      ),
                      const Gap(UIConstants.defaultGap3),
                      Expanded(
                        child: ListView.builder(
                          itemCount: questionList.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return MainTileWidget(
                              title: questionList[index].question,
                              onTap: () {
                                showInfoModal(
                                  context: context,
                                  title: questionList[index].question,
                                  description: questionList[index].answer,
                                  date: questionList[index].answerTime,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              bottomNavigationBar: CustomMainBottomWidgets(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomMainButtonWidget(
                      prefixIcon: Assets.icons.solid.phoneSolid,
                      iconColor: context.theme.green,
                      title: S.current.support_service,
                      onPressed: () async {
                        final Uri phoneUrl = Uri(
                          scheme: 'tel',
                          path: '+77476133356',
                        );

                        if (await launchUrl(phoneUrl)) {
                          launchUrl(phoneUrl);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Could not launch $phoneUrl')));
                        }
                      },
                      isMain: false,
                    ),
                    const Gap(UIConstants.defaultGap1),
                    CustomMainButtonWidget(
                      prefixIcon: Assets.icons.solid.commentSolid,
                      iconColor: context.theme.green,
                      title: S.current.write_appeal,
                      onPressed: () {
                        launchTelegram(support.feedback);
                      },
                      isMain: false,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void showInfoModal({
    required BuildContext context,
    required String title,
    required String description,
    required String date,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return CustomInfoModalWidget(
          title: title,
          description: description,
          date: date,
        );
      },
    );
  }

  launchTelegram(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Telegram not installed")));
    }
  }
}
