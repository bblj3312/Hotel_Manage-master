<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>菜品介绍</title>
    <link rel="stylesheet" href="../views/static/common/layui/css/layui.css">
    <link rel="stylesheet" href="../views/static/admin/css/style.css">
    <script src="../views/static/common/layui/layui.js"></script>
    <script src="../views/static/common/jquery-3.3.1.min.js"></script>
    <script src="../views/static/common/vue.min.js"></script>
</head>
<body>
<div id="app">
    <!--顶栏-->
    <header>
        <div style="float:left;"></div>
        <div style="float: right">
        </div>
    </header>

    <div class="main" id="app">
        <!--左栏-->
        <div class="left">
            <ul class="cl" >
                <!--顶级分类-->
                <li v-for="vo,index in menu" :class="{hidden:vo.hidden}">
                    <a href="javascript:"  :class="{active:vo.active}"  @click="onActive(index)">

                        <span v-text="vo.name"></span>
                        <i class="layui-icon arrow" v-show="vo.url.length==0">&#xe61a;</i> <i v-show="vo.active" class="layui-icon active">&#xe623;</i>
                    </a>
                    <!--子级分类-->
                    <div v-for="vo2,index2 in vo.list">
                        <a href="javascript:;" :class="{active:vo2.active}" @click="onActive(index,index2)" v-text="vo2.name"></a>
                        <i v-show="vo2.active" class="layui-icon active">&#xe623;</i>
                    </div>
                </li>
            </ul>
        </div>
        <!--右侧-->
        <div class="right">
                <div class="layui-row">
                    <fieldset class="layui-elem-field layui-field-title">
                        <legend>菜品介绍</legend>
                    </fieldset>
                </div>

            <%--            表格 --%>
            <table class="layui-table layui-form">

                <thead>
                <tr>
                    <th>菜品编号</th>
                    <th>菜品名称</th>
                    <th>价格</th>
                    <th>类型</th>
                    <th>描述</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${list}" var="m">
                    <tr class="id36567">
                        <td>${m.id}</td>
                        <td style="font-family: 宋体;font-weight: bold">${m.name}</td>
                        <td>${m.price}</td>
                        <td>${m.m_Type}</td>
                        <td>${m.text}</td>
                        <td>
                            <a href="javascript: if(window.confirm('是否确认删除？'))
                {window.location.href='${pageContext.request.contextPath}/meal/delete?id=${m.id}'}"  >删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/meal/update1?id=${m.id}" > 修改</a></td>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>
<script src="../views/static/admin/js/config.js"></script>
<script src="../views/static/admin/js/script.js"></script>
</body>
</html>
