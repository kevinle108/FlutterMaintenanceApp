import 'package:flutter/cupertino.dart';
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
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ExpansionTile(
            title: Column(
              children: [
                ListTile(
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
                      Row(
                        children: [
                          Icon(Icons.schedule, size: 12,),
                          Text(
                            ' ${town.time}',
                            style: TextStyle(color: Colors.black.withOpacity(0.6)),
                          ),
                        ],
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
                                '${town.address}',
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
              ],
            ),
              children: [
                createItemField('Contact Names', town.contactName),
                createItemField('Phone', town.phone),
                createItemField('Parking Notes', town.parkingNotes),
                createItemField('Building Notes', town.buildingNotes),
              ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
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

// helper function to create the expanded field items
Widget createItemField(String fieldName, String fieldInfo) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$fieldName: ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Expanded(child: Text(fieldInfo)),
      ],
    ),
  );
}
