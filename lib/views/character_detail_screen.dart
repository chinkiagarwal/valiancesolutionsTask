
import 'package:flutter/material.dart';
import 'package:flutter_assignment/model/rick_n_morty_character_model.dart';


class CharacterDetailsWidget extends StatelessWidget {
  late RickNMortyCharacterModel homeItem;

  CharacterDetailsWidget({required this.homeItem});

  // const CharacterDetailsWidget({
  //   Key? key,
  //   required this.RickNMortyCharacter,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeItem.title!),
      ),
      body: Column(
        children: [
          Image.network(homeItem.url!),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                'AlbumId ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${homeItem.albumId}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
