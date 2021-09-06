part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initial() = _InitialHomeEvent;

  const factory HomeEvent.load({
    required String email,
    required AuthClient client,
    required DateTime start,
    required DateTime end,
  }) = _LoadHomeEvent;

  const factory HomeEvent.getCredentials() = _GetCredentialsHomeEvent;
}
