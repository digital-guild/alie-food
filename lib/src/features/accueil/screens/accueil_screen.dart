import 'package:alie/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features.dart';

class AccueilScreen extends ConsumerStatefulWidget {
  const AccueilScreen({super.key});

  @override
  ConsumerState<AccueilScreen> createState() => _AccueilScreenState();
}

class _AccueilScreenState extends ConsumerState<AccueilScreen> {
  late AccueilController _accueilController;

  @override
  void initState() {
    _accueilController = ref.read(accountControllerProvider);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getAllCategories();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, child) {
            _accueilController = ref.watch(accountControllerProvider);

            return Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Bienvenue, Jean",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder) => LoginScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 1),
                              ],
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.person),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.grey, blurRadius: 1),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Go to premium now! Get access all the amazing secipes from the world",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              "Conectez-vous!",
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    _accueilController.isLoading ? const CircularProgressIndicator() : Column(
                      children: [
                        const Row(
                          children: [
                            Expanded(
                                child: Text(
                              "Category",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                            Text(
                              "Voir tout",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            Icon(Icons.chevron_right),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 100,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: _accueilController.categories.length,
                              itemBuilder: (context, index) {
                              var item = _accueilController.categories[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: NetworkImage(item!.linkImage!), fit: BoxFit.cover),
                                          shape: BoxShape.circle,
                                          boxShadow: const [
                                            BoxShadow(color: Colors.grey, blurRadius: 1),
                                          ],
                                        ),
                                      ),
                                      Text(item.label!)
                                    ],
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                              "Recommandations",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        Text(
                          "Voir tout",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(image: AssetImage(Assets.images.deliciousLobsterGourmetSeafood.path), fit: BoxFit.cover),
                                      boxShadow: const [
                                        BoxShadow(color: Colors.grey, blurRadius: 1),
                                      ],
                                    ),
                                  ),
                                  const Text("Category")
                                ],
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Text(
                              "Recommandations",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        Text(
                          "Voir tout",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("CategoryCategoryCategoryCategoryCategoryCategory")
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }

  void getAllCategories() async {
    _accueilController.getCategories();
  }
}
