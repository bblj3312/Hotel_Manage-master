<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>会员列表</title>
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
                    <a href="javascript:;"  :class="{active:vo.active}"  @click="onActive(index)">

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
                        <legend>会员列表</legend>
                    </fieldset>
                    <%--                搜索--%>
                    <form method="post"   action="${pageContext.request.contextPath}/vip/find" >
                        <div  class="layui-col-lg4" style="float: right">
                            <div>
                                <span style="color: red; font-weight: bold" > &nbsp;${error}</span>
                            </div>
                            <div class="layui-input-inline" style="width:320px ;float: left" >
                                <input type="text" name="findByPhone" placeholder="输入手机号进行查询" class="layui-input key" >
                            </div>
                            <div style="float: right">
                                <button type="submit" class="layui-btn layui-btn-warm" style="width: 100px">查询</button>
                            </div>
                        </div>
                    </form>
                </div>

            <%--            表格 --%>
            <table class="layui-table layui-form">

                <thead>
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>身份证号</th>
                    <th>手机号</th>
                    <th>会员级别</th>
                    <th>开通时间</th>
                    <th>到期时间</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${list}" var="v">
                    <tr class="id36567">
                        <td>${v.id}</td>
                        <td style="font-family: 宋体;font-weight: bold">${v.name}</td>
                        <td>${v.sex}</td>
                        <td>${v.card}</td>
                        <td>${v.phone}</td>
                        <td>${v.v_Type}</td>
                        <td>${v.startTime}</td>
                        <td>${v.endTime}</td>
                        <td>
                            <a href="javascript: if(window.confirm('是否确认删除？'))
                {window.location.href='${pageContext.request.contextPath}/vip/delete?id=${v.id}'}"  >删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/vip/update1?id=${v.id}" > 修改</a></td>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </div>
</div>

<script>
    $("td:contains('初级会员')").css("color","rgb(8,57,163)");
    $("td:contains('中级会员')").css("color","rgba(232,181,34,0.93)");
    $("td:contains('高级会员')").css("color","#e52b1b");
</script>

<script src="../views/static/admin/js/config.js"></script>
<script src="../views/static/admin/js/script.js"></script>
</body>
</html>
