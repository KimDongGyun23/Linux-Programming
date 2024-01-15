## 게임 1P 플레이 구현
### 🐣 어려웠던 점
* 로그인 구현
회원가입을 진행하면, 회원 정보가 텍스트 파일로 저장이 된다. 그 후, 로그인을 진행한다면 해당 파일에서 정보를 가져와서 비교하는 작업이 필요했다. 해당 기능을 구현하고자 하니 명령어가 익숙하지 않아서 쉽게 방안이 떠오르지 않았다.<br /><br />

조금은 단순한 방법으로 문제를 해결했다. 로그인 할 때 입력한 정보도 마찬가지로 텍스트 파일로 저장하는 것이었다. 그리고는 회원가입 때 작성된 파일과 비교하여 차이점을 새로운 파일로 저장하는 것이다. 만약 두 내용이 동일하다면 빈 파일이 저장될 것이고, 그렇지 않다면 무언가 기록된 파일이 저장될 것이다. 이를 통해서 로그인 정보가 올바른지 확인하였다.<br /><br />

프로그램을 완성하고, 현재 느끼기에는 한없이 단순하고 부족한 방법이다. 만약 회원가입 정보가 여러 개면 또 다른 방안을 생각해야 한다는 문제점이 존재한다. 너무 단순한 방법만을 생각하지 않았나 생각이 든다. 좀 더 확장성을 갖는 코드를 생각해보도록 하자.<br /><br />

* 게임 구현
바둑판 모양의 맵에서 방향키 구현은 상당히 오랜 시간이 걸렸다. 처음에는 보여질 수 있는 화면의 모든 경우의 수를 다 만들어볼까 싶었지만, 8*8 바둑판 모양의 모든 칸에 대해서 화면을 만들어내는 것은 말이 안되는 접근이다. 다음으로는 행 단위로 화면을 저장하여 출력하였다. 이동하는 것은 물론 구현할 수 있었다. 하지만 저장된 화면을 출력하는 만큼 여러 칸의 색상을 바꿀 수 없었다. 결론은 배열을 사용하는 것이었다. 해당 칸의 정보를 저장하고, 색상에 따라 값을 변경할 수 있도록 하는 것이었다.<br /><br />

### 🐣 느낀 점
게임 구현에서 막현던 부분을 보면, 어찌 생각하면 처음부터 배열을 떠오르는 것이 맞을 것이다. 하지만 코딩을 처음 공부하고 있던 나에게는 쉽게 떠오르지 않았다. 많이 부족하다는 것을 느꼈다. 접근 방법이 떠오르기까지의 시간을 생각한다면, 남들과 비교하여 많은 시간을 날려먹지 않았나 생각이 든다. 무작정 코드부터 작성하려 하지 말고 접근 방법에 대해서 생각해보고 잘 기억해두자.