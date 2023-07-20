import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_state.freezed.dart';

@freezed
class ViewState<T> with _$ViewState<T> {
  const factory ViewState.initial() = ViewstateInitial<T>;
  const factory ViewState.loading() = ViewStateLoading;
  const factory ViewState.success({required T data}) = ViewStateSuccess<T>;
  const factory ViewState.error({required String message}) = ViewStateError;
}
