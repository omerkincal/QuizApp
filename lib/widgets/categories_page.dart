// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/models/questions.dart';
import 'package:ypyprojeodevi/question_list.dart';
import '../models/category.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  List<Category> categories = [
    Category(
      name: 'Matematik',
      icon: const Icon(Icons.onetwothree, size: 100),
      questions: [
        Question(
          questionText: '2+2 kaçtır?',
          options: ['3', '4', '5', '6'],
          correctAnswerIndex: 1,
        ),
        Question(
          questionText: '7x8 kaçtır?',
          options: ['48', '54', '56', '64'],
          correctAnswerIndex: 2,
        ),
        // Diğer matematik sorularını buraya ekleyebilirsiniz.
      ],
    ),
    Category(
        name: 'Fizik',
        icon: const Icon(Icons.dry_outlined, size: 100),
        questions: [
          Question(
            questionText: 'Newton\'ın üçüncü hareket yasası nedir?',
            options: [
              'Bir cisme etki eden net kuvvet, cismi ivmelendirir.',
              'Herhangi bir cisim bir diğer cisme eşit ve zıt yönde bir kuvvet uygular.',
              'Etki ve tepki kuvvetleri birbirine eşittir.',
              'Cisimlerin hareketi, cisme uygulanan kuvvetle doğru orantılıdır.'
            ],
            correctAnswerIndex: 2,
          ),
          Question(
            questionText:
                'Hangisi birinci dereceden bir hareketin denklemidir?',
            options: [
              's = ut + (1/2)at^2',
              'v = u + at',
              'v = u + s/t',
              's = (u + v)t'
            ],
            correctAnswerIndex: 1,
          ),
        ]),
    Category(
      name: 'Tarih',
      icon: const Icon(Icons.account_balance_outlined, size: 100),
      questions: [
        Question(
          questionText: 'Osmanlı İmparatorluğu hangi yıl kuruldu?',
          options: ['1299', '1453', '1517', '1923'],
          correctAnswerIndex: 0,
        ),
        Question(
          questionText: 'Kurtuluş Savaşı hangi yıllar arasında gerçekleşti?',
          options: ['1919-1922', '1923-1926', '1927-1930', '1931-1934'],
          correctAnswerIndex: 0,
        ),
        // Diğer tarih sorularını buraya ekleyebilirsiniz.
      ],
    ),
    Category(
        name: 'Biyoloji',
        icon: const Icon(Icons.biotech, size: 100),
        questions: [
          Question(
            questionText: 'Hücre zarının görevi nedir?',
            options: [
              'Hücre içindeki organelleri korumak',
              'Hücreye şekil vermek ve destek sağlamak',
              'Hücreye besin ve oksijen geçişini kontrol etmek',
              'Hücre bölünmesini sağlamak'
            ],
            correctAnswerIndex: 2,
          ),
          Question(
            questionText: 'Fotosentez yapan hücrelerde bulunan yapı nedir?',
            options: [
              'Hücre zarı',
              'Mitokondri',
              'Kloroplast',
              'Hücre çekirdeği'
            ],
            correctAnswerIndex: 2,
          ),
        ]),
    // Diğer ders kategorileri...
  ];

  void openQuizPage(BuildContext context, int index) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => QuestionList(
              questionList: categories[index].questions,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: categories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // İki sütun
        crossAxisSpacing: 10.0, // Sütunlar arası boşluk
        mainAxisSpacing: 10.0, // Satırlar arası boşluk
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => openQuizPage(context, index),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: const Color.fromARGB(17, 0, 0, 0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                categories[index].icon,
                const SizedBox(
                  height: 14,
                ),
                Text(
                  categories[index].name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
