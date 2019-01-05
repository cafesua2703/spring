<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Auto Test</title>
    <spring:url value="/resources/core/css/styles.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
    <spring:url value="/resources/core/js/index.js" var="coreJs" />
    <spring:url value="/resources/core/js/bootstrap.min.js" var="bootstrapJs" />
    <script src="${coreJs}"></script>
    <%--<script src="${bootstrapJs}"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


    <%--<link rel="stylesheet" type="text/css" href="../../../../resources/core/css/styles.css" />
    <script src="../../../../resources/core/js/index.js"></script>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.7.7/xlsx.core.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xls/0.7.4-a/xls.core.min.js"></script>
    <script src="jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script src="jquery.scrollTo-1.4.2/jquery.scrollTo-min.js"></script>
    <!-- Internet Explorer HTML5 enabling script: -->
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<%@include file='template/header.html'%>
<section id="page"> <!-- Defining the #page section with the section tag -->

    <!-- Article 1 start -->
    <div class="line"></div>  <!-- Dividing line -->
    <article id="article1"> <!-- The new article tag. The id is supplied so it can be scrolled into view. -->
        <h2>Run test:</h2>
        <input class="button" type="file" id="excelfile" />
        <input class="button" type="button" id="viewfile" value="Export To Table" onclick="ExportToTable()" />
        <input class="button" type="button" id="clear" value="Clear" onclick="clearTableBody()" />
        <input class="button" type="button" id="save" value="Save" onclick="saveTable()" />
        <br />
        <br />
        <table id="exceltable">
        </table>
        <div class="line">
            <form method="post" action="test">
                <input type="radio" name="name" id="sikuli" value="sikuli" checked="checked"> Sikuli<br>
                <input type="radio" name="name" id="selenium" value="selenium" > Selenium<br>
                <br>
                <input class="button" type="submit" id="btnTest" value="Test" />
            </form>
        </div>
    </article>
    <!-- Article 1 end -->

</section> <!-- Closing the #page section -->
<%@include file='template/footer.html'%>
</body>

</body>
</html>