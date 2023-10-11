import "package:movi/export.dart";

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentIndex = 0;
  final List screens = [
    const MoviScreen(),
    const SearchScreen(),
    const DownloadScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(.03),
        elevation: 1,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState((){
            currentIndex = index;
          });
        },
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        items: [
          BottomNavigationBarItem(
            icon:  Iconify(Ri.movie_2_line, color: Theme.of(context).colorScheme.secondary,),
            activeIcon: Iconify(Ri.movie_2_fill, color: Theme.of(context).colorScheme.primary,),
            label: "Movi",
          ),
          BottomNavigationBarItem(
            icon:  Iconify(Ri.search_2_line, color: Theme.of(context).colorScheme.secondary,),
            activeIcon: Iconify(Ri.search_2_fill, color: Theme.of(context).colorScheme.primary,),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon:  Iconify(Ri.download_cloud_2_line, color: Theme.of(context).colorScheme.secondary,),
            activeIcon: Iconify(Ri.download_cloud_2_fill, color: Theme.of(context).colorScheme.primary,),
            label: "Download",
          ),
          BottomNavigationBarItem(
            icon:  Iconify(Ri.user_3_line, color: Theme.of(context).colorScheme.secondary,),
            activeIcon: Iconify(Ri.user_3_fill, color: Theme.of(context).colorScheme.primary,),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
