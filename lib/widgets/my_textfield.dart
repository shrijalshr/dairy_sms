// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.label,
    this.initialText,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines,
    this.readOnly = false,
    this.validator,
    this.inputType,
    this.textController,
    this.borderRadius,
    this.textInputAction,
    this.onChanged,
    this.onSaved,
    this.inputFormatters,
    this.maxLength,
    this.autoFocus = false,
    this.counter,
    this.onTap,
    this.onTapOutside,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.textCapitalization,
    this.fontSize,
  }) : super(key: key);

  final String? label;
  final String? initialText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Widget? counter;
  final int? maxLines;
  final bool readOnly;
  final bool autoFocus;
  final int? maxLength;
  final double? fontSize;
  final String? Function(String?)? validator;
  final TextInputType? inputType;
  final TextCapitalization? textCapitalization;
  final TextEditingController? textController;
  final double? borderRadius;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onTap;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xfff5f5f5),
        borderRadius: BorderRadius.circular(borderRadius ?? 10),
      ),
      child: TextFormField(
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        autofocus: autoFocus,
        maxLength: maxLength,
        validator: validator,
        controller: textController,
        initialValue: initialText,
        keyboardType: inputType,
        onTapOutside: onTapOutside,
        readOnly: readOnly,
        inputFormatters: const [],
        textInputAction: textInputAction,
        maxLines: maxLines,
        style: TextStyle(
          color: Colors.black,
          fontSize: fontSize,
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
          labelText: label ?? '',
          prefixIcon: prefixIcon,
          labelStyle: const TextStyle(fontSize: 15),
          counter: counter,
        ),
        onChanged: onChanged,
        onSaved: onSaved,
        onFieldSubmitted: onFieldSubmitted,
        onTap: onTap,
        onEditingComplete: onEditingComplete,
      ),
    );
  }
}
