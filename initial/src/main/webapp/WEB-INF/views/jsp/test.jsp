<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Reprot Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <%--<link rel="stylesheet" type="text/css" href="../resources/core/js/styles.css" />--%>
        <spring:url value="/resources/core/css/styles.css" var="coreCss" />
        <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
        <link href="${bootstrapCss}" rel="stylesheet" />
        <link href="${coreCss}" rel="stylesheet" />
        <spring:url value="/resources/core/js/index.js" var="coreJs" />
        <spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
        <script src="${coreJs}"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Internet Explorer HTML5 enabling script: -->
        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <%@include file='template/header.html'%>
    <body>
    <script type="text/javascript">
        $(document).ready(function(){
            displayObj();
        });
        function displayImage(){
            var textReport = $("#listReport").val().replace('[','').replace(']','').replace(' ','');
            var textImage = $("#listImage").val().replace('[','').replace(']','').replace(' ','');
            var listReport = [];
            var listImage = [];
            listImage = textImage.split(',');
            var listReport = textReport.split(',');
            var i = 0;
            $.each(listReport, function(index1, value1){
                $("#image").append(value1+'<br>');
                $.each(listImage, function(index, value){
                    //var name = value.split('_')[0];
                    var img = './resources/Report/Screenshot/'+value1+'/'+value;
                    $("#image").append($('<img>',{id:value,src:img,alt:value, style:"width:50%;height:auto;"}));
                    $("#image").append('<br>');
                });
            });

        }
        function displayObj(){
            var obj = $('#obj').text();
            obj = JSON.parse(obj);
            $.each(obj, function(k1, v1){
                //var list = v1.toArray();
                $("#result").append(k1+'<br>');
                $.each(v1, function(k2, v2){
                    var img = './resources/Report/Screenshot/'+k1+'/'+v2;
                    $("#result").append($('<a>',{href:img,target: "_blank", alt:v2, title:v2, html: $('<img>',{id:v2,src:img,alt:v2, style:"width:20%;height:auto;"})}));
                    //$("#result").append('<br>');
                });
                $("#result").append('<br><br>');
            });
        }
    </script>
    <section id="page">
        <div class="line"></div>
        <article id="article1">
            <h2>Test : ${user}!</h2>
        <p>Reprot:
            <h3>
                    <a target="_blank" href="./resources/Report/${htmlname}">${htmlname}</a>
                </h3>
            </p>
        <p>Screenshot:<div style="display:none" id="obj">${objImage}</div>
        Result: <div id="result"></div>
        <div id="image"></div>
        </p>
        </article>
    </section>
	<hidden id="bw" value="${bw}"></hidden>
	<hidden id="bw1" value="${bw1}"></hidden>
	<hidden id="absolutePath" value="${absolutePath}"></hidden>
    <input type="hidden" id="listImage" value="${listImage}"/>
    <input type="hidden" id="listImage2" value="${listImage2}"/>
    <input type="hidden" id="listReport" value="${listReport}"/>
    <input type="hidden" id="objImage" data="${objImage}"/>
    </body>
    <%@include file='template/footer.html'%>

</html>
