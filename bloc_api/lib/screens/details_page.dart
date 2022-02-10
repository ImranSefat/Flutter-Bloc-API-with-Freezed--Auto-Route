import 'package:flutter/material.dart';

import 'package:bloc_api/models/data_model.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  final DataModel dataModel;
  const DetailsPage({
    Key? key,
    required this.dataModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 230,
                width: double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(dataModel.image),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            dataModel.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        if (dataModel.worth != "N/A")
                          const SizedBox(
                            height: 12,
                          ),
                        if (dataModel.worth != "N/A")
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              dataModel.worth,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Available in: " + dataModel.platforms,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Game Description",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      dataModel.description,
                      style: const TextStyle(
                          // fontWeight: FontWeight.w,
                          ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Steps to get it",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      dataModel.instructions,
                      style: const TextStyle(),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: InkWell(
                            onTap: () {
                              launch(dataModel.gamerpower_url);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 79,
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  "Open in Gamepower",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: InkWell(
                            onTap: () {
                              launch(dataModel.open_giveaway_url);
                            },
                            child: Container(
                              width: double.infinity,
                              height: 79,
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text(
                                  "Get the game",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
