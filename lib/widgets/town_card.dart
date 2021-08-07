import 'package:flutter/material.dart';
import 'package:ivs_maintenance/models/town.dart';

class TownCard extends StatelessWidget {
  Town town;
  TownCard(this.town);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            trailing: Icon(Icons.arrow_drop_down_circle),
            title: Row(
              children: [
                Text('${town.name} - '),
                Icon(Icons.laptop, size: 12,),
                Text(' ${town.numSystems}'),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${town.time}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 12,),
                    SelectableText(
                      ' ${town.address}',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Start Town'),
              ),
              TextButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('Fill Town Report'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
