enum AuthenticationFlow {
  initial,
  codeSent,
  notRegistered;

  R map<R>({
    required R Function() initial,
    required R Function() codeSent,
    required R Function() notRegistered,
  }) =>
      switch (this) {
        AuthenticationFlow.initial => initial(),
        AuthenticationFlow.codeSent => codeSent(),
        AuthenticationFlow.notRegistered => notRegistered(),
      };

  R maybeMap<R>({
    required R Function()? initial,
    required R Function()? codeSent,
    required R Function()? notRegistered,
    required R Function() orElse,
  }) =>
      map(
        initial: initial ?? orElse,
        codeSent: codeSent ?? orElse,
        notRegistered: notRegistered ?? orElse,
      );

  R? mapOrNull<R>({
    R Function()? initial,
    R Function()? codeSent,
    R Function()? notRegistered,
  }) =>
      map<R?>(
        initial: initial ?? () => null,
        codeSent: codeSent ?? () => null,
        notRegistered: notRegistered ?? () => null,
      );
}
