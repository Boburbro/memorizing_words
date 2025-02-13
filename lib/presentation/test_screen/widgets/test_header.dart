import 'package:flutter/cupertino.dart';
import 'package:memorizing_words/presentation/test_screen/widgets/test_option.dart';

class TestHeader extends StatelessWidget {
  const TestHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TestOption(),
            TestOption(
              isCorrect: false,
            ),
          ],
        ),
        Row(
          children: [
            TestOption(
              isCorrect: false,
            ),
            TestOption(
              isCorrect: true,
            ),
          ],
        ),
        Row(
          children: [
            TestOption(),
            TestOption(),
          ],
        ),
        Row(
          children: [
            TestOption(
              isCorrect: true,
            ),
            TestOption(),
          ],
        ),
      ],
    );
  }
}
