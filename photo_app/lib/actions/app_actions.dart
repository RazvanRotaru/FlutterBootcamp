class AppAction {}

class ErrorAction implements AppAction {
  ErrorAction(this.stackTrace, this.error);

  final StackTrace stackTrace;
  final Object error;
}
