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
          options: [
            Option(text: '3', isCorrect: false),
            Option(text: '4', isCorrect: true),
            Option(text: '5', isCorrect: false),
            Option(text: '6', isCorrect: false),
          ],
        ),
        Question(
          questionText: '7x8 kaçtır?',
          options: [
            Option(text: '48', isCorrect: false),
            Option(text: '56', isCorrect: true),
            Option(text: '68', isCorrect: false),
            Option(text: '46', isCorrect: false),
          ],
        ),
        Question(
          questionText: '10+2 kaçtır?',
          options: [
            Option(text: '12', isCorrect: true),
            Option(text: '4', isCorrect: false),
            Option(text: '6', isCorrect: false),
            Option(text: '14', isCorrect: false),
          ],
        ),
        Question(
          questionText: '6x7 kaçtır?',
          options: [
            Option(text: '23', isCorrect: false),
            Option(text: '42', isCorrect: true),
            Option(text: '28', isCorrect: false),
            Option(text: '34', isCorrect: false),
          ],
        ),
        Question(
          questionText: '2+7 kaçtır?',
          options: [
            Option(text: '3', isCorrect: false),
            Option(text: '4', isCorrect: false),
            Option(text: '6', isCorrect: false),
            Option(text: '9', isCorrect: true),
          ],
        ),

        // Diğer matematik sorularını buraya ekleyebilirsiniz.
      ],
    ),
    Category(
        name: 'Fizik',
        icon: const Icon(Icons.dry_outlined, size: 100),
        questions: [
          Question(
            questionText: 'Işık en hızlı hangi ortamda ilerler?',
            options: [
              Option(text: 'Ses', isCorrect: false),
              Option(text: 'Hava', isCorrect: false),
              Option(text: 'Su', isCorrect: false),
              Option(text: 'Vakum', isCorrect: true),
            ],
          ),
          Question(
            questionText:
                'Bir cismin hareketi sırasında hızı sabitse ne denir?',
            options: [
              Option(text: 'İvme', isCorrect: false),
              Option(text: 'Kuvvet', isCorrect: false),
              Option(text: 'Momentum', isCorrect: false),
              Option(text: 'Düzgün Hareket', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Kuvvetin birimi nedir?',
            options: [
              Option(text: 'Metre', isCorrect: false),
              Option(text: 'Joule', isCorrect: false),
              Option(text: 'Kilogram', isCorrect: false),
              Option(text: 'Newton', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Ses hangi tür dalga olarak yayılır?',
            options: [
              Option(text: 'Elektromanyetik Dalga', isCorrect: false),
              Option(text: 'Mekanik Dalga', isCorrect: true),
              Option(text: 'Elektriksel Dalga', isCorrect: false),
              Option(text: 'Manyetik Dalga', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Bir cisim neden yüksekten düştüğünde hızı artar?',
            options: [
              Option(text: 'Yerçekimi', isCorrect: true),
              Option(text: 'Sürtünme', isCorrect: false),
              Option(text: 'Hava Direnci', isCorrect: false),
              Option(text: 'Elastik Kuvvet', isCorrect: false),
            ],
          ),
        ]),
    Category(
        name: 'Tarih',
        icon: const Icon(Icons.account_balance_outlined, size: 100),
        questions: [
          Question(
            questionText: 'Osmanlı Devleti hangi yılda kurulmuştur?',
            options: [
              Option(text: '1299', isCorrect: true),
              Option(text: '1453', isCorrect: false),
              Option(text: '1517', isCorrect: false),
              Option(text: '1683', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hangi tarih, Fransız İhtilali\'nin başlangıcını temsil eder?',
            options: [
              Option(text: '1776', isCorrect: false),
              Option(text: '1789', isCorrect: true),
              Option(text: '1815', isCorrect: false),
              Option(text: '1848', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'I. Dünya Savaşı hangi yıllar arasında gerçekleşmiştir?',
            options: [
              Option(text: '1914-1918', isCorrect: true),
              Option(text: '1939-1945', isCorrect: false),
              Option(text: '1870-1871', isCorrect: false),
              Option(text: '1917-1923', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Atatürk hangi yıl Türkiye Cumhuriyeti\'nin ilk Cumhurbaşkanı olmuştur?',
            options: [
              Option(text: '1920', isCorrect: false),
              Option(text: '1923', isCorrect: true),
              Option(text: '1926', isCorrect: false),
              Option(text: '1938', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hangi tarih, Berlin Duvarı\'nın yıkıldığını simgeler?',
            options: [
              Option(text: '1945', isCorrect: false),
              Option(text: '1961', isCorrect: false),
              Option(text: '1989', isCorrect: true),
              Option(text: '1991', isCorrect: false),
            ],
          ),
          // Diğer tarih sorularını buraya ekleyebilirsiniz.
        ]),
    Category(
        name: 'Biyoloji',
        icon: const Icon(Icons.biotech, size: 100),
        questions: [
          Question(
            questionText: 'Hücre zarı hangi organelleri çevreler?',
            options: [
              Option(text: 'Mitokondri', isCorrect: false),
              Option(text: 'Lizozom', isCorrect: false),
              Option(text: 'Ribozom', isCorrect: false),
              Option(text: 'Hücre çekirdeği', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Fotosentez olayı aşağıdaki yapıda gerçekleşir:',
            options: [
              Option(text: 'Kloroplast', isCorrect: true),
              Option(text: 'Ribozom', isCorrect: false),
              Option(text: 'Lizozom', isCorrect: false),
              Option(text: 'Endoplazmik retikulum', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Kalıtsal bilginin saklandığı yapı aşağıdakilerden hangisidir?',
            options: [
              Option(text: 'Ribozom', isCorrect: false),
              Option(text: 'DNA', isCorrect: true),
              Option(text: 'Lizozom', isCorrect: false),
              Option(text: 'Hücre zarı', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hormonlar hangi sistem tarafından üretilir ve salgılanır?',
            options: [
              Option(text: 'Sinir Sistemi', isCorrect: false),
              Option(text: 'Endokrin Sistemi', isCorrect: true),
              Option(text: 'Solunum Sistemi', isCorrect: false),
              Option(text: 'Dolaşım Sistemi', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Aşağıdaki hangi organ fotosentez yapmaz?',
            options: [
              Option(text: 'Yaprak', isCorrect: false),
              Option(text: 'Kök', isCorrect: true),
              Option(text: 'Gövde', isCorrect: false),
              Option(text: 'Çiçek', isCorrect: false),
            ],
          ),
        ]),
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
