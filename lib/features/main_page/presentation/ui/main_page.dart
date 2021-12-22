import 'package:ati_su_flutter_template_project/app/theme/bloc/app_theme.dart';
import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:ati_su_flutter_template_project/core/widgets/adaptive_circular_progress.dart';
import 'package:ati_su_flutter_template_project/core/widgets/base_snackbar.dart';
import 'package:ati_su_flutter_template_project/features/main_page/presentation/bloc/main_page_bloc.dart';
import 'package:ati_su_flutter_template_project/features/main_page/presentation/bloc/main_page_bloc_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageBloc>(
      create: (_) => GetIt.I.get()..add(const MainPageEvent.init()),
      child: SrBlocBuilder<MainPageBloc, MainPageState, MainPageSR>(
        onSR: _onSingleResult,
        builder: (_, blocState) {
          return Scaffold(
            body: SafeArea(
              child: blocState.map(
                empty: (state) => const _MainPageEmpty(),
                data: (state) => _MainPageContent(state: state),
              ),
            ),
          );
        },
      ),
    );
  }

  void _onSingleResult(BuildContext context, MainPageSR sr) {
    sr.when(
      showSnackbar: (text) => BaseSnackbar.show(context: context, text: text),
    );
  }
}

class _MainPageEmpty extends StatelessWidget {
  const _MainPageEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AdaptiveCircularProgressWidget(),
    );
  }
}

class _MainPageContent extends StatelessWidget {
  final MainPageStateData state;

  const _MainPageContent({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final bloc = context.read<MainPageBloc>();

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            state.descriptionText,
            style: appTheme.textTheme.body1Medium,
          ),
          const SizedBox(height: 8),
          if (state.timeText.isNotEmpty) Text(state.timeText),
          ElevatedButton(
            onPressed: () {
              bloc.add(const MainPageEvent.checkTime());
            },
            child: Text(state.timeButtonText),
          ),
          ElevatedButton(
            onPressed: () {
              bloc.add(const MainPageEvent.unauthorize());
            },
            child: Text(state.logoutButtonText),
          ),
        ],
      ),
    );
  }
}
