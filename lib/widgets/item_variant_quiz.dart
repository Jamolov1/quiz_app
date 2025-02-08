import 'package:flutter/material.dart';


class ItemVariantQuiz extends StatelessWidget {
  String testVariant;
  bool isSelected;
  VoidCallback ontTap;

  ItemVariantQuiz(
      {super.key, required this.testVariant, required this.isSelected,required this.ontTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontTap,
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        height: 52,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          boxShadow: [
            BoxShadow(
              color: Colors.deepPurple.shade400,
              blurRadius: 17,
              spreadRadius: 2,
            )
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 3,color: isSelected ? Colors.green:Colors.grey.shade600)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              testVariant,
              style:  TextStyle(
                color: isSelected ? Colors.green:Colors.white,
                fontSize: 15, fontWeight: FontWeight.bold,
              ),
            ),
            isSelected
                ? const Icon(Icons.check_circle_outline, color: Colors.green,)
                : Container(),
          ],
        ),
      ),
    );
  }
}
