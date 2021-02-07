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
    "answer_index": 3,
  },
  {
    "id": 2,
    "question":
        "Untouchability is abolished under ______ of Indian constitution",
    "options": ['Article 17', 'Article 202', 'Article 143', 'Article 27'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question":
        "Support to Training and Employment Programme for Women scheme:",
    "options": [' SWADHAR', 'STEP', 'Nari Shakti Puraskar', 'RMK'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "International Women’s Day celebrated worldwide",
    "options": ['8 March', '8 April', '8 February', '8 June'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "First woman who became doctor in India",
    "options": [
      'Kadambini Ganguli',
      'Cornelia Sorabji',
      'Ujwala Rai',
      'Anita Bose'
    ],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "First woman to pass MA in India",
    "options": [
      'Leila Seth',
      'Kadambani Bose',
      'Thresia',
      'Chandra Mukhi Bose'
    ],
    "answer_index": 3,
  },
  {
    "id": 7,
    "question": "First Woman IAS officer in India",
    "options": [
      'Anna George Malhotra',
      'M. Fatima Biwi',
      'Kiran Bedi',
      'None of the above'
    ],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "Children’s helpline number in India:",
    "options": ['1091', '1551', '101', '1098'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Woman’s helpline number in India:",
    "options": ['1091', '1551', '101', '1098'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Bachpan Bachao Andolan Helpline No.:",
    "options": [
      '1800-102-7222',
      '1800-102-7002',
      '1800-102-7001',
      '1800-102-7000'
    ],
    "answer_index": 0,
  },
];
