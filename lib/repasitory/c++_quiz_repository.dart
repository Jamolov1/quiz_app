import 'package:quiz_app/model/test_model.dart';

class CplusplusQuizRepository {
  static List<TestModel> setCplusplus() {
    List<TestModel> quizs = [];

    quizs.add(TestModel(
      quiz: "C++ dasturlash tilida qaysi kalit so‘z sinfni yaratishda ishlatiladi?",
      a: "A.class",
      b: "B.function",
      c: "C.method",
      d: "D.object",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida qaysi operator qiymatni tenglashtirish uchun ishlatiladi?",
      a: "A.=",
      b: "B.==",
      c: "C.+=",
      d: "D.!=",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida qaysi boshqaruv operatori shartlarni tekshirish uchun ishlatiladi?",
      a: "A.while",
      b: "B.if",
      c: "C.for",
      d: "D.do",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida cout nima uchun ishlatiladi?",
      a: "A.Kiritish (input) uchun",
      b: "B.Chiqish (output) uchun",
      c: "C.Sinfni aniqlash uchun",
      d: "D.Ma’lumotni saqlash uchun",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida qaysi ma’lumot turi butun sonlarni saqlaydi?",
      a: "A.float",
      b: "B.char",
      c: "C.int",
      d: "D.string",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida qanday fayl kerakli kutubxonalarni qo‘shish uchun ishlatiladi?",
      a: "A.#define",
      b: "B.#include",
      c: "C.#import",
      d: "D.#using",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida massiv qanday e’lon qilinadi?",
      a: "A.int arr;",
      b: "B.int arr[] = {1, 2, 3};",
      c: "C.array int arr;",
      d: "D.list arr = {1, 2, 3};",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida o‘zgaruvchi e’lon qilishda qanday qoidaga amal qilinadi?",
      a: "A.O‘zgaruvchi raqam bilan boshlanishi mumkin",
      b: "B.O‘zgaruvchi nomida faqat katta harflar bo‘lishi kerak",
      c: "C.O‘zgaruvchi nomida faqat lotin harflari, sonlar va pastki chiziq bo‘lishi mumkin",
      d: "D.O‘zgaruvchi nomida har qanday belgilar ishlatilishi mumkin",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida obyektni yaratish uchun qanday operator ishlatiladi?",
      a: "A.new",
      b: "B.make",
      c: "C.create",
      d: "D.object",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "C++ dasturida qanday qilib funksiyani aniqlash mumkin?",
      a: "A.function()",
      b: "B.define()",
      c: "C.void",
      d: "D.func()",
      trueAnswer: "C",
    ));


    return quizs;

  }
}
