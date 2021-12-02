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
    String fileName = "11월10일추천.csv";

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
,,,,,,,,,,,,,,업종
400,롯데손해보험,1840,1831,1865,1810,-23.58,-78.0322307,-1.110692416,21.23,21.23,16.94,-18.44,"3.89
",보험
3850,보령제약,14050,14214,14550,14000,32.08,437.967581,-2.664451827,-12.04,24.14,21.32,-3.53,"3.36
",의약품
5740,크라운해태홀딩스,8640,8707,8870,8590,5.09,1697.445972,0.242843511,20.96,20.96,13.8,10.47,"8.45
",기타금융
5830,DB손해보험,57900,58026,58700,57500,8.16,7095.588235,0.374483708,21.79,21.79,25.58,24.36,"7.42
",보험
9580,무림P&P,4055,4087,4190,4055,-15.55,-260.7717042,-0.699505173,22.23,22.23,-10.95,-64.52,"2.76
",종이목재
10770,평화홀딩스,4675,4706,4750,4670,-3.34,-1399.700599,-0.166583541,20.05,20.05,16.7,-32.92,"-16.20
",운수장비
17900,광전자,3010,3038,3105,3000,-11.67,-257.9263068,-0.550991501,21.18,21.18,35.55,740.39,"11.19
",전기전자
34830,한국토지신탁,2225,2232,2295,2215,9.03,246.4008859,0.395879,22.81,22.82,20.84,-4.23,"7.01
",기타금융
37560,LG헬로비전,6670,6609,6750,6540,-1.66,-4018.072289,-0.074673864,22.23,22.23,18.33,21.26,"0.34
",서비스업
227840,현대코퍼레이션홀딩스,12400,12415,12600,12350,6.37,1946.624804,0.27014419,23.58,23.58,25.89,16.38,"-23.58
",유통업
42600,새로닉스,32350,33044,34200,32200,-134.8,-239.9851632,-5.531391055,24.37,24.38,-168.83,-73.16,"10.04
",IT부품
49630,재영솔루텍,1040,1047,1075,1035,-16.11,-64.55617629,-0.720483005,22.36,23.36,-96.07,-117.49,"23.85
",IT부품
52710,아모텍,30750,30478,31100,30000,-27.58,-1114.938361,-1.338834951,20.6,20.6,-49.89,-288.36,"-6.32
",IT부품
64090,에프앤리퍼블릭,2370,2273,2370,2245,-0.44,-5386.363636,0.001050445,-418.87,21.24,21.24,35.8,"-29.65
",유통
71280,로체시스템즈,4900,4921,5050,4885,9.95,492.4623116,0.464736105,21.41,21.41,19.44,9.74,"-37.10
",반도체
84650,랩지노믹스,23800,24083,25100,23500,6.32,3765.822785,0.328653146,19.23,22.5,27.6,17.84,"43.86
",기타서비스
115570,스타플렉스,5500,5431,5660,5110,-2.28,-2412.280702,-0.093099224,24.49,21.6,83.91,-19.52,"11.73
",화학
159580,제로투세븐,12200,12161,12500,12000,-449.5,-27.14126808,-20.97526832,21.43,21.43,3.47,80.82,"-16.34
",유통
230240,에치에프알,22350,22239,22550,22050,-14.1,-1585.106383,-0.538579068,26.18,20.64,36.8,38.71,"68.61
",통신장비
241520,DSC인베스트먼트,5880,5961,6110,5800,6.76,869.8224852,-0.361884368,-18.68,24.4,27.37,21.23,"79.93
",금융
298060,에스씨엠생명과학,18750,19136,20050,18700,-21.36,-877.8089888,-0.612209802,34.89,23.08,23.08,-18.27,"55.45
",제약



