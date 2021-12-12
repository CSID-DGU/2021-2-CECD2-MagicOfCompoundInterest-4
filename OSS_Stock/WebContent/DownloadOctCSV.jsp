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
    String fileName = "10월 종목 추천.csv";

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
20,동화약품 ,의약품 제조업,-700,-3.49,1033,18.73,11860,1.63,"180
"
2700,신일전자 ,기계장비 및 관련 물품 도매업,30,1.62,115,16.35,1059,1.78,"20
"
6740,영풍제지 ,"""""""골판지""",90,1.41,483,13.44,5692,1.14,"40
"
8490,서흥 ,기타 화학제품 제조업,-1250,-2.53,4766,10.12,29221,1.65,"450
"
9180,한솔로지스틱스 ,기타 운송관련 서비스업,0,0,316,13.26,1989,2.11,"50
"
25530,SJM홀딩스 ,자동차 부품 및 내장품 판매업,5,0.14,221,15.93,9852,0.36,"100
"
33290,코웰패션 ,"""""""섬유""",-240,-3.1,697,10.76,3233,2.32,"120
"
39830,오로라 ,전문디자인업,-140,-1.46,781,12.13,10226,0.93,"100
"
49720,고려신용정보 ,기타 사업지원 서비스업,170,1.79,740,13.07,2041,4.74,"275
"
53620,태양 ,기타 금속 가공제품 제조업,140,1.61,881,10.01,19081,0.46,"150
"
53690,한미글로벌 ,"""""""건축기술""",100,0.98,974,10.63,10889,0.95,"300
"
56360,코위버 ,통신 및 방송 장비 제조업,-80,-1.05,599,12.55,12442,0.6,"80
"
65710,서호전기 ,"""""""전동기""",-100,-0.5,1319,15.13,14273,1.4,"1000
"
67920,이글루시큐리티 ,기타 정보 서비스업,-10,-0.14,526,13.82,4533,1.6,"160
"
71460,위니아딤채 ,가정용 기기 제조업,85,2.37,348,10.53,2186,1.68,"0
"
81660,휠라홀딩스 ,생활용품 도매업,-400,-0.99,2306,17.32,21274,1.88,"185
"
90350,노루페인트 ,기타 화학제품 제조업,80,0.83,879,11.04,16315,0.59,"275
"
92730,네오팜 ,기타 화학제품 제조업,400,1.5,2318,11.69,14343,1.89,"650
"
93320,케이아이엔엑스 ,"""""""자료처리""",-850,-2.02,3156,13.07,22393,1.84,"500
"
94820,일진파워 ,전기 및 통신 공사업,100,0.89,724,15.68,6660,1.7,"300
"
103140,풍산 ,1차 비철금속 제조업,-100,-0.31,2567,12.54,51539,0.62,"600
"
104830,원익머트리얼즈 ,기초 화학물질 제조업,-950,-2.94,2628,11.95,26857,1.17,"200
"
119860,다나와 ,소프트웨어 개발 및 공급업,-600,-2.08,2387,11.81,10461,2.7,"600
"
122450,KMH ,텔레비전 방송업,80,0.89,718,12.66,5865,1.55,"0
"
126640,화신정공 ,자동차 신품 부품 제조업,60,2.68,138,16.67,2357,0.98,"30
"



