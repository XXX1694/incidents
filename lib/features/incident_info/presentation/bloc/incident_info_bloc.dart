import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'incident_info_event.dart';
part 'incident_info_state.dart';

class IncidentInfoBloc extends Bloc<IncidentInfoEvent, IncidentInfoState> {
  IncidentInfoBloc() : super(IncidentInfoInitial()) {
    on<IncidentInfoEvent>((event, emit) {});
  }
}
