import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class ButtonOptions {
  final IconData icon;
  final String text;

  const ButtonOptions({
    required this.icon,
    required this.text,
  });
}

class _HomePageState extends State<HomePage> {
  final List<String> favoriteContactList = [
    'Juana Ayala',
    'Luis Jimenez',
  ];
  final List<String> savedContactList = [
    'Adriana Salinas',
    'Alberto Torres',
    'Juana Ayala',
  ];

  final List<ButtonOptions> buttonOptions = [
    const ButtonOptions(
      icon: Icons.compare_arrows,
      text: 'Transferir',
    ),
    const ButtonOptions(
      icon: Icons.wallet,
      text: 'Pagar',
    ),
    const ButtonOptions(
      icon: Icons.compare_arrows,
      text: 'Retirar',
    ),
    const ButtonOptions(
      icon: Icons.compare_arrows,
      text: 'Depositar',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.message_rounded,
              color: Colors.orange,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              pinned: false,
              snap: false,
              floating: true,
              expandedHeight: 20.0,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                title: Text(
                  'Mover dinero',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 2.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return CustomGridContainer(
                    icon: buttonOptions[index].icon,
                    text: buttonOptions[index].text,
                  );
                },
                childCount: buttonOptions.length,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        'Contactos',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.add, color: Colors.orange),
                              Text(
                                'Nuevo',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (index == 0) ...[
                          const Text(
                            'Favoritos',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Text(favoriteContactList[index]),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                childCount: favoriteContactList.length,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (index == 0) ...[
                          const Text('Guardados'),
                          const SizedBox(height: 10),
                        ],
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Text(savedContactList[index]),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.menu_rounded),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                childCount: savedContactList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomGridContainer extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomGridContainer({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff2A2D32),
        gradient: LinearGradient(
          colors: [
            Color(0xff2A2D32),
            Color(0xff23262A),
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
