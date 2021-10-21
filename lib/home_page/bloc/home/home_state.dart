part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.data(
  {required int count,
  required int totalCount,}
  ) = _DataHomeState;

  const factory HomeState.initial() = _InitialHomeState;

  const factory HomeState.loading({required double percent}) = _LoadingHomeState;
  const factory HomeState.credentials({AuthClient? client}) = _CredentialsHomeState;

  const factory HomeState.error() = _ErrorHomeState;
}
