<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>房间信息</title>
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
            <fieldset class="layui-elem-field layui-field-title">
                <legend>房间信息</legend>
            </fieldset>

                <div class="layui-form-item">
                    <label class="layui-form-label">房间号</label>
                    <div class="layui-input-block">
                        <input type="text" name="Price" required value="${home.num}" style="font-size: 15px" autocomplete="off" class="layui-input" readonly="readonly">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">房间类型</label>
                    <div class="layui-input-block">
                        <input type="text" name="Price" required  value="${home.h_Type}"  style="font-size: 15px" autocomplete="off" class="layui-input" readonly="readonly">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">价格</label>
                    <div class="layui-input-block">
                        <input type="text" name="Price" required  value="${home.price}" style="font-size: 15px" autocomplete="off" class="layui-input" readonly="readonly">
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">状态</label>
                    <div class="layui-input-block">
                        <input type="text" name="Price" required  value="${home.state}" style="font-size: 15px" autocomplete="off" class="layui-input" readonly="readonly">
                    </div>
                </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">房间描述</label>
                        <div class="layui-input-inline">
                    <textarea name="Text" class="layui-input"  style="height:250px ;width: 600px" autocomplete="off"  required readonly="readonly">${home.text}
                    </textarea>
                        </div>
                    </div>

        </div>
    </div>
</div>
<script src="../views/static/admin/js/config.js"></script>
<script src="../views/static/admin/js/script.js"></script>
</body>
</html>
