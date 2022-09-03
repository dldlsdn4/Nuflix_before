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
