import 'package:quiz_app/model/test_model.dart';

class JavaQuizRepository {
  static List<TestModel> setJava() {
    List<TestModel> quizs = [];

    quizs.add(TestModel(
      quiz: "Java dasturlash tili qanday turdagi dasturlash tiliga kiradi?",
      a: "A. Past darajadagi dasturlash tili",
      b: "B.Yuqori darajadagi dasturlash tili",
      c: "C.O‘rta darajadagi dasturlash tili",
      d: "D.Mashina kodi",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturlash tilida qaysi kalit so‘z sinfni yaratishda ishlatiladi?",
      a: "A.class",
      b: "B.function",
      c: "C.method",
      d: "D.object",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturida qaysi funksiyaning ishi dastur boshlanishini belgilaydi?",
      a: "A.start()",
      b: "B.run()",
      c: "C.main()",
      d: "D.execute()",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturlash tilida int qanday turdagi ma’lumotni saqlaydi?",
      a: "A.Butun sonlar",
      b: "B.O‘nli sonlar",
      c: "C.Matnlar",
      d: "D.Belgilar",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturida final kalit so‘zi nima uchun ishlatiladi?",
      a: "A.Sinfni o‘chirish uchun",
      b: "B.O‘zgaruvchini o‘zgarmas qilish uchun",
      c: "C.Jarayonni to‘xtatish uchun",
      d: "D.Dastur oxirini belgilash uchun",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturida ma'lumotlarni kiritish uchun qaysi sinf ishlatiladi?",
      a: "A.System.out",
      b: "B.System.in",
      c: "C.Scanner",
      d: "D.Input",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturida try-catch blokidan nima maqsadda foydalaniladi?",
      a: "A.Shartni tekshirish uchun",
      b: "B.Funksiyani chaqirish uchun",
      c: "C.Xatoliklarni ushlash va qayta ishlash",
      d: "D.Sinfni yaratish uchun",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturida ArrayList qaysi paketga tegishli?",
      a: "A.java.io",
      b: "B.java.util",
      c: "C.java.lang",
      d: "D.java.sql",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Quyidagi koddan qaysi biri to‘g‘ri o‘zgaruvchi e’lon qilish?",
      a: "A.int 1num = 10;",
      b: "B.int num# = 10;",
      c: "C.int num = 10;",
      d: "D.int num& = 10;",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Java dasturlash tilida obyektni yaratish uchun qanday operator ishlatiladi?",
      a: "A.new",
      b: "B.create",
      c: "C.make",
      d: "D.object",
      trueAnswer: "A",
    ));

    return quizs;
  }
}
