import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(RouteNames.profile);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: UIConstants.defaultGap2),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          bloc: getIt<ProfileBloc>(),
          builder: (context, state) {
            return state.when(
              initial: () =>
                  const Center(child: CircularProgressIndicator.adaptive()),
              loaded: (viewModel) {
                final lastName = viewModel.lastName.isEmpty
                    ? viewModel.lastName
                    : viewModel.lastName.characters.first.toUpperCase();
                final firstName = viewModel.firstName.isEmpty
                    ? viewModel.firstName
                    : viewModel.firstName.characters.first.toUpperCase();
                return Row(
                  children: [
                    const Gap(UIConstants.defaultPadding),
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: context.theme.stroke,
                      child: Text(
                        '$lastName $firstName',
                        style: context.theme.textStyles.titleSecondary,
                      ),
                    ),
                    const Gap(UIConstants.defaultGap2),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            viewModel.firstName,
                            style: context.theme.textStyles.titleSecondary,
                          ),
                          const Gap(UIConstants.defaultGap1),
                          Text(
                            viewModel.phone,
                            style: context.theme.textStyles.titleTag
                                .copyWith(color: context.theme.secondary),
                          ),
                        ],
                      ),
                    ),
                    Assets.icons.regular.chevronRightSolid.svg(
                      height: 18,
                      width: 18,
                      colorFilter: ColorFilter.mode(
                        context.theme.secondary,
                        BlendMode.srcIn,
                      ),
                    ),
                    const Gap(30),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
