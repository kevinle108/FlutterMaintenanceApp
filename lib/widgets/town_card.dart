import 'package:flutter/material.dart';
import 'package:ivs_maintenance/models/town.dart';
import 'package:flutter/services.dart';
import 'package:ivs_maintenance/constants.dart';

class TownCard extends StatelessWidget {
  Town town;
  TownCard(this.town);


  @override
  Widget build(BuildContext context) {
    return Card(
      color: townCardColorDefault,
      // color: Colors.blueAccent,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            trailing: Icon(Icons.arrow_drop_down),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_on, size: 12,),
                    Expanded(
                      child: GestureDetector(
                        onTap: () async {
                          await Clipboard.setData(new ClipboardData(text: town.address)).then((_){
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('Copied to clipboard!')));
                          });
                        },
                        child: Text(
                          ' ${town.address}',
                          style: TextStyle(color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                    ),
                    // Icon(Icons.copy, size: 15,),
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
