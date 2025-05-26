import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gpt_markdown/gpt_markdown.dart';
import 'package:perplexity_clone/services/chat_web_service.dart';
import 'package:perplexity_clone/theme/colors.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  bool isLoading = true;
  String fullResponse = '''
## Detailed Score of Today's IPL Match (GT vs CSK, May 25, 2025)

### Match Summary

- **Chennai Super Kings (CSK)**: 230/5 in 20 overs
- **Gujarat Titans (GT)**: 147 all out in 18.3 overs

**Result:** Chennai Super Kings won by 83 runs[1].

**Bowling Highlights (GT):**
- Prasidh Krishna: 4 overs, 22 runs, 2 wickets
- Rashid Khan: 4 overs, 42 runs, 1 wicket
- R Sai Kishore: 2 overs, 23 runs, 1 wicket
- Shahrukh Khan: 1 over, 13 runs, 1 wicket

**Bowling Highlights (CSK):**
- Anshul Kamboj: 2.3 overs, 13 runs, 3 wickets
- Noor Ahmad: 4 overs, 21 runs, 3 wickets
- Ravindra Jadeja: 3 overs, 17 runs, 2 wickets
- Khaleel Ahmed: 3 overs, 17 runs, 1 wicket
- Matheesha Pathirana: 3 overs, 29 runs, 1 wicket

---

## Key Moments

- CSK posted a massive 230/5, with Devon Conway (52) and Dewald Brevis (57) starring with the bat.
- GT’s chase never got going, losing wickets at regular intervals, with Sai Sudharsan top-scoring (41).
- CSK bowlers, especially Anshul Kamboj (3 wickets), Noor Ahmad (3 wickets), and Jadeja (2 wickets), dominated the innings.
- CSK won by 83 runs, ending their season on a high note[1].

---

**Note:** This was the only IPL match played today as per available sources[1].

Citations:
[1] https://www.business-standard.com/cricket/ipl/gt-vs-csk-live-score-updates-ipl-2025-gujarat-titans-vs-chennai-super-kings-live-scorecard-updates-narendra-modi-stadium-125052500281_1.html
[2] https://www.cricbuzz.com/live-cricket-scores/118892/pbks-vs-mi-69th-match-indian-premier-league-2025
[3] https://www.espncricinfo.com/series/ipl-2025-1449924/mumbai-indians-vs-punjab-kings-69th-match-1473506/live-cricket-score

---
Answer from Perplexity: https://www.perplexity.ai/search/what-is-the-score-of-todays-ip-fbViXja8QDm5p_rs68TDbg?utm_source=copy_output''';

  @override
  void initState() {
    ChatWebservice().contentStream.listen((data) {
      setState(() {
        if (isLoading) {
          fullResponse = "";
        }
        fullResponse += data['data'];
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Perplexity',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Skeletonizer(
          effect: ShimmerEffect(baseColor: Colors.grey.shade300),
          enabled: isLoading,
          child: Markdown(
            data: fullResponse,
            shrinkWrap: true,
            styleSheet:
                MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
              codeblockDecoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(10),
              ),
              code: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
