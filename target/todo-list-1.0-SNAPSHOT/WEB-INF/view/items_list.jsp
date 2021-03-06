<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.utils.Mappings" %>

<!DOCTYPE html>
<html>
    <head>
        <title> Items list </title>
    </head>
    <body>
        <div align="center">
        <c:url var="addUrl" value="${Mappings.ADD_ITEM}"/>
        <h2><a href="${addUrl}">Add item</a></h2>

            <table border="1" cellpading="1">
                <caption><h2> Todo Items </h2></caption>
                <tr>
                    <th> Title </th>
                    <th> Deadline </th>
                    <th> View </th>
                    <th> Edit </th>
                    <th> Delete </th>

                </tr>
                <c:forEach var="item" items="${todoData.items}">
                <c:url var="viewUrl" value="${Mappings.VIEW_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>
                <c:url var="editUrl" value="${Mappings.ADD_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>

                <c:url var="deleteUrl" value="${Mappings.DELETE_ITEM}">
                    <c:param name="id" value="${item.id}"/>
                </c:url>
                    <tr>
                        <td><c:out value="${item.title}"></c:out></td>
                        <td><c:out value="${item.deadLine}"></c:out></td>
                        <td><a href="${viewUrl}">View</a></td>
                        <td><a href="${editUrl}">Edit</a></td>
                        <td><a href="${deleteUrl}">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>