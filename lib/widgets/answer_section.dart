import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gpt_markdown/gpt_markdown.dart';

class AnswerSection extends StatefulWidget {
  const AnswerSection({super.key});

  @override
  State<AnswerSection> createState() => _AnswerSectionState();
}

class _AnswerSectionState extends State<AnswerSection> {
  String fullResponse = '''
## Detailed Score of Today's IPL Match (GT vs CSK, May 25, 2025)

### Match Summary

- **Chennai Super Kings (CSK)**: 230/5 in 20 overs
- **Gujarat Titans (GT)**: 147 all out in 18.3 overs

**Result:** Chennai Super Kings won by 83 runs[1].

---

## CSK Batting Scorecard

| Batter           | Dismissal                | Runs | Balls | 4s | 6s | SR      |
|------------------|-------------------------|------|-------|----|----|---------|
| Ayush Mhatre     | c M Siraj b MP Krishna  | 34   | 17    | 3  | 3  | 200.00  |
| Devon Conway     | b R Khan                | 52   | 35    | 6  | 2  | 148.57  |
| Urvil Patel      | c S Gill b R Sai Kishore| 37   | 19    | 4  | 2  | 194.74  |
| Shivam Dube      | c G Coetzee b S Khan    | 17   | 8     | 0  | 2  | 212.50  |
| Dewald Brevis    | c J Buttler b MP Krishna| 57   | 23    | 4  | 5  | 247.83  |
| Ravindra Jadeja  | Not out                 | 21   | 18    | 1  | 1  | 116.67  |
| Extras           |                         | 12   |       |    |    |         |
| **Total**        | 5 wickets in 20 overs   | **230** |       |    |    |         |

**Bowling Highlights (GT):**
- Prasidh Krishna: 4 overs, 22 runs, 2 wickets
- Rashid Khan: 4 overs, 42 runs, 1 wicket
- R Sai Kishore: 2 overs, 23 runs, 1 wicket
- Shahrukh Khan: 1 over, 13 runs, 1 wicket

---

## GT Batting Scorecard

| Batter           | Dismissal                | Runs | Balls | 4s | 6s | SR      |
|------------------|-------------------------|------|-------|----|----|---------|
| Sai Sudharsan    | c S Dube b R Jadeja     | 41   | 28    | 6  | 0  | 146.43  |
| Shubman Gill (C) | c U Patel b A Kamboj    | 13   | 9     | 1  | 1  | 144.44  |
| Jos Buttler (WK) | c A Kamboj b KK Ahmed   | 5    | 7     | 0  | 0  | 71.43   |
| Sherfane Rutherford | c A Mhatre b A Kamboj| 0    | 4     | 0  | 0  | 0.00    |
| Shahrukh Khan    | c M Pathirana b R Jadeja| 19   | 15    | 0  | 2  | 126.67  |
| Rahul Tewatia    | c S Dube b N Ahmad      | 14   | 10    | 1  | 0  | 140.00  |
| Rashid Khan      | c U Patel b N Ahmad     | 12   | 8     | 1  | 1  | 150.00  |
| Gerald Coetzee   | b M Pathirana           | 5    | 5     | 1  | 0  | 100.00  |
| Mohd. Arshad Khan| b N Ahmad               | 20   | 14    | 0  | 3  | 142.86  |
| Sai Kishore      | c MS Dhoni b A Kamboj   | 3    | 7     | 0  | 0  | 42.86   |
| Mohammed Siraj   | Not out                 | 3    | 4     | 0  | 0  | 75.00   |
| Extras           |                         | 12   |       |    |    |         |
| **Total**        | 10 wickets in 18.3 overs| **147** |     |    |    |         |

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
[4] https://www.iplt20.com/matches/points-table
[5] https://www.espncricinfo.com/series/ipl-2025-1449924/mumbai-indians-vs-punjab-kings-69th-match-1473506/full-scorecard
[6] https://www.youtube.com/watch?v=sCaZdoFfv6I
[7] https://www.cricbuzz.com/cricket-series/9237/indian-premier-league-2025/matches
[8] https://www.business-standard.com/cricket/ipl/srh-best-their-record-for-3rd-highest-team-total-in-ipl-check-full-list-125052500709_1.html
[9] https://www.iplt20.com/matches

---
Answer from Perplexity: https://www.perplexity.ai/search/what-is-the-score-of-todays-ip-fbViXja8QDm5p_rs68TDbg?utm_source=copy_output''';
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
        SizedBox(
          height: 16,
        ),
        Markdown(
          data: fullResponse,
          shrinkWrap: true,
        ),
      ],
    );
  }
}
