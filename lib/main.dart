import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: const Text('노인 사회 문제'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Main_EnterCard(),
              Main_ProblemCard(titleText1: '빈곤률 OECD 1위', titleText2: '자살률 OECD 평균의 2배', titleText3: '노인의 87%가 중증 질환',),
              Main_TitleCard( titleText1: '어떻게 해야 할까요?',),
              Main_SolutionCard(),
              SizedBox(height: 50,),
              Main_TitleCard( titleText1: '여러분의 관심이 \n세상을 바꿉니다',)
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 45,
        child: BottomAppBar(
          child: Row(
            children: [
              Text('통합사회 주제탐구'),
            ],
          ),
        ),
      ),
    );
  }
}

// 메인화면 처음 보이는 카드
class Main_EnterCard extends StatelessWidget {
  const Main_EnterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 100, 0,0),
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 350),
      child: Center(
        child: Column(
          children: [
            Text('노인 사회 문제', style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
            ),),
            Text('우리의 관심이 필요합니다', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
            ),),
            Text(' ', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
            ),),
            const Text('•', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 40,
            ),),
            const Text('•', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 35,
            ),),
            const Text('•', style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),),
          ],
        ),
      ),
    );
  }
}


// 22
class Main_ProblemCard extends StatelessWidget {
  final String titleText1;
  final String titleText2;
  final String titleText3;

  const Main_ProblemCard({super.key, required this.titleText1, required this.titleText2, required this.titleText3});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context).size.width > 750 ? EdgeInsets.fromLTRB(0, 0, 0,350) : EdgeInsets.fromLTRB(0, 0, 0, 300),
      child: Center(
        child: Column(
          children: [
            Text(titleText1, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
            ),),
            SizedBox(height: 50,),
            Text(titleText2, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
            ),),
            SizedBox(height: 50,),
            Text(titleText3, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
            ),),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}

// 어떻게 해야 할까요?, 여분관세바
class Main_TitleCard extends StatelessWidget {
  final String titleText1;
  const Main_TitleCard({super.key, required this.titleText1});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 60),
        child: Text(titleText1, style: TextStyle(
          fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
          fontWeight: FontWeight.w900,
        ),
        ),
      ),
    );
  }
}

class Main_SolutionCard extends StatelessWidget {
  const Main_SolutionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: MediaQuery.of(context).size.width > 750 ? EdgeInsets.fromLTRB(0, 200, 0, 0): EdgeInsets.fromLTRB(0, 150, 0, 0),
          ),
          const _Main_TitleNExplain(titleText1: "노인 일자리 지원",
              titleText2: "노인 인력을 고용하는 기업의 제품이나 서비스를 우선적으로 사며 노인 일자리를 지원해서 노인 빈곤 문제 해결에 도움을 줄 수 있습니다"),
          const _Main_TitleNExplain(titleText1: "주기적인 연락과 방문",
              titleText2: "주기적인 연락과 방문을 통해 외로움을 덜어드리는 것이 중요합니다"),
          const _Main_TitleNExplain(titleText1: "꾸준한 운동 도움",
              titleText2: "질병관리청에 따르면 노인 운동은 심혈관 건강 개선, 근력 및 유연성 향상, 정신 건강 증진 등의 긍정적인 효과가 많습니다."),
        ],
      ),
    );
  }
}

class _Main_TitleNExplain extends StatelessWidget {
  final String titleText1;
  final String titleText2;
  
  const _Main_TitleNExplain({super.key, required this.titleText1, required this.titleText2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(titleText1, style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: MediaQuery.of(context).size.width > 750 ? 70 : 50,
        ),),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 100),
          width: MediaQuery.of(context).size.width > 750 ? 800 : 550,
          child: Text(titleText2,
            textAlign: TextAlign.center,
            style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: MediaQuery.of(context).size.width > 750 ? 35 : 25,
          ),),
        ),
      ],
    );
  }
}
