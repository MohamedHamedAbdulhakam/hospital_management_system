class PasswordState {
  final bool isPasswordVisible;

  PasswordState({required this.isPasswordVisible});

  // Copy with method for immutability
  PasswordState copyWith({bool? isPasswordVisible}) {
    return PasswordState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }
}