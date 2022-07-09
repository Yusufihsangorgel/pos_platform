part of 'homePart.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<int>(
              data: 1,
              feedback: Container(
                color: Colors.deepOrange,
                height: Get.height * 0.2,
                width: Get.width * 0.2,
                child: const Icon(Icons.directions_run),
              ),
              childWhenDragging: Container(
                height:  Get.height * 0.2,
                width: 100.0,
                color: Colors.pinkAccent,
                child: const Center(
                  child: Text('Sürükle abi'),
                ),
              ),
              child: Container(
                height: Get.height * 0.2,
                width: Get.width * 0.2,
                color: Colors.lightGreenAccent,
                child: const Center(
                  child: Text('Sürükle abi'),
                ),
              ),
            ),
            DragTarget<int>(
              builder: (
                BuildContext context,
                List<dynamic> accepted,
                List<dynamic> rejected,
              ) {
                return Container(
                  height: Get.height * 0.2,
                  width: Get.width * 0.2,
                  color: Colors.cyan,
                  child: Center(
                    child: Text(
                        'Şuana kadar : ${homeController.acceptedData.value} tane sürükledin abi'),
                  ),
                );
              },
              onAccept: (int data) {
               homeController.acceptData(data);
              },
            ),
          ],
        
      ),
    );
  }
}
