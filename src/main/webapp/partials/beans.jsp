<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: danielfarias
  Date: 5/22/23
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<section>
  <c:forEach items="${albums}" var="album">
    <div>
      <h2>${album.albumName}</h2>
      <p>Artist: ${album.artistName}</p>
      <p>Released: ${album.releaseYear}</p>
      <p>Genre: ${album.genre}</p>
      <p>Sales in Millions: ${album.sales}</p>
    </div>
  </c:forEach>
</section>
<hr>
<section>
  <c:forEach items="${quotes}" var="quote">
    <p>"${quote.content}" - ${quote.author.firstName} ${quote.author.lastName}</p>
  </c:forEach>
</section>
</body>
</html>

</body>
</html>
