## version.1 / 로그인 화면 구현
### 🐣 어려웠던 점
방향키로 메뉴를 선택해야 하는 부분이 쉽지만은 않았다. 간단하게 생각하면 상하좌우로 움직이는 것인데, 로직을 생각해내기 위해서 계속 코드를 고쳐보았으나 생각처럼 되지 않았다.<br/><br/>

해결한 방법은 간단했다. 종이와 펜으로 그려가면서 생각하니까 좀 더 쉽게 접근할 수 있었다. 메뉴 각각에 숫자를 부여하고 상하좌우로 이동할 때마다 숫자를 더하거나 뺴면 되는 것이었다. 처음부터 잘못된 코드를 계속 뜯어고치려고만 했던 점이 잘못된 생각이었던 것 같다.<br/><br/>

### 🐣 느낀 점
게임을 포함하여 프로그램은 만든다는 것은 단순하게 생각하면 안된다는 점을 느꼈다. 내가 당연하다고 생각하는 부분들이 사용자들에게는 당연하지 않을 수도 있고, 예상치 못한 접근을 할 수 있기 때문이다.<br/><br/>

실제로, 메뉴 버튼이 네 개가 있었는데 방향키로 버튼을 옮겨 갈 때마다 색상이 파란색으로 바뀌도록 만들고 있었다. 나는 당연히 네 개의 버튼에 대해서만 작동을 확인하고는 완벽하다고 생각했다. 하지만, 친구가 테스트를 봐주던 중, 마지막 버튼을 벗어났을 때 오류가 발생하는 것을 발견했다. 순간 당황하지 않을 수 없었다. 전혀 생각치도 못했던 부분이지만, 분명 여러 사람들이 마주치게 될 오류일 것이다.<br/><br/>

앞으로는 조금 더 많은 경우의 수를 생각해봐야겠다고 느꼈다. 오류가 발생하지 않도록 더 제한적으로 코드를 짜야겠다. 나에게 편하고 자유로운 코드가 항상 좋은 것이 아니라는 것을 깨달았다.<br/><br/>

---
<br />

## version.2 / 게임 1P 플레이 구현
### 🐣 어려웠던 점
#### 1️⃣ 로그인 구현
회원가입을 진행하면, 회원 정보가 텍스트 파일로 저장이 된다. 그 후, 로그인을 진행한다면 해당 파일에서 정보를 가져와서 비교하는 작업이 필요했다. 해당 기능을 구현하고자 하니 명령어가 익숙하지 않아서 쉽게 방안이 떠오르지 않았다.<br /><br />

조금은 단순한 방법으로 문제를 해결했다. 로그인 할 때 입력한 정보도 마찬가지로 텍스트 파일로 저장하는 것이었다. 그리고는 회원가입 때 작성된 파일과 비교하여 차이점을 새로운 파일로 저장하는 것이다. 만약 두 내용이 동일하다면 빈 파일이 저장될 것이고, 그렇지 않다면 무언가 기록된 파일이 저장될 것이다. 이를 통해서 로그인 정보가 올바른지 확인하였다.<br /><br />

프로그램을 완성하고, 현재 느끼기에는 한없이 단순하고 부족한 방법이다. 만약 회원가입 정보가 여러 개면 또 다른 방안을 생각해야 한다는 문제점이 존재한다. 너무 단순한 방법만을 생각하지 않았나 생각이 든다. 좀 더 확장성을 갖는 코드를 생각해보도록 하자.<br /><br />

#### 2️⃣ 게임 구현
바둑판 모양의 맵에서 방향키 구현은 상당히 오랜 시간이 걸렸다. 처음에는 보여질 수 있는 화면의 모든 경우의 수를 다 만들어볼까 싶었지만, 8*8 바둑판 모양의 모든 칸에 대해서 화면을 만들어내는 것은 말이 안되는 접근이다. 다음으로는 행 단위로 화면을 저장하여 출력하였다. 이동하는 것은 물론 구현할 수 있었다. 하지만 저장된 화면을 출력하는 만큼 여러 칸의 색상을 바꿀 수 없었다. 결론은 배열을 사용하는 것이었다. 해당 칸의 정보를 저장하고, 색상에 따라 값을 변경할 수 있도록 하는 것이었다.<br /><br />

### 🐣 느낀 점
게임 구현에서 막현던 부분을 보면, 어찌 생각하면 처음부터 배열을 떠오르는 것이 맞을 것이다. 하지만 코딩을 처음 공부하고 있던 나에게는 쉽게 떠오르지 않았다. 많이 부족하다는 것을 느꼈다. 접근 방법이 떠오르기까지의 시간을 생각한다면, 남들과 비교하여 많은 시간을 날려먹지 않았나 생각이 든다. 무작정 코드부터 작성하려 하지 말고 접근 방법에 대해서 생각해보고 잘 기억해두자.