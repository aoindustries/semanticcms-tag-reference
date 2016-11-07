<%--
semanticcms-tag-reference - Generates tag library descriptor documentation for .tld files.
Copyright (C) 2016  AO Industries, Inc.
    support@aoindustries.com
    7262 Bull Pen Cir
    Mobile, AL 36695

This file is part of semanticcms-tag-reference.

semanticcms-tag-reference is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

semanticcms-tag-reference is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with semanticcms-tag-reference.  If not, see <http://www.gnu.org/licenses />.
--%>
<%@ page language="java" pageEncoding="UTF-8" session="false" %>
<%@ taglib prefix="ao" uri="https://aoindustries.com/ao-taglib/" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="core" uri="https://semanticcms.com/core/taglib/" %>
<%@ taglib prefix="section" uri="https://semanticcms.com/section/taglib/" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<%--
The view of tag summaries at at /path/taglib.tld/tags

Arguments:
	arg.tldRef      The PageRef for the TLD file itself
	arg.tldDoc      The XML DOM document for the .tld file
--%>
<c:set var="tldRef" value="${arg.tldRef}" />
<c:set var="tldDoc" value="${arg.tldDoc}" />
<x:set var="taglibElem" select="$tldDoc/taglib" />
<core:page
	book="${tldRef.bookName}"
	path="${tldRef.path}/tags"
	title="Tag Summary"
	shortTitle="Tags"
	dateModified="${ao:getLastModified(tldRef.servletPath)}"
>
	<ao:include
		page="tag-summary.inc.jsp"
		arg.tldRef="${tldRef}"
		arg.tldDoc="${tldDoc}"
	/>
</core:page>
