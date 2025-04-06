part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial(
    var homepageVariable1,
    double homepageVariable2,
    String homepageVariable3,
    bool homepageVariable4,
    int homepageVariable5, {
    required int homepageVariable6,
  }) = _Initial;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
