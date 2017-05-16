<html>
<head>
    <meta charset="UTF-8">
    <title>StartPage</title>
    <link rel="stylesheet" href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">

    <link href="css/common/common.css" rel="stylesheet">
    <link href="css/start/start.css" rel="stylesheet">

</head>
<body>
<div class="parent">
    <div class="menu">

        <form action="markWithFreemarker" method="get">
            <input class="btn btn-primary" type="submit" name="viewAllUsers" value="Построено с помощью freemarker">
        </form>

        <form action="markWithJS" method="get">
            <input class="btn btn-primary" type="submit" name="viewAllUsers" value="Построено с помощью JS">
        </form>

    </div>
</div>


</body>
</html>