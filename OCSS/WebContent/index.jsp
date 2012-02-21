<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${empty login }">
	<tiles:insertDefinition name="main.page"/>
</c:if>

<c:if test="${login.powerList==1}">
	<tiles:insertDefinition name="ocssMainSeller.page"/>
</c:if>

<c:if test="${login.powerList==2}">
	<tiles:insertDefinition name="main.page"/>
</c:if>

<c:if test="${login.powerList==3}">
	<tiles:insertDefinition name="ocssMainAdmin.page"/>
</c:if>