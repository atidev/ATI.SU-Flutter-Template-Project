import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_mixin.dart';
import 'package:bloc/bloc.dart';

/// Абстракция для расширения возможностей блок для отправки SingleResult - событий которые необходимо отрендерить 1 раз
/// - Навгиация
/// - Тост
/// - Снек
/// - Какое-то взаимодействие с анимацией
abstract class SrBloc<Event, State, SR> extends Bloc<Event, State> with SingleResultMixin<Event, State, SR> {
  SrBloc(State state) : super(state);
}
