# 2021-2-CECD2-MagicOfCompoundInterest-4

<h1>2021년 2학기 공소 SW 프로젝트_02 분반 복리의 마법</h1>
<h2>팀명 - 복리의 마법
<h2>프로젝트에 대한 설명<br>
  1.Python을 이용해 팀 만의 조건들을 선별하여 이를 자동 매매 그램에 반영한다.<br>
  2.MongoDB, REACT, REST API 서버 등을 사용한다.
<h2>팀장 - 2017112136 컴퓨터공학과 성지훈 </h2>
<h3>팀원<br>
1.2017112796 수학교육과 최석운<br>
2.2018113052 융합보안학과 정다현<br>   
3.2010112254 컴퓨터공학과 이규범<br> 
</h3>  
Python을 이용 자동 매매 프로그램 및 MongoDB, REACT를 이용해서 DB를 사용

웹을 개발하여 Xing API를 이용한 모의투자를 바탕으로 선정한 조건을 자동 매매 프로그램에 대입
![image](https://user-images.githubusercontent.com/32629687/137322155-4a9fa8e9-d486-4090-aa5e-93edc2e116ca.png)

<h1>agent 폴더에 해당하는 부분이 수집, 매매 모듈에 해당한다.</h1>
<h2>수집의 경우 Xing API, 공공 데이터, 웹 크롤링, 데이터 마켓으로 구성된다.</h2>

==> 가치투자의 경우, 피터 린치(Peter Lynch)의 투자 공식을 그대로 사용해서 현재 증권 API를 받아오는 식으로 변경
  
  PER : Price Earning Ratio로서 주가수익비율을 의미. 기업의 이익가치가 얼마인지를 판단하는데 사용
  PER = 주가 / 주당 순이익
  PER의 개념은 종목, 업종, 시장에 따라 평가 기준이 달라질 수 있기 떄문에 동조 업계별 상대평가로 판단함이 옳다.
  
  
  EPS : 주당 순이익을 나타내는 기본 지표로 기업이 1주당 이익을 얼마나 창출했는지를 나타내는 지표
  EPS = 당기 순이익 / 발행 주식수
  
  KRX 사이트(or Naver 금융 or 대신증권 API)에서 PER, EPS 등의 재무제표를 받아와서 
  
