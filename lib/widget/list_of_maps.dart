import 'package:flutter/widgets.dart';

import 'button_widget.dart';
import 'sub_title_text.dart';
import 'text_form.dart';
import 'title_test.dart';

List<Map<String, Widget>> listOfWidget = [
  {
    'title': TitleText(key: UniqueKey()),
  },
  {
    'text': SubTitleText(key: UniqueKey()),
  },
  {
    'search field': TextForm(key: UniqueKey()),
  },
  {'button': ButtonWidget(key: UniqueKey())}
];

List<Map<String, String>> imagine = [
  {
    'first_pic':
        "https://images.pexels.com/photos/30322039/pexels-photo-30322039/free-photo-of-vibrant-yucca-leaves-in-alicante-spain.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'second_pic':
        "https://images.pexels.com/photos/30433640/pexels-photo-30433640/free-photo-of-top-view-of-white-blooming-plant-with-coffee-and-notebook.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'third_pic':
        "https://images.pexels.com/photos/30430058/pexels-photo-30430058/free-photo-of-philippine-tropical-foliage-close-up.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'forth_pic':
        "https://images.pexels.com/photos/30468566/pexels-photo-30468566/free-photo-of-vibrant-carpets-drying-on-moroccan-rooftop.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'fifth':
        "https://images.pexels.com/photos/30388032/pexels-photo-30388032/free-photo-of-woman-in-white-dress-exploring-sunlit-forest.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'sixth':
        "https://images.pexels.com/photos/459335/pexels-photo-459335.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'seventh':
        "https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'eight':
        "https://images.pexels.com/photos/757889/pexels-photo-757889.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'ninth':
        "https://images.pexels.com/photos/1187079/pexels-photo-1187079.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'tenth':
        "https://images.pexels.com/photos/74512/pexels-photo-74512.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
  {
    'eleventh':
        "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  },
];
