class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({this.id, this.question, this.answer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Which of the following scheme provide education to girls and their welfare?",
    "options": [
      'One Stop Centre Scheme',
      'UJJAWALA',
      'SWADHAR Scheme',
      'Beti Bachao Beti Padhao'
    ],
    "answer_index": 4,
  },
  {
    "id": 2,
    "question":
        "Which scheme helps in the prevention of trafficking and provide support for rescue, rehabilitation, reintegration and repatriation of women?",
    "options": [
      'Ujjawala scheme',
      'STEP scheme',
      'Priyadasrshini Scheme',
      'DWCRA'
    ],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question":
        "Support to Training and Employment Programme for Women scheme is....",
    "options": [' SWADHAR', 'STEP', 'Nari Shakti Puraskar', 'RMK'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Priyadarshini scheme provides:",
    "options": [
      'Women Empowerment',
      'Livelihood in Mid-Gangetic plains',
      'Empower to address women legal, political and health problems',
      'All the above are correct.'
    ],
    "answer_index": 4,
  },
];
