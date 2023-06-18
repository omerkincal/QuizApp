// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/questions.dart';
import '../widgets/quizes_list.dart';
import '../models/category.dart';

const Color kolor = Colors.white;

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  List<Category> categories = [
    Category(
      name: 'Matematik',
      icon: const Icon(Icons.onetwothree, size: 100, color: kolor),
      questions: [
        [
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
        [
          Question(
            questionText: '8 + 6 kaçtır?',
            options: [
              Option(text: '14', isCorrect: true),
              Option(text: '12', isCorrect: false),
              Option(text: '16', isCorrect: false),
              Option(text: '18', isCorrect: false),
            ],
          ),
          Question(
            questionText: '15 - 9 kaçtır?',
            options: [
              Option(text: '6', isCorrect: true),
              Option(text: '8', isCorrect: false),
              Option(text: '7', isCorrect: false),
              Option(text: '5', isCorrect: false),
            ],
          ),
          Question(
            questionText: '24 ÷ 3 kaçtır?',
            options: [
              Option(text: '8', isCorrect: true),
              Option(text: '6', isCorrect: false),
              Option(text: '7', isCorrect: false),
              Option(text: '9', isCorrect: false),
            ],
          ),
          Question(
            questionText: '7 x 5 kaçtır?',
            options: [
              Option(text: '35', isCorrect: true),
              Option(text: '42', isCorrect: false),
              Option(text: '28', isCorrect: false),
              Option(text: '56', isCorrect: false),
            ],
          ),
          Question(
            questionText: '12 + 9 kaçtır?',
            options: [
              Option(text: '21', isCorrect: true),
              Option(text: '19', isCorrect: false),
              Option(text: '23', isCorrect: false),
              Option(text: '17', isCorrect: false),
            ],
          ),
        ],
        [
          Question(
            questionText: '78 - 23 kaçtır?',
            options: [
              Option(text: '55', isCorrect: true),
              Option(text: '45', isCorrect: false),
              Option(text: '63', isCorrect: false),
              Option(text: '68', isCorrect: false),
            ],
          ),
          Question(
            questionText: '6 x 9 kaçtır?',
            options: [
              Option(text: '54', isCorrect: true),
              Option(text: '36', isCorrect: false),
              Option(text: '63', isCorrect: false),
              Option(text: '46', isCorrect: false),
            ],
          ),
          Question(
            questionText: '144 ÷ 12 kaçtır?',
            options: [
              Option(text: '12', isCorrect: true),
              Option(text: '18', isCorrect: false),
              Option(text: '16', isCorrect: false),
              Option(text: '24', isCorrect: false),
            ],
          ),
          Question(
            questionText: '38 + 57 kaçtır?',
            options: [
              Option(text: '95', isCorrect: true),
              Option(text: '87', isCorrect: false),
              Option(text: '69', isCorrect: false),
              Option(text: '76', isCorrect: false),
            ],
          ),
          Question(
            questionText: '61 - 37 kaçtır?',
            options: [
              Option(text: '24', isCorrect: true),
              Option(text: '17', isCorrect: false),
              Option(text: '28', isCorrect: false),
              Option(text: '32', isCorrect: false),
            ],
          ),
        ],
        [
          Question(
            questionText: '267 x 4 kaçtır?',
            options: [
              Option(text: '1068', isCorrect: true),
              Option(text: '1072', isCorrect: false),
              Option(text: '1008', isCorrect: false),
              Option(text: '1104', isCorrect: false),
            ],
          ),
          Question(
            questionText: '372 ÷ 6 kaçtır?',
            options: [
              Option(text: '62', isCorrect: true),
              Option(text: '56', isCorrect: false),
              Option(text: '68', isCorrect: false),
              Option(text: '78', isCorrect: false),
            ],
          ),
          Question(
            questionText: '189 - 137 kaçtır?',
            options: [
              Option(text: '52', isCorrect: true),
              Option(text: '42', isCorrect: false),
              Option(text: '62', isCorrect: false),
              Option(text: '72', isCorrect: false),
            ],
          ),
          Question(
            questionText: '38 x 24 kaçtır?',
            options: [
              Option(text: '912', isCorrect: true),
              Option(text: '868', isCorrect: false),
              Option(text: '984', isCorrect: false),
              Option(text: '1056', isCorrect: false),
            ],
          ),
          Question(
            questionText: '789 ÷ 13 kaçtır?',
            options: [
              Option(text: '60', isCorrect: true),
              Option(text: '54', isCorrect: false),
              Option(text: '68', isCorrect: false),
              Option(text: '74', isCorrect: false),
            ],
          ),
        ],
      ],
    ),
    Category(
      name: 'Fizik',
      icon: const Icon(Icons.dry_outlined, size: 100, color: kolor),
      questions: [
        [
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
        ],
        [
          Question(
            questionText: 'Orta Seviye 1: Işık en hızlı hangi ortamda ilerler?',
            options: [
              Option(text: 'Ses', isCorrect: false),
              Option(text: 'Hava', isCorrect: false),
              Option(text: 'Su', isCorrect: false),
              Option(text: 'Vakum', isCorrect: true),
            ],
          ),
          Question(
            questionText:
                'Orta Seviye 2: Bir cismin hareketi sırasında hızı sabitse ne denir?',
            options: [
              Option(text: 'İvme', isCorrect: false),
              Option(text: 'Kuvvet', isCorrect: false),
              Option(text: 'Momentum', isCorrect: false),
              Option(text: 'Düzgün Hareket', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Orta Seviye 3: Kuvvetin birimi nedir?',
            options: [
              Option(text: 'Metre', isCorrect: false),
              Option(text: 'Joule', isCorrect: false),
              Option(text: 'Kilogram', isCorrect: false),
              Option(text: 'Newton', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Orta Seviye 4: Ses hangi tür dalga olarak yayılır?',
            options: [
              Option(text: 'Elektromanyetik Dalga', isCorrect: false),
              Option(text: 'Mekanik Dalga', isCorrect: true),
              Option(text: 'Elektriksel Dalga', isCorrect: false),
              Option(text: 'Manyetik Dalga', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Orta Seviye 5: Bir cisim neden yüksekten düştüğünde hızı artar?',
            options: [
              Option(text: 'Yerçekimi', isCorrect: true),
              Option(text: 'Sürtünme', isCorrect: false),
              Option(text: 'Hava Direnci', isCorrect: false),
              Option(text: 'Elastik Kuvvet', isCorrect: false),
            ],
          ),
        ],
        [
          Question(
            questionText: 'Zor Seviye 1: Kütle ve hızın çarpımına ne denir?',
            options: [
              Option(text: 'İş', isCorrect: true),
              Option(text: 'Güç', isCorrect: false),
              Option(text: 'Basınç', isCorrect: false),
              Option(text: 'Enerji', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Zor Seviye 2: Bir cisme etki eden net kuvvet sıfırsa ne olur?',
            options: [
              Option(text: 'İvme yapar', isCorrect: false),
              Option(text: 'Düzgün hareket eder', isCorrect: true),
              Option(text: 'Hareket etmez', isCorrect: false),
              Option(text: 'Hızı değişir', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Zor Seviye 3: Bir cismin momentumu neyle doğru orantılıdır?',
            options: [
              Option(text: 'Hızı', isCorrect: true),
              Option(text: 'Kütlesi', isCorrect: false),
              Option(text: 'Enerjisi', isCorrect: false),
              Option(text: 'Kuvveti', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Zor Seviye 4: Bir nesne suyun yüzeyine batarsa hangi kuvvetle karşılaşır?',
            options: [
              Option(text: 'Sürtünme kuvveti', isCorrect: false),
              Option(text: 'Yüzey gerilimi', isCorrect: true),
              Option(text: 'Kaldırma kuvveti', isCorrect: false),
              Option(text: 'Yerçekimi kuvveti', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Zor Seviye 5: Bir yükün elektrik potansiyeli nasıl ifade edilir?',
            options: [
              Option(text: 'Amper', isCorrect: false),
              Option(text: 'Volt', isCorrect: true),
              Option(text: 'Ohm', isCorrect: false),
              Option(text: 'Watt', isCorrect: false),
            ],
          ),
        ],
        [
          Question(
            questionText:
                'Çok Zor Seviye 1: Işık hangi elektromanyetik spektrumda yer alır?',
            options: [
              Option(text: 'UV (Ultraviyole)', isCorrect: false),
              Option(text: 'IR (Kızılötesi)', isCorrect: false),
              Option(text: 'X-Ray (X Işınlı)', isCorrect: false),
              Option(text: 'Görünür Işık', isCorrect: true),
            ],
          ),
          Question(
            questionText:
                'Çok Zor Seviye 2: Bir cismi atomik yapıya kadar küçülterek elde edilen hali nedir?',
            options: [
              Option(text: 'Molekül', isCorrect: false),
              Option(text: 'Kristal', isCorrect: false),
              Option(text: 'İyon', isCorrect: false),
              Option(text: 'Element', isCorrect: true),
            ],
          ),
          Question(
            questionText:
                'Çok Zor Seviye 3: Bir elektromıknatısın kutupları nasıl olmalıdır?',
            options: [
              Option(text: 'Aynı adımda', isCorrect: false),
              Option(text: 'Farklı adımda', isCorrect: true),
              Option(text: 'Kutupları yoktur', isCorrect: false),
              Option(text: 'Rastgele', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Çok Zor Seviye 4: Bir cismi yukarıya iten kuvvetle aşağıya çeken kuvvet arasındaki farka ne denir?',
            options: [
              Option(text: 'Yerçekimi', isCorrect: false),
              Option(text: 'Kaldırma kuvveti', isCorrect: false),
              Option(text: 'Ağırlık', isCorrect: true),
              Option(text: 'İvme', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Çok Zor Seviye 5: Bir iletkenin direnci neyle doğru orantılıdır?',
            options: [
              Option(text: 'Akım şiddeti', isCorrect: false),
              Option(text: 'Gerilim farkı', isCorrect: false),
              Option(text: 'Elektriksel güç', isCorrect: false),
              Option(text: 'Malzemenin öz direnci', isCorrect: true),
            ],
          ),
        ],
      ],
    ),
    Category(
      name: 'Tarih',
      icon: const Icon(Icons.account_balance_outlined, size: 100, color: kolor),
      questions: [
        [
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
        ],
        [
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
        ],
        [
          Question(
            questionText: 'Türkiye Cumhuriyeti\'nin kurucusu kimdir?',
            options: [
              Option(text: 'Mustafa Kemal Atatürk', isCorrect: true),
              Option(text: 'İsmet İnönü', isCorrect: false),
              Option(text: 'Mehmet Akif Ersoy', isCorrect: false),
              Option(text: 'İsmet Paşa', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Amerika Birleşik Devletleri\'nin başkenti neresidir?',
            options: [
              Option(text: 'New York', isCorrect: false),
              Option(text: 'Washington, D.C.', isCorrect: true),
              Option(text: 'Los Angeles', isCorrect: false),
              Option(text: 'Chicago', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'İlk Nobel Barış Ödülü hangi yıl verilmiştir?',
            options: [
              Option(text: '1901', isCorrect: true),
              Option(text: '1914', isCorrect: false),
              Option(text: '1925', isCorrect: false),
              Option(text: '1939', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'İngiltere\'nin ulusal sembolü nedir?',
            options: [
              Option(text: 'Ayşekadın', isCorrect: false),
              Option(text: 'Kırmızı Gül', isCorrect: false),
              Option(text: 'Beyaz Leylek', isCorrect: false),
              Option(text: 'Gül', isCorrect: true),
            ],
          ),
          Question(
            questionText:
                'Mısır\'daki büyük piramitler hangi dönemde inşa edilmiştir?',
            options: [
              Option(text: 'Antik Yunan', isCorrect: false),
              Option(text: 'Antik Roma', isCorrect: false),
              Option(text: 'Eski Mısır', isCorrect: true),
              Option(text: 'Orta Çağ', isCorrect: false),
            ],
          ),
        ],
        [
          Question(
            questionText:
                'Hangi tarih, Amerika Birleşik Devletleri Bağımsızlık Bildirgesi\'nin imzalandığını temsil eder?',
            options: [
              Option(text: '1776', isCorrect: true),
              Option(text: '1789', isCorrect: false),
              Option(text: '1815', isCorrect: false),
              Option(text: '1848', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Dünya üzerindeki en büyük okyanus hangisidir?',
            options: [
              Option(text: 'Atlas Okyanusu', isCorrect: false),
              Option(text: 'Hint Okyanusu', isCorrect: false),
              Option(text: 'Büyük Okyanus', isCorrect: true),
              Option(text: 'Arktik Okyanusu', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'İkinci Dünya Savaşı hangi yıllar arasında gerçekleşmiştir?',
            options: [
              Option(text: '1914-1918', isCorrect: false),
              Option(text: '1939-1945', isCorrect: true),
              Option(text: '1870-1871', isCorrect: false),
              Option(text: '1917-1923', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hangi tarih, Amerika Birleşik Devletleri tarafından bağımsızlık günü olarak kutlanır?',
            options: [
              Option(text: '1 Temmuz', isCorrect: false),
              Option(text: '4 Temmuz', isCorrect: true),
              Option(text: '14 Şubat', isCorrect: false),
              Option(text: '25 Aralık', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hangi tarih, Ay\'a insanlı iniş gerçekleştirildiğini temsil eder?',
            options: [
              Option(text: '1961', isCorrect: false),
              Option(text: '1969', isCorrect: true),
              Option(text: '1974', isCorrect: false),
              Option(text: '1987', isCorrect: false),
            ],
          ),
        ],
      ],
    ),
    Category(
      name: 'Biyoloji',
      icon: const Icon(Icons.biotech, size: 100, color: kolor),
      questions: [
        [
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
        ],
        [
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
        ],
        [
          Question(
            questionText: 'Türkiye Cumhuriyeti\'nin kurucusu kimdir?',
            options: [
              Option(text: 'Mustafa Kemal Atatürk', isCorrect: true),
              Option(text: 'İsmet İnönü', isCorrect: false),
              Option(text: 'Mehmet Akif Ersoy', isCorrect: false),
              Option(text: 'İsmet Paşa', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Amerika Birleşik Devletleri\'nin başkenti neresidir?',
            options: [
              Option(text: 'New York', isCorrect: false),
              Option(text: 'Washington, D.C.', isCorrect: true),
              Option(text: 'Los Angeles', isCorrect: false),
              Option(text: 'Chicago', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'İlk Nobel Barış Ödülü hangi yıl verilmiştir?',
            options: [
              Option(text: '1901', isCorrect: true),
              Option(text: '1914', isCorrect: false),
              Option(text: '1925', isCorrect: false),
              Option(text: '1939', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'İngiltere\'nin ulusal sembolü nedir?',
            options: [
              Option(text: 'Ayşekadın', isCorrect: false),
              Option(text: 'Kırmızı Gül', isCorrect: false),
              Option(text: 'Beyaz Leylek', isCorrect: false),
              Option(text: 'Gül', isCorrect: true),
            ],
          ),
          Question(
            questionText:
                'Mısır\'daki büyük piramitler hangi dönemde inşa edilmiştir?',
            options: [
              Option(text: 'Antik Yunan', isCorrect: false),
              Option(text: 'Antik Roma', isCorrect: false),
              Option(text: 'Eski Mısır', isCorrect: true),
              Option(text: 'Orta Çağ', isCorrect: false),
            ],
          ),
        ],
        [
          Question(
            questionText:
                'Hangi tarih, Amerika Birleşik Devletleri Bağımsızlık Bildirgesi\'nin imzalandığını temsil eder?',
            options: [
              Option(text: '1776', isCorrect: true),
              Option(text: '1789', isCorrect: false),
              Option(text: '1815', isCorrect: false),
              Option(text: '1848', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Dünya üzerindeki en büyük okyanus hangisidir?',
            options: [
              Option(text: 'Atlas Okyanusu', isCorrect: false),
              Option(text: 'Hint Okyanusu', isCorrect: false),
              Option(text: 'Büyük Okyanus', isCorrect: true),
              Option(text: 'Arktik Okyanusu', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'İkinci Dünya Savaşı hangi yıllar arasında gerçekleşmiştir?',
            options: [
              Option(text: '1914-1918', isCorrect: false),
              Option(text: '1939-1945', isCorrect: true),
              Option(text: '1870-1871', isCorrect: false),
              Option(text: '1917-1923', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hangi tarih, Amerika Birleşik Devletleri tarafından bağımsızlık günü olarak kutlanır?',
            options: [
              Option(text: '1 Temmuz', isCorrect: false),
              Option(text: '4 Temmuz', isCorrect: true),
              Option(text: '14 Şubat', isCorrect: false),
              Option(text: '25 Aralık', isCorrect: false),
            ],
          ),
          Question(
            questionText:
                'Hangi tarih, Ay\'a insanlı iniş gerçekleştirildiğini temsil eder?',
            options: [
              Option(text: '1961', isCorrect: false),
              Option(text: '1969', isCorrect: true),
              Option(text: '1974', isCorrect: false),
              Option(text: '1987', isCorrect: false),
            ],
          ),
        ],
      ],
    ),
    Category(
      name: 'Coğrafya',
      icon: const Icon(Icons.location_on, size: 100, color: kolor),
      questions: [
        // Orta Seviye
        [
          Question(
            questionText: 'Dünyanın en geniş kıtası hangisidir?',
            options: [
              Option(text: 'Asya', isCorrect: true),
              Option(text: 'Afrika', isCorrect: false),
              Option(text: 'Avrupa', isCorrect: false),
              Option(text: 'Kuzey Amerika', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Amazon Nehri hangi kıtada bulunur?',
            options: [
              Option(text: 'Asya', isCorrect: false),
              Option(text: 'Afrika', isCorrect: false),
              Option(text: 'Avrupa', isCorrect: false),
              Option(text: 'Güney Amerika', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Everest Dağı hangi dağ silsilesinde yer alır?',
            options: [
              Option(text: 'Himalaya Dağları', isCorrect: true),
              Option(text: 'And Dağları', isCorrect: false),
              Option(text: 'Rocky Dağları', isCorrect: false),
              Option(text: 'Alpler', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Nil Nehri hangi ülkeden geçer?',
            options: [
              Option(text: 'Kenya', isCorrect: false),
              Option(text: 'Nijerya', isCorrect: false),
              Option(text: 'Mısır', isCorrect: true),
              Option(text: 'Cezayir', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Hangi ülke Güney Kutbu\'nda yer almaktadır?',
            options: [
              Option(text: 'Rusya', isCorrect: false),
              Option(text: 'Kanada', isCorrect: false),
              Option(text: 'Arjantin', isCorrect: false),
              Option(text: 'Avustralya', isCorrect: true),
            ],
          ),
        ],
        [
          Question(
            questionText: 'Dünyanın en geniş kıtası hangisidir?',
            options: [
              Option(text: 'Asya', isCorrect: true),
              Option(text: 'Afrika', isCorrect: false),
              Option(text: 'Avrupa', isCorrect: false),
              Option(text: 'Kuzey Amerika', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Amazon Nehri hangi kıtada bulunur?',
            options: [
              Option(text: 'Asya', isCorrect: false),
              Option(text: 'Afrika', isCorrect: false),
              Option(text: 'Avrupa', isCorrect: false),
              Option(text: 'Güney Amerika', isCorrect: true),
            ],
          ),
          Question(
            questionText: 'Everest Dağı hangi dağ silsilesinde yer alır?',
            options: [
              Option(text: 'Himalaya Dağları', isCorrect: true),
              Option(text: 'And Dağları', isCorrect: false),
              Option(text: 'Rocky Dağları', isCorrect: false),
              Option(text: 'Alpler', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Nil Nehri hangi ülkeden geçer?',
            options: [
              Option(text: 'Kenya', isCorrect: false),
              Option(text: 'Nijerya', isCorrect: false),
              Option(text: 'Mısır', isCorrect: true),
              Option(text: 'Cezayir', isCorrect: false),
            ],
          ),
          Question(
            questionText: 'Hangi ülke Güney Kutbu\'nda yer almaktadır?',
            options: [
              Option(text: 'Rusya', isCorrect: false),
              Option(text: 'Kanada', isCorrect: false),
              Option(text: 'Arjantin', isCorrect: false),
              Option(text: 'Avustralya', isCorrect: true),
            ],
          ),
        ],
      ],
    ),
  ];

  void openQuizesPage(BuildContext context, int index) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => QuizesList(
          quizesList: categories[index].questions,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // İki sütun
          crossAxisSpacing: 15.0, // Sütunlar arası boşluk
          mainAxisSpacing: 10.0, // Satırlar arası boşluk
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => openQuizesPage(context, index),
            child: DecoratedBox(
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
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
