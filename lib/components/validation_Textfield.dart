import 'package:flutter/material.dart';

class ValidationTextFieldEx extends StatelessWidget {
  const ValidationTextFieldEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: const Center(
          child: ValidationTextField(),
        ),
      ),
    );
  }
}

class ValidationTextField extends StatefulWidget {
  const ValidationTextField(
      {this.textEditingController,
      this.validator,
      this.onChanged,
      this.showConfirmation = true,
      Key? key})
      : super(key: key);
  final bool showConfirmation;
  final void Function(String)? onChanged;
  final TextEditingController? textEditingController;
  final bool Function(String)? validator;

  @override
  State<ValidationTextField> createState() => _ValidationTextFieldState();
}

class _ValidationTextFieldState extends State<ValidationTextField> {
  late FocusNode focusNode;
  late TextEditingController textEditingController;
  late bool hasConfirmation;
  late bool hasError;
  late bool hasFocus;

  @override
  void initState() {
    super.initState();
    hasFocus = false;
    focusNode = FocusNode(); // Initialize focusNode
    textEditingController =
        widget.textEditingController ?? TextEditingController();
    hasConfirmation = isValid;
    hasError = !isValid;

    focusNode.addListener(() {
      setState(() {
        hasFocus = focusNode.hasPrimaryFocus;
        bool valid = isValid;
        hasConfirmation = valid;
        hasError = !valid;
      });
    });
  }

  bool get isValid {
    if (hasValidator) {
      return widget.validator!(textEditingController.text);
    }
    return false;
  }

  bool get hasValidator {
    return widget.validator != null;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme = Theme.of(context);

    OutlineInputBorder buildFocusedBorder() {
      if (hasValidator) {
        if (hasConfirmation && widget.showConfirmation) {
          return OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.green, width: 1.25),
              borderRadius: BorderRadius.circular(10));
        } else if (hasError) {
          return OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 1.25),
            borderRadius: BorderRadius.circular(10),
          );
        }
      }
      return OutlineInputBorder(
        borderSide: BorderSide(color: currentTheme.primaryColor, width: 1.25),
        borderRadius: BorderRadius.circular(10),
      );
    }

    OutlineInputBorder buildEnabledBorder() {
      if (hasValidator) {
        if (hasConfirmation) {
          return OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.green),
            borderRadius: BorderRadius.circular(10),
          );
        } else if (hasError) {
          return OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          );
        }
      }
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.grey[400]!,
        ),
      );
    }

    Icon? buildSuffixIcon() {
      if (hasValidator) {
        if (hasConfirmation) {
          return const Icon(Icons.check, color: Colors.green);
        } else if (hasError) {
          return const Icon(
            Icons.error,
            color: Colors.red,
            size: 24,
          );
        }
      }
      return null;
    }

    return TextField(
      focusNode: focusNode,
      controller: textEditingController,
      onChanged: (val) {
        setState(() {
          hasError = false;
          hasConfirmation = isValid;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(val);
        }
      },
      decoration: InputDecoration(
        focusedBorder: buildFocusedBorder(),
        enabledBorder: buildEnabledBorder(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: buildSuffixIcon(),
      ),
    );
  }
}
