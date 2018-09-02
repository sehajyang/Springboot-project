<%@ include file="header.jsp" %>
 
<div class="container">
    <table class="table table-hover">
        <tr>
            <th>No</th>
            <th>_</th>
            <th>name</th>
            <th>price</th>
        </tr>
          <c:forEach var="list" items="${plist}">
              <tr onclick="location.href='/product/${list.product_id}'">
              	  <td>${list.product_id}</td>
               <td><img src="/resources/img/${list.img_name}.jpg" alt="${list.img_name}"></td>
                  <td>${list.product_name}</td>
                  <td>${list.product_price}</td>
              </tr>
          </c:forEach>
          
    </table>
</div>
<%@ include file="bootstrap.jsp" %>
</body>
</html>