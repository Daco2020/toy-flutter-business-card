import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController introduceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.blueGrey),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        title: const Text(
          '뺑끼펭귄 나가신다! 길을 비켜라😤',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        // 스크롤 가능한 화면
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity, // 화면 전체 너비
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/penguin.jpg',
                      fit: BoxFit.cover, // 이미지를 꽉 채움
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: const Text("뺑끼펭귄",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                  "야호, 나는 뺑끼펭귄! 남극에서 온 카리스마 넘치는 펭귄이야. 🐧💫 새로운 것을 탐험하고 친구들과 지식 나누기가 취미야. 모두와 함께라면 매일이 즐거워!",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: TextField(
                controller: introduceController,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: '뺑끼펭귄에게 해주고 싶은 말을 입력해주세요.',
                  hintStyle:
                      const TextStyle(color: Colors.blueGrey, fontSize: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.blueGrey),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text("🎉 뺑끼펭귄의 취미",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text("1. 새로운 것 탐험하기\n2. 친구들과 지식 나누기\n3. 매일 즐겁게 보내기",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey)),
            ),
          ],
        ),
      ),
    );
  }
}
