part of 'incidents_bloc.dart';

abstract class IncidentsState extends Equatable {
  const IncidentsState();  

  @override
  List<Object> get props => [];
}
class IncidentsInitial extends IncidentsState {}
