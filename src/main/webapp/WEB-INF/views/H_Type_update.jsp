<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>状态更新</title>
    <link rel="stylesheet" href="../views/static/common/layui/css/layui.css">
    <link rel="stylesheet" href="../views/static/admin/css/style.css">
    <script src="../views/static/common/layui/layui.js"></script>
    <script src="../views/static/common/jquery-3.3.1.min.js"></script>
    <script src="../views/static/common/vue.min.js"></script>

    <style type="text/css">
        .divForm{
            position: absolute;/*绝对定位*/
            width: 300px;
            height: 200px;

            border: 1px solid #9ef6ef;
            top: 50%;
            left: 50%;
            margin-top: -150px;
            margin-left: -150px;
        }
    </style>

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

            <div class="divForm">

            <fieldset class="layui-elem-field layui-field-title">
                <legend>状态更新</legend>
            </fieldset>

            <form class="layui-form " action="${pageContext.request.contextPath}/home/type2" >

                <div class="layui-form-item">
                    <label class="layui-form-label">状态</label>
                    <div class="layui-input-block">
                        <div class="layui-input-inline">
                            <input type="radio" name="State" value="空房" title="空房" checked>
                            <br>
                            <input type="radio" name="State" value="已入住" title="已入住">
                            <br>
                            <input type="radio" name="State" value="未打扫" title="未打扫" >
                        </div>
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-input-block">
                        <input type="submit" class="layui-btn layui-btn-sm" value="确认修改" />
                        <input type="button" class="layui-btn layui-btn-sm layui-btn-danger"  value="取消修改" onclick="javascript:history.go(-1);"/>
                        <input name="id" value="${h.id}" type="hidden"/>
                    </div>
                </div>

            </form>

            </div>
        </div>
    </div>
</div>
<script src="../views/static/admin/js/config.js"></script>
<script src="../views/static/admin/js/script.js"></script>
</body>
</html>
