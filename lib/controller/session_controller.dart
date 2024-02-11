class SessionController {
  static final SessionController sessionController =
      SessionController._sessionController();

  String? userId;

  factory SessionController() {
    return sessionController;
  }
  SessionController._sessionController() {}
}
