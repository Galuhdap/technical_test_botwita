part of 'splash_cubit.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _SplashInitial;
  const factory SplashState.loading() = _SplashLoading;
  const factory SplashState.authenticated() = _SplashAuthenticated;
  const factory SplashState.unauthenticated() = _SplashUnauthenticated;
}
