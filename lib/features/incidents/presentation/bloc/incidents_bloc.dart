import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'incidents_event.dart';
part 'incidents_state.dart';

class IncidentsBloc extends Bloc<IncidentsEvent, IncidentsState> {
  IncidentsBloc() : super(IncidentsInitial()) {
    on<IncidentsEvent>((event, emit) {});
  }
}
