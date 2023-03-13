import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MBRTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final double? height;
  final String? hintText;
  final String label;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final void Function()? onTapSuffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final void Function()? onFocus;
  final void Function()? onBlur;
  final void Function(String text)? onSubmit;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool? enabled;
  final int? maxLines;
  final int? hintMaxLines;
  final EdgeInsetsGeometry? contentPadding;
  final String? initialValue;
  final int? maxLength;
  final Widget? prefixIcon;
  final BorderRadius? borderRadius;
  const MBRTextFormField({
    Key? key,
    this.controller,
    this.height,
    this.hintText,
    this.label = '',
    this.keyboardType,
    this.suffixIcon,
    this.onTapSuffixIcon,
    this.inputFormatters,
    this.validator,
    this.onFocus,
    this.onBlur,
    this.onSubmit,
    this.onChanged,
    this.onTap,
    this.enabled,
    this.maxLines = 1,
    this.hintMaxLines,
    this.contentPadding,
    this.initialValue,
    this.maxLength,
    this.prefixIcon,
    this.borderRadius,
  }) : super(key: key);

  @override
  State<MBRTextFormField> createState() => _MBRTextFormFieldState();
}

class _MBRTextFormFieldState extends State<MBRTextFormField> {
  bool iconVisibility = false;
  late final List<TextInputFormatter>? inputFormatters;

  @override
  void initState() {
    inputFormatters =
        widget.keyboardType == TextInputType.number ? [FilteringTextInputFormatter.digitsOnly, ...?widget.inputFormatters] : [...?widget.inputFormatters];
    iconVisibility = widget.keyboardType == TextInputType.visiblePassword;
    super.initState();
  }

  Widget? _hasInputPassword() {
    if (widget.keyboardType == TextInputType.visiblePassword) {
      return iconVisibility ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility);
    }

    return widget.suffixIcon ?? const SizedBox();
  }

  void Function()? _onTapSuffixIcon() {
    if (widget.keyboardType == TextInputType.visiblePassword) {
      return () {
        iconVisibility = !iconVisibility;
        setState(() {});
      };
    }

    return widget.onTapSuffixIcon;
  }

  void submit(String? text) {
    if (text != null && widget.onSubmit != null) {
      widget.onSubmit!(text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 50,
      child: FocusScope(
        onFocusChange: (value) {
          if (value && widget.onFocus != null) {
            widget.onFocus!();
          } else if (!value && widget.onBlur != null) {
            widget.onBlur!();
            submit(widget.controller?.text);
          }
        },
        child: TextFormField(
          controller: widget.controller,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          obscureText: iconVisibility,
          inputFormatters: inputFormatters,
          validator: widget.validator,
          onTap: widget.onTap,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          initialValue: widget.initialValue,
          maxLength: widget.maxLength,
          decoration: InputDecoration(
            contentPadding: widget.contentPadding,
            hintMaxLines: widget.hintMaxLines,
            isDense: true,
            label: Text(widget.label),
            hintText: widget.hintText,
            prefixIcon: widget.prefixIcon,
            suffixIcon: InkWell(
              onTap: _onTapSuffixIcon(),
              child: _hasInputPassword(),
            ),
            border: OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
