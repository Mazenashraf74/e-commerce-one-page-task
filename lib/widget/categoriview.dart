import 'package:flutter/cupertino.dart';

import 'categoris_model.dart';

class Categoriview extends StatelessWidget {
  final CategorisModel categorisModel;

  const Categoriview({super.key, required this.categorisModel});

  @override
  Widget build(BuildContext context) {
    return Categoriview(categorisModel: categorisModel);
  }
}
