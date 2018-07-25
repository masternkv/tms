<%-- 
    Document   : addCompany
    Created on : Feb 16, 2017, 7:55:36 AM
    Author     : NVerma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:url var="addAction" value="/saveSchoolAddress" ></c:url>
        <form:form method="POST" action="${addAction}">
      <table>
       <tr>
           <td><form:label path="company_Name">Company_Name":</form:label></td>
           <td><form:input path="Company_Name" value="${Company.company_Name}"/></td>
       </tr>
       <tr>
           <td><form:label path="company_Address">Company_Address:</form:label></td>
           <td><form:input path="company_Address" value="${Company.company_Address}"/></td>
       </tr>
       
       <tr>
          <td><form:label path="company_Mobile_No">company_Mobile_No:</form:label></td>
           <td><form:input path="company_Mobile_No" value="${Company.company_Mobile_No}"/></td>
       </tr>
        <tr>
          <td><form:label path="company_Id">company_Id:</form:label></td>
          <td><form:input path="company_Id" value="${Company.company_Id}" readonly="true"/></td>
       </tr>
       
       <tr>
        <td>&nbsp;</td>
         <td><input type="submit" value="SAVE"/></td>
         </tr>
   </table> 
  </form:form>
        <br/>
  <c:if test="${!empty Companies}">
 <table align="center" border="1">
  <tr>
   <th>Company ID</th>
   <th>Company Name</th>
   <th>Company Address</th>
   <th>Company Mobile No</th>
  </tr>

  <c:forEach items="${Companies}" var="comp_mst">
   <tr>
    <td><c:out value="${comp_mst.company_Id}"/></td>
    <td><c:out value="${comp_mst.company_Name}"/></td>
    <td><c:out value="${comp_mst.company_Address}"/></td>
    <td><c:out value="${comp_mst.company_Mobile_No}"/></td>
    <td><a href="<c:url value='/edit/${comp_mst.company_Id}'/>"> Edit</a></td>
            <td><a href="<c:url value='/remove/${comp_mst.company_Id}'/>"> Delete</a></td>
   </tr>
  </c:forEach>
 </table>
</c:if>
    </body>
</html>
