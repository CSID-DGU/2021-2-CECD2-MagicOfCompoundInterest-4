# 2021-2-CECD2-MagicOfCompoundInterest-4
# 2021-2학기 공개SW프로젝트_02 복리의 마법
### 목차
- [팀원](#팀원)
- [프로젝트 주제](#프로젝트-주제)
- [프로젝트 구성도](#프로젝트-구성도)
- [프로젝트 흐름도](#프로젝트-흐름도)

## 팀원
|  <center>학번</center> | 이름 | 학과 | 이메일 |
|:--------:|:--------:|:--------:|:--------:|
| 2017112136 | 성지훈 | 컴퓨터공학과 | jihunsung@naver.com |
| 2017112796 | 최석운 | 컴퓨터공학과 | tjrdns314@naver.com |
| 2018113052 | 정다현 | 융합보안학과 | dahyeon@dgu.ac.kr |
| 2010112254 | 이규범 | 컴퓨터공학과 | bume0414@gmail.com |

## 프로젝트 주제
#### "저평가 가치주 추천 웹 캘린더" 
: Xing API를 활용하여 2,30대 신규 투자자에게 ‘저평가 가치주’ 종목을 추천 해주는 웹 캘린더 서비스
####기존 프로젝트 : 저평가 가치주 추천 통한 자동매매프로그램 구현 
####변경 프로젝트 : 저평가 가치주 종목 추천 캘린더 웹 구현
####변경 사유 : 자동매매프로그램의 주안점은 신속성 및 즉각성이지만, 저평가 가치주 종목 특성상 신속한 자동매매는 불필요한 요소이기에 제거하였으며, 기존 프로그램과의 차별성 종목 추천 및 사용자의 편의성에 집중하는 것이 프로젝트 목표 및 방향성에 맞다고 판단하여 변경

- ‘Xing API 데이터 크롤링’
- 장 마감 이후를 기준으로 주식가격과 재무재표 데이터를 수집
- 피터린치 투자전략 공식으로 데이터를 필터링하여 저평가 가치주를 선별
- ‘저평가 가치주 List Up’
- 수집된 데이터를 분류 기준을 설정, 사용자 편의성을 위해 장 종류, 업종, 추천일자를 구분하여 기록
- ‘웹 구축’
- 사용자의 다양한 접속환경에 대응하기 위하여 반응형 웹사이트 구축
- 분류 기준에 따라 기록된 데이터를 기반으로 사용자에게 선택 옵션을 부여
- 캘린더 페이지를 구축하여 일자별 추천기록을 열람 가능

### 저평가 가치주 종목 선정 방식의 검증
- 피터린치(Peter Lynch) 가치 투자 공식 적용으로 신뢰성 입증
<img src="https://i.imgur.com/THBBqVL.png" width="75%" height="100%">


## 프로젝트 구성도 
프로젝트 구성도는 아래와 같습니다. <br>
<img src="https://i.imgur.com/8fBd0dX.png" width="75%" height="100%">

## 프로젝트 흐름도
프로젝트 흐름도는 아래와 같습니다. <br>
<img src="https://i.imgur.com/iw962lQ.png" width="75%" height="100%">
