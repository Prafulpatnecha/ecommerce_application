import 'package:ecommerce_application/homepage/util/image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

List productList = [
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.blue,
    'imageproduct': p1,
    'textimage': 'Simple Chair',
    'priceimage': 500,
    'rating': '⭐ 3.1 60 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.cyanAccent,
    'imageproduct': p2,
    'textimage': 'Super Chair',
    'priceimage': 1500,
    'rating': '⭐ 4.1 80 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.white,
    'imageproduct': p3,
    'textimage': 'White Pro\n  Cool Chair',
    'priceimage': 2000,
    'rating': '⭐ 5.0 120 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.white70,
    'imageproduct': p4,
    'textimage': 'White Pro\n  Update Chair',
    'priceimage': 3500,
    'rating': '⭐ 5.1 125 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.lightBlue,
    'imageproduct': p5,
    'textimage': 'Simple Comfort\n  Chair',
    'priceimage': 1900,
    'rating': '⭐ 2.1 40 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.yellow,
    'imageproduct': p6,
    'textimage': 'Full Comfort\n  AutoMatic Chair',
    'priceimage': 2999,
    'rating': '⭐ 5.1 121 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.yellow,
    'imageproduct': p7,
    'textimage': 'Cyber Chair',
    'priceimage': 4599,
    'rating': '⭐ 7.1 190 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
    'iconimage':const Icon(Icons.add),
    'colorback':Colors.orangeAccent,
    'imageproduct': p8,
    'textimage': 'Classic Chair',
    'priceimage': 4000,
    'rating': '⭐ 7.1 190 Rating',
    'description':
        'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
  {
  'iconimage':const Icon(Icons.add),
  'colorback':Colors.cyan,
  'imageproduct': p9,
  'textimage': 'Mirror Type\n  Chair',
  'priceimage': 5950,
  'rating': '⭐ 9.6 221 Rating',
  'description':
  'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
  },
];
List productList1=[
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.orangeAccent,
'imageproduct': p10,
'textimage': 'Mirror Super\n  Chair',
'priceimage': 5950,
'rating': '⭐ 9.7 225 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.white,
'imageproduct': p11,
'textimage': 'Generation\n  Chair',
'priceimage': 5999,
'rating': '⭐ 10.1 260 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.orangeAccent,
'imageproduct': p12,
'textimage': 'Working Profile',
'priceimage': 7001,
'rating': '⭐ 10.5 610 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.black,
'imageproduct': p13,
'textimage': 'Bast No\n  Wast',
'priceimage': 6999,
'rating': '⭐ 9.1 502 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
  {
'iconimage':const Icon(Icons.add),
'colorback':Colors.black,
'imageproduct': p14,
'textimage': 'Bast Rest',
'priceimage': 6000,
'rating': '⭐ 8.1 402 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.purple,
'imageproduct': p15,
'textimage': 'Working Office',
'priceimage': 5000,
'rating': '⭐ 5.1 360 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.orange,
'imageproduct': p16,
'textimage': 'Time To Go\n  Rest',
'priceimage': 5499,
'rating': '⭐ 3.1 150 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.brown,
'imageproduct': p17,
'textimage': 'Classic\n  Bast No.1',
'priceimage': 3050,
'rating': '⭐ 10.1 610 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
{
'iconimage':const Icon(Icons.add),
'colorback':Colors.white10,
'imageproduct': p18,
'textimage': 'Gaming File\n  No.1',
'priceimage': 3911,
'rating': '⭐ 9.1 600 Rating',
'description':
'They resemble office chairs, but include a headrest, lumbar support (usually in the form of a cushion), as well as adjustable armrests. Platform gaming. Platform gaming chairs are popular among console gamers. This is because they are meant to rest on the floor and are efficient for television gaming.'
},
];
List textListCategres = [
  'All',
  'Bedroom',
  'Living Room',
  'Study Room',
];
int selectindex=0;