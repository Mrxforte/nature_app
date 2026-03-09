import 'package:flutter/material.dart';
import 'package:nature_app/data/nature_data.dart';
import 'package:nature_app/models/nature_model.dart';
import 'package:nature_app/screens/details/nature_details_screeen.dart';
import 'package:provider/provider.dart';

class NatureListTileWidget extends StatelessWidget {
  final int index;

  const NatureListTileWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final nature = context.select<NatureData, NatureModel>((provider) {
      return provider.natureData[index];
    });

    return GestureDetector(
      onTap: () {
        context.read<NatureData>().selectNatureByIndex(index);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NatureDetailsScreeen()),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(nature.smallImageUrl),
        ),
        title: Text(nature.name),
        subtitle: Text(
          nature.description,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textAlign: TextAlign.start,
        ),
        trailing: IconButton(
          onPressed: () {
            context.read<NatureData>().toggleFavoriteStatus(index);
          },
          icon: Icon(
            nature.isFavorite ? Icons.favorite : Icons.favorite_border,
          ),
        ),
      ),
    );
  }
}
