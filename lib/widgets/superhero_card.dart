import 'package:flutter/material.dart';
import 'package:superheroes/pages/superhero_page.dart';
import 'package:superheroes/resources/superheroes_colors.dart';

import '../blocs/main_bloc.dart';

class SuperheroCard extends StatelessWidget {
  //final String name;
  //final String realName;
  //final String imageUrl;
  final SuperheroInfo superheroInfo;
  final VoidCallback onTap;

  const SuperheroCard({
    Key? key,
    //required this.name,
    //required this.realName,
    //required this.imageUrl,
    required this.superheroInfo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SuperheroPage(name: superheroInfo.name),
          ),
        );
      },
      child: Container(
        height: 70,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(8),
          color: SuperheroesColors.card,
        ),
        child: Row(
          children: [
            Image.network(
              superheroInfo.imageUrl,
              fit: BoxFit.cover,
              width: 70,
              height: 70,
            ),
            SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    superheroInfo.name.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                  Text(
                    superheroInfo.realName,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Open Sans',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
