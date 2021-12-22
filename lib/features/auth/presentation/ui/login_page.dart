import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:ati_su_flutter_template_project/core/widgets/adaptive_circular_progress.dart';
import 'package:ati_su_flutter_template_project/core/widgets/base_snackbar.dart';
import 'package:ati_su_flutter_template_project/features/auth/presentation/bloc/login_bloc.dart';
import 'package:ati_su_flutter_template_project/features/auth/presentation/bloc/login_bloc_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback? onAuthSuccess;

  const LoginPage({
    this.onAuthSuccess,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (_) => GetIt.I.get()..add(const LoginEvent.init()),
      child: SrBlocBuilder<LoginBloc, LoginState, LoginSR>(
        onSR: _onSingleResult,
        builder: (_, blocState) => Scaffold(
          body: SafeArea(
            child: blocState.map(
              empty: (_) => const _LoginPageEmpty(),
              data: (state) => _LoginPageContent(state: state),
            ),
          ),
        ),
      ),
    );
  }

  void _onSingleResult(BuildContext context, LoginSR sr) {
    sr.when(
      success: () => onAuthSuccess?.call(),
      showSnackbar: (text) => BaseSnackbar.show(context: context, text: text),
    );
  }
}

class _LoginPageEmpty extends StatelessWidget {
  const _LoginPageEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AdaptiveCircularProgressWidget(),
    );
  }
}

class _LoginPageContent extends StatelessWidget {
  final LoginStateData state;

  const _LoginPageContent({
    required this.state,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LoginBloc>();

    return Center(
      child: ElevatedButton(
        onPressed: () {
          bloc.add(const LoginEvent.authorize());
        },
        child: Text(state.loginButtonText),
      ),
    );
  }
}
