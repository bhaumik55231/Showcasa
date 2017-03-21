<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>


<c:set var="list" value="${sessionScope.loadcity}"></c:set>
<c:set var="len" value="${function:length(list) }"></c:set>

[<c:forEach items="${sessionScope.loadcity}" var="i" varStatus="j">{"cityId":"${i.city_id }","cityName":"${i.city_name }"}
<c:if test="${len ne j.count }">,</c:if></c:forEach>]

