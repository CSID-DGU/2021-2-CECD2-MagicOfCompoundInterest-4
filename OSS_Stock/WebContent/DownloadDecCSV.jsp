<%@ page language="java" pageEncoding="UTF-8" buffer="20kb" trimDirectiveWhitespaces="true" %>
 <%@ page import="java.net.URLEncoder" %>

<%!

    private String getBrowser(HttpServletRequest request) {
        String header = request.getHeader("User-Agent");
        if (header.contains("MSIE")) {
            return "MSIE";
        } else if (header.contains("Chrome")) {
            return "Chrome";
        } else if (header.contains("Opera")) {
            return "Opera";
        } else if (header.contains("Trident")) {
            return "Trident";//for IE11
        }
        return "Firefox";
    }
%>
<%
    String fileName = "12월 종목 추천.csv";

    String header = getBrowser(request);
    if (header.contains("MSIE") || header.contains("Trident")) {
        String docName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
        response.setHeader("Content-Disposition", "attachment;filename=" + docName + ";");
    } else if (header.contains("Firefox")) {
        String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
    } else if (header.contains("Opera")) {
        String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
    } else if (header.contains("Chrome")) {
        String docName = new String(fileName.getBytes("UTF-8"), "ISO-8859-1");
        response.setHeader("Content-Disposition", "attachment; filename=\"" + docName + "\"");
    }

    response.setContentType("application/octet-stream");

    response.setHeader("Content-Transfer-Encoding", "binary;");
    response.setHeader("Pragma", "no-cache;");
    response.setHeader("Expires", "-1;");

    out.clearBuffer();
    out.print("\ufeff"); //for UTF-8 data
    //아래에 CSV 파일 내용을 출력한다.
%>
20,동화약품 ,의약품 제조업,-550,-3.68,1033,13.94,11860,1.21,"180
"
2700,신일전자 ,기계장비 및 관련 물품 도매업,20,0.99,115,17.7,1059,1.92,"20
"
3230,삼양식품 ,기타 식품 제조업,1900,2.18,8922,10,45470,1.96,"800
"
6740,영풍제지 ,"""""""골판지""",150,2.11,483,15.01,5692,1.27,"40
"
9180,한솔로지스틱스 ,기타 운송관련 서비스업,10,0.26,316,12.44,1989,1.98,"50
"
10050,우리종금 ,기타 금융업,-4,-0.44,89,10.22,605,1.5,"10
"
24090,디씨엠 ,1차 철강 제조업,350,1.13,2166,14.45,16153,1.94,"500
"
25530,SJM홀딩스 ,자동차 부품 및 내장품 판매업,120,3.55,221,15.84,9852,0.36,"100
"
33290,코웰패션 ,"""""""섬유""",-170,-2.19,697,10.89,3233,2.35,"120
"
39830,오로라 ,전문디자인업,60,0.63,781,12.23,10226,0.93,"100
"
42500,링네트 ,"""""""컴퓨터 프로그래밍""",-190,-2.86,598,10.79,4476,1.44,"0
"
49720,고려신용정보 ,기타 사업지원 서비스업,70,0.81,740,11.82,2041,4.29,"275
"
53690,한미글로벌 ,"""""""건축기술""",0,0,974,11.55,10889,1.03,"300
"
56360,코위버 ,통신 및 방송 장비 제조업,-10,-0.13,599,12.44,12442,0.6,"80
"
65710,서호전기 ,"""""""전동기""",50,0.25,1319,15.43,14273,1.43,"1000
"
67920,이글루시큐리티 ,기타 정보 서비스업,40,0.57,526,13.44,4533,1.56,"160
"
71460,위니아딤채 ,가정용 기기 제조업,-15,-0.41,348,10.52,2186,1.67,"0
"
81660,휠라홀딩스 ,생활용품 도매업,400,1.12,2306,15.65,21274,1.7,"185
"
90350,노루페인트 ,기타 화학제품 제조업,310,3.1,879,11.72,16315,0.63,"275
"
92730,네오팜 ,기타 화학제품 제조업,-300,-1.2,2318,10.63,14343,1.72,"650
"
93320,케이아이엔엑스 ,"""""""자료처리""",-1200,-2.36,3156,15.72,22393,2.21,"500
"
103140,풍산 ,1차 비철금속 제조업,50,0.16,2567,11.9,51539,0.59,"600
"
104830,원익머트리얼즈 ,기초 화학물질 제조업,350,1.05,2628,12.86,26857,1.26,"200
"
119860,다나와 ,소프트웨어 개발 및 공급업,-900,-3.31,2387,11.02,10461,2.51,"600
"
122450,KMH ,텔레비전 방송업,70,0.88,718,11.24,5865,1.38,"0
"
126640,화신정공 ,자동차 신품 부품 제조업,10,0.53,138,13.62,2357,0.8,"30
"
136540,윈스 ,"""""""컴퓨터 프로그래밍""",100,0.59,1663,10.22,10420,1.63,"400
"



