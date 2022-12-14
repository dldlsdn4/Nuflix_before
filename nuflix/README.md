# nugar

lib/
|- model
|  |_ model_movie.dart
|
|- screen
|  |_ detail_screen.dart
|  |_ home_screen.dart
|  |_ like_screen.dart
|  |_ more_screen.dart
|  |_ search_screen.dart 
|
|- shared_preference
|  |_ shared_prefs.dart
|
|- widget
|  |_ bottom_bar.dart
|  |_ box_slider.dart
|  |_ carousel_slider.dart
|  |_ circle_slider.dart
|
|_ firebase_options.dart
|_ util.dart
|_ main.dart

[MVVM구조]
Model + View + ViewModel

Model : Data
View : UI
ViewModel : View를 위한 Model

1. Action이 View를 통해 들어옴
2. Command 패턴을 통해 ViewModel이 알게됨
3. ViewModel이 Model에게 Data 요청
4. Model이 ViewModel의 요청응답
5. ViewModel Data 가공하여 저장
6. View는 ViewModel과 Data Binding하여 화면에 나타냄

Command : 실행될 기능을 캡슐화함으로써 주어진 여러 기능을 실행할 수 있는 재사용성이 높은 클래스를 설계하는 패턴

Data Binding : Ui 요소와 데이터를 프로그램적 방식으로 연결하지 않고, 선언적 형식으로 결합할 수 있게 도와주는 라이브러리

Command + Data Binding : 의존성을 없앰

View Model : View = 1 : N

장점. MVC 패턴의 단점인 의존성을 없앴다. 모듈화가 가능하다

단점. VM 설계가 어렵다.

[Stateless_Widget]

성능이 좋다.

변화가 필요하지 않은 화면을 그릴 때 사용한다.

화면이 로드될 때 한번만 그려지는 State가 없다.

사용자와 상호작용이 없는 것이 특징이다.

[Stateful_Widget]

성능이 별로다.

이벤트 혹은 사용자와의 상호작용이 필요한 것이 특징이다.

[part,import]

Dart에서 파일을 참조하는 두 가지 유형.

part : public 과 private 모두 읽음, 제거될 가능성.

import : public만 읽음

part 대신 import를 사용해야한다.

[상태관리]

상태관리는 UI에서 실시간으로 변하는 여러 데이터들의 상태를 효율적으로 관리하기 위한 개념

[GetX]
다른 페이지에서 사용되는 컨트롤러를 Get으로 찾아서 redirect 시킨다.

[bloc,provider]

기존의 만들기 어려웠던 Bloc 패턴(4개 이상의 클래스를 만들어야만 했음.)보다 나은 상태관리.

불필요한 Re-build를 막기위해 최상단 위젯에 Stateful Widget을 추가하여 Parameter로 상태를 전달한다.

전역 데이터 관리.

[비동기처리][async, await, futures]

서버에 요청을 보냈을 때 응답 상태와 상관없이 다음 동작 수행가능

future는 요청한 작업의 결과를 기다리지 않고 바로 다음 작업으로 넘어감.
후에 작업이 완료되면 결과를 받는 방식으로 비동기 처리를 함

async await
작업이 완료될 때까지 기다렸다가 결과값을 받고 다음 작업으로 넘어감

[RestApi]

GET : 생성

POST : 조회

PUT : 수정

DELETE : 삭제

[Stream]

큰 Data를 잘게 나누어서 사용한다.

ex) 유튜브 영상 or 동영상 강의

[RxDart]

Bloc과 Stream을 이용

snapshot data로 비동기적 변경을 옵저버패턴을 활용하여 구현

[Retrofit]

http 통신을 위한 library

[GraphQL]

GraphQL은 클라이언트에서 자기에 필요한 데이터만을 쿼리할 수 있도록 하여 위의 문제를 매우 직관적이고 깔끔하게 해결한다.

GraphQL을 사용하기 위해서는 서버와 클라이언트의 중간에 GraphQL이 레이어로 하나 더 있다고 보아야 한다.

[GraphQL,RESTAPI차이점]

REST에서는 Resource에 대한 형태 정의와 데이터 요청 방법이 연결되어 있지만, GraphQL에서는 Resource에 대한 형태 정의와 데이터 요청이 완전히 분리되어 있습니다.

REST에서는 Resource의 크기와 형태를 서버에서 결정하지만, GraphQL에서는 Resource에 대한 정보만 정의하고, 필요한 크기와 형태는 client단에서 요청 시 결정합니다.

REST에서는 URI가 Resource를 나타내고 Method가 작업의 유형을 나타내지만, GraphQL에서는 GraphQL Schema가 Resource를 나타내고 Query, Mutation 타입이 작업의 유형을 나타냅니다.

REST에서는 여러 Resource에 접근하고자 할 때 여러 번의 요청이 필요하지만, GraphQL에서는 한번의 요청에서 여러 Resource에 접근할 수 있습니다.

REST에서 각 요청은 해당 엔드포인트에 정의된 핸들링 함수를 호출하여 작업을 처리하지만, GraphQL에서는 요청 받은 각 필드에 대한 resolver를 호출하여 작업을 처리합니다.

URL

https://blog.promedius.ai/flutter-graphqleul-jal-sayonghaeboja/


[patch...vs...put]

put : 자원의 전체 교체, 모든 필드 필요

path : 자원의 부분 교체, 부분 필드 필요