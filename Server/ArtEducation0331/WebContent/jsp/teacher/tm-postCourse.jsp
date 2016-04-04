<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta charset="UTF-8">
  <title>教师管理</title>
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="http://cdn.bootcss.com/jqueryui/1.11.4/jquery-ui.css" rel="stylesheet">
  <link href="../css/sidenav.css" rel="stylesheet">
  <link href="../css/header.css" rel="stylesheet">
  <link href="../css/course.css" rel="stylesheet">
</head>
<body ng-app="tmApp">
<header class="container-fluid">
  <div class="row">
    <div class="col-md-6"><a href="index.html"><img class="logo" src="" alt="website logo"></a>
      <p class="slogan">艺宝,您身边的艺术教师!</p>
    </div>
    <div class="col-md-6">
      <!--<div class="login">
        <a href="signup/signup.html">教师入驻</a>
        <a href="#" class="ssin">教师登录</a>
        <a href="#" class="ssin">机构登录</a>
      </div>-->
      <div class="login">
        <a href="">登出</a>
      </div>
      <div class="buttons">
        <a href="../index.html#main" class="btn" data-toggle="tab">首页</a>
        <a href="../index.html#activities" class="btn" data-toggle="tab">活动</a>
        <a href="../index.html#help" class="btn" data-toggle="tab">帮助</a>
        <a href="../index.html#contactus" class="btn" data-toggle="tab">联系我们</a>
      </div>
    </div>
  </div>
</header>
<div class="container">
  <div class="row main">
    <div class="col-md-3 sidebar">
      <div class="info">
        <img class="avatar" src="../img/ph.png" alt="touxiang">
        <p class="usrname">username</p>
      </div>
      <div class="side-nav">
        <a href="tm-profile.jsp">编辑账户信息</a>
        <a href="tm-identity.jsp">编辑认证信息</a>
        <a href="#" class="active">发布课程</a>
        <a href="tm.jsp">我的课程</a>
        <a href="tm-historyCourse.jsp">历史课程</a>
      </div>
    </div>
    <div class="col-md-7 col-md-offset-1">
      <div class="col-md-12">
        <p class="bg-warning">以下内容全部必填</p>
        <form name="courseForm" action="" method="post">
          <div class="form-group">
            <label for="courseName">课程名称</label>
            <input type="text" class="form-control" name="courseName" id="courseName" required>
          </div>
          <div class="form-group">
            <label for="courseDesc">课程描述</label>
            <textarea class="form-control" name="courseDesc" id="courseDesc" cols="30" rows="10" required></textarea>
          </div>
          <div class="row">
            <div class="col-md-4">
              <p style="font-weight: bold;font-size: 20px;margin-top: 50px;text-align: center;">选择时间</p>
            </div>
            <div class="col-md-8">
              <div class="form-group">
                <label for="courseStartTime">课程开始时间</label>
                <input type="text" name="courseStartTime" id="courseStartTime" ui-date required/>
              </div>
              <div class="form-group">
                <label for="courseEndTime">课程结束时间</label>
                <input type="text" name="courseEndTime" id="courseEndTime" ui-date required/>
              </div>
              <div class="form-group">
                <label for="classTime">每周上课时间</label>
                <input type="text" name="classTime" id="classTime" required/>
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="teachAddress">上课地点</label>
            <input type="text" class="form-control" name="teachAddress" id="teachAddress" required>
          </div>
          <div class="form-group">
            <label for="lessonNum">课时数</label>
            <input type="text" class="form-control" name="lessonNum" id="lessonNum" required>
          </div>
          <div class="form-group">
            <label for="teachMethod">授课方式</label>
            <select name="teachMethod" id="teachMethod" class="form-control" required>
              <option value="2001" selected>上门授课</option>
              <option value="2002">机构教室</option>
            </select>
          </div>
          <div class="form-group">
            <label for="teachMethod">是否支持试听</label>
            <select name="listenTest" id="listenTest" class="form-control" required>
              <option value="3001" selected>不支持试听</option>
              <option value="3002">支持试听</option>
            </select>
          </div>
          <div class="form-group">
            <label for="coursePrice">课程价格(元)</label>
            <input type="text" class="form-control" name="coursePrice" id="coursePrice" required>
          </div>
          <div class="form-group">
            <label for="mainImage">一张与课程相关的图片</label>
            <img src="../img/ph.png" alt="" style="display: block;margin: 5px;"><!--课程图片回显-->
            <input type="file" name="mainImage" id="mainImage" required>
          </div>
          <div class="form-group">
            <label for="planStuNum">计划招生人数</label>
            <input type="text" class="form-control" name="planStuNum" id="planStuNum" required>
          </div>
          <button class="btn btn-danger" onclick="document.courseForm.action='/ArtEducation/teacher/publishCourse.action';document.courseForm.submit()">创建课程</button>
          <button class="btn btn-danger" onclick="document.courseForm.action='/ArtEducation/teacher/editCourse.action';document.courseForm.submit()">修改课程</button>
        </form>
      </div>
    </div>
  </div>
</div>
<footer class="container-fluid" style="height: 100px;background-color: #4d99f5;text-align: center;">
  <div class="row" style="color:#fff;">
    &copy底部信息
  </div>
</footer>
<!--<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>-->
<!--<script src="http://cdn.bootcss.com/jqueryui/1.11.4/jquery-ui.js"></script>-->
<!--<script src="http://cdn.bootcss.com/angular.js/1.5.0/angular.min.js"></script>-->
<!--<script src="http://cdn.bootcss.com/angular.js/1.5.0/angular-animate.min.js"></script>-->
<!--<script src="http://cdn.bootcss.com/angular-ui-router/1.0.0-alpha0/angular-ui-router.min.js"></script>-->
<!--<script src="http://cdn.bootcss.com/angular.js/1.5.0/angular-resource.min.js"></script>-->
<!--<script src="http://cdn.bootcss.com/angular-ui-date/1.0.0-beta.3/date.min.js"></script>-->
<!--<script src="../js/tmApp.js"></script>-->
</body>
</html>