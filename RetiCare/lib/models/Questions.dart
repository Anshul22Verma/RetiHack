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
        "What year is it ?",
    "options": ['2022', '2021', '2020', '2019'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "What season is it ?",
    "options": ['Fall', 'Winter', 'Spring', 'Summer'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "What month is it ?",
    "options": ['September', 'October', 'November', 'December'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What is today's date ?",
    "options": ['16', '18', '17', '19'],
    "answer_index": 3,
  },
  {
    "id": 5,
    "question": "What day of the week is it ?",
    "options": ['Monday', 'Thursday', 'Friday', 'Saturday'],
    "answer_index": 2,
  },
  {
    "id": 6,
    "question": "What country are we in ?",
    "options": ['Canada', 'USA', 'Mexico', 'Cuba'],
    "answer_index": 0,
  },
  {
    "id": 7,
    "question": "What province are we in ?",
    "options": ['Ontario', 'British Columbia', 'Saskatchewan', 'Manitoba'],
    "answer_index": 0,
  },
  {
    "id": 8,
    "question": "What city/town is it ?",
    "options": ['Toronto', 'Mississauga', 'Oakville', 'Scarborough'],
    "answer_index": 0,
  },
  {
    "id": 9,
    "question":
    "Spell the word CAT backwards ?",
    "options": ['ANT', 'CAT', 'ATC', 'TAC'],
    "answer_index": 3,
  },
  {
    "id": 10,
    "question": "Spell the word PINEAPPLE backwards ?",
    "options": ['ELPPAENIP', 'ELPPEANIP', 'PINEELPPA', 'APPLEPINE'],
    "answer_index": 1,
  },
];
