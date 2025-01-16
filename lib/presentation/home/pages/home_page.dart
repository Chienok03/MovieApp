import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/common/widgets/appbar/app_bar.dart';
import 'package:movie_app/core/configs/assets/app_vector.dart';
import 'package:movie_app/presentation/home/widgets/trending.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        hideBack: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SvgPicture.asset(
            AppVector.logo,
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TrendingMovies()
          ],
        ),
      ),
    );
  }
}
