# nugar

[ MVVM 구조 ]
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

Command + Data Binding : 의존성을 없앰

View Model : View = 1 : N

장점. MVC 패턴의 단점인 의존성을 없앴다. 모듈화가 가능하다

단점. VM 설계가 어렵다.

[ Stateless Widget ]

성능이 좋다.

변화가 필요하지 않은 화면을 그릴 때 사용한다.

화면이 로드될 때 한번만 그려지는 State가 없다.

사용자와 상호작용이 없는 것이 특징이다.

[ Stateful Widget]

성능이 별로다.

이벤트 혹은 사용자와의 상호작용이 필요한 것이 특징이다.

[ part 와 import ]

Dart에서 파일을 참조하는 두 가지 유형.

part : public 과 private 모두 읽음, 제거될 가능성.

import : public만 읽음

part 대신 import를 사용해야한다.
