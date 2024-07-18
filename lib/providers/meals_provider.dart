import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter_app1/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
