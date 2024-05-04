import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'incidents_create_event.dart';
part 'incidents_create_state.dart';

class IncidentsCreateBloc
    extends Bloc<IncidentsCreateEvent, IncidentsCreateState> {
  IncidentsCreateBloc() : super(IncidentsCreateInitial()) {
    on<IncidentsCreateEvent>((event, emit) {});
  }
}
