import 'package:quiz_app/model/test_model.dart';

class PythonQuizRepository {
  static List<TestModel> setPyhon() {
    List<TestModel> quizs = [];

    quizs.add(TestModel(
      quiz: "Python qanday turdagi dasturlash tiliga kiradi?",
      a: "A.Kompilyatsion tili",
      b: "B.Interpretorli tili",
      c: "C.Mashina kodi tili",
      d: "D.Ob'ektga yo‘naltirilgan tili",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Python-da qaysi belgi izoh (kommentariya) yozishda ishlatiladi?",
      a: "A.//",
      b: "B./* */",
      c: "C.#",
      d: "D.<!-- -->",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Python-da qanday ma’lumot turi ro‘yxatni (list) belgilaydi?",
      a: "A.{}",
      b: "B.()",
      c: "C.[]",
      d: "D.<>",
      trueAnswer: "",
    ));
    quizs.add(TestModel(
      quiz: "Quyidagi funksiyalardan qaysi biri konsolga ma'lumotni chiqaradi?",
      a: "A.input()",
      b: "B.print()",
      c: "C.output()",
      d: "D.write()",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Quyidagilardan qaysi biri Python-da to‘g‘ri o‘zgaruvchi nomi hisoblanadi?",
      a: "A.2var",
      b: "B.var_name",
      c: "C.var-name",
      d: "D.var name",
      trueAnswer: "B",
    ));
    quizs.add(TestModel(
      quiz: "Python dasturida bo‘linma (division) natijasini olish uchun qaysi operator ishlatiladi?",
      a: "A./",
      b: "B.//",
      c: "C.%",
      d: "D.*",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Python-da len() funksiyasi nima uchun ishlatiladi?",
      a: "A.O‘zgaruvchining turini aniqlash uchun",
      b: "B.Ro‘yxatdagi elementlarni teskari aylantirish uchun",
      c: "C.Ma’lumot uzunligini olish uchun",
      d: "D.Ma’lumotni chiqarish uchun",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Python-da if shart operatoridan so‘ng nima yozilishi shart?",
      a: "A.: (nuqta-vergul)",
      b: "B.{} (figura qavslar)",
      c: "C.; (nuqta-vergul)",
      d: "D.() (dumaloq qavslar)",
      trueAnswer: "A",
    ));
    quizs.add(TestModel(
      quiz: "Python dasturida qanday qilib funksiyani aniqlash mumkin?",
      a: "A.function()",
      b: "B.define()",
      c: "C.def",
      d: "D.func",
      trueAnswer: "C",
    ));
    quizs.add(TestModel(
      quiz: "Python dasturida qanday qilib modulni import qilish mumkin?",
      a: "A.include",
      b: "B.import",
      c: "C.require",
      d: "D.module",
      trueAnswer: "B",
    ));

    return quizs;
  }
}
