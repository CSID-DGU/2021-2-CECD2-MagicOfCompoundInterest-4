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
    String fileName = "11월 종목 추천.csv";

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
20,동화약품 ,-,14900,50,0.34,1033,14.42,11860,1.26,"180
"
2700,신일전자 ,기계장비 및 관련 물품 도매업,1970,65,3.41,115,17.13,1059,1.86,"20
"
6740,영풍제지 ,"골판지, 종이 상자 및 종이용기 제조업",6840,30,0.44,483,14.16,5692,1.2,"40
"
9180,한솔로지스틱스 ,기타 운송관련 서비스업,4895,60,1.24,316,15.49,1989,2.46,"50
"
10050,우리종금 ,기타 금융업,1005,24,2.45,89,11.29,605,1.66,"10
"
19010,베뉴지 ,종합 소매업,2220,30,1.37,216,10.28,5453,0.41,"30
"
24090,디씨엠 ,1차 철강 제조업,23200,-100,-0.43,2166,10.71,16153,1.44,"500
"
25530,SJM홀딩스 ,자동차 부품 및 내장품 판매업,3635,-85,-2.28,221,16.45,9852,0.37,"100
"
33290,코웰패션 ,"섬유, 의복, 신발 및 가죽제품 소매업",8940,60,0.68,697,12.83,3233,2.77,"120
"
39830,오로라 ,전문디자인업,10650,250,2.4,781,13.64,10226,1.04,"100
"
42500,링네트 ,"컴퓨터 프로그래밍, 시스템 통합 및 관리업",6590,70,1.07,598,11.02,4476,1.47,"0
"
49720,고려신용정보 ,기타 사업지원 서비스업,9800,140,1.45,740,13.24,2041,4.8,"275
"
53620,태양 ,기타 금속 가공제품 제조업,9100,100,1.11,881,10.33,19081,0.48,"150
"
53690,한미글로벌 ,"건축기술, 엔지니어링 및 관련 기술 서비스업",11100,500,4.72,974,11.4,10889,1.02,"300
"
56360,코위버 ,통신 및 방송 장비 제조업,7710,-190,-2.41,599,12.87,12442,0.62,"80
"
67900,와이엔텍 ,폐기물 처리업,12300,400,3.36,1203,10.22,8637,1.42,"0
"
67920,이글루시큐리티 ,기타 정보 서비스업,7300,50,0.69,526,13.88,4533,1.61,"160
"
71460,위니아딤채 ,가정용 기기 제조업,3710,40,1.09,348,10.66,2186,1.7,"0
"
81660,휠라홀딩스 ,생활용품 도매업,38300,1300,3.51,2306,16.61,21274,1.8,"185
"
90350,노루페인트 ,기타 화학제품 제조업,11500,850,7.98,879,13.08,16315,0.7,"275
"
92730,네오팜 ,기타 화학제품 제조업,26000,100,0.39,2318,11.22,14343,1.81,"650
"
93320,케이아이엔엑스 ,"자료처리, 호스팅, 포털 및 기타 인터넷 정보매개 서비스업",53500,2000,3.88,3156,16.95,22393,2.39,"500
"
103140,풍산 ,1차 비철금속 제조업,32300,200,0.62,2567,12.58,51539,0.63,"600
"
104830,원익머트리얼즈 ,기초 화학물질 제조업,32200,600,1.9,2628,12.25,26857,1.2,"200
"
119860,다나와 ,소프트웨어 개발 및 공급업,27800,150,0.54,2387,11.65,10461,2.66,"600
"
122450,KMH ,텔레비전 방송업,8410,0,0,718,11.71,5865,1.43,"0
"
126640,화신정공 ,자동차 신품 부품 제조업,2155,70,3.36,138,15.62,2357,0.91,"30
"
192080,더블유게임즈 ,소프트웨어 개발 및 공급업,66700,700,1.06,6634,10.05,36923,1.81,"350
"



