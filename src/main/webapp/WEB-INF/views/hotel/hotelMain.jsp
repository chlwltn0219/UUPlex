<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../setting.jsp" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>UU HOTEL</title>
 
    <style>
    
    *{margin: 0;
    padding: 0;
    }
    
        html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, 
        big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, 
        dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, 
        canvas, details, embed,  figure, figcaption, footer, header, hgroup,  menu, nav, output, ruby, section, summary, time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            vertical-align: baseline;
        } 
 
        header {
            background-image:url("resources/hotelImages/hotel_background.png");
            background-size : 800px;
            color:#030066;
        }
 
        header li{
            float:left; list-style:none; margin-left:50px; font-size:.9em;
        }
 
        header a{
            color:#cccccc; text-decoration:none;
        }
 
        header .logo {
            padding: 50px 50px 0 400px;
            align:left;
        }
        
        header .hit_menu {
            overflow:hidden;
            padding:5px;
        }
 
        header .hit_menu ul {
            overflow:hidden; width:1200px; margin:0 auto 3px; 
        }
 
        header .hit_menu li {
           float:right; margin:0; text-align:center;
        }
 
        header .hit_menu a {
           display:block; color:#BDBDBD;
           font-size:1.1em; padding:10px 30px; border:1px solid #cccccc;
        }
 
        header .hit_menu li:first-child a {
            border-radius:0 10px 10px 0;
        }
 
        header .hit_menu li:last-child a {
            border-radius:10px 0 0 10px;
        }
 
        #content {
        	background:url("${resources}/hotelImages/dice.jpg") repeat;
            width:100%; height:600px;
        }
 
        #content .section1 {
            overflow:hidden;
            width:800px;
            margin:auto;
			padding-top:50px;
            /* padding-left:100px; */
        }
        
        #content .section1 .inputButton {
        	font-size:0.8em;
        }
        
        div.carousel img{
    		width: 90%;
        	margin: 0 auto;
        }
 
    </style>
 
</head>
<body>
    <header>
        <div class="logo"><img src = "${resources}/hotelImages/hotellogo.png" width="150px;"></div>
        <div class="hit_menu">
            <ul>
             <c:if test="${idCode == 101}">
                <li><a href="#">예약관리</a></li>
                <li><a href="hotel/roomList">객실관리</a></li>
                <li><a href="hotel/hotelInfo">호텔안내</a></li>
             </c:if>
             <c:if test="${idCode != 101}">
	             <li><a href="hotel/reservManage" >예약내역</a></li>
                <li><a href="hotel/reservation">객실예약</a></li>
                <li><a href="hotel/hotelInfo">호텔안내</a></li>
             </c:if>
            </ul>
        </div>
    </header>
    <div id="content">
    	<div class="section1">
            
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="${resources}/hotelImages/standard.jpg" alt="" width="700px">
      <div class="carousel-caption">
        <h3>스탠다드룸</h3>
    	<p><br><button type="button" class="btn btn-default btn-sm" onclick="location.href='/uuplex/hotel/reservation'">바로예약</button></p>
      </div>
    </div>
    <div class="item">
      <img src="${resources}/hotelImages/suite.jpg" alt="" width="700px">
      <div class="carousel-caption">
        <h3>스위트룸</h3>
    	<p><br><button type="button" class="btn btn-default btn-sm" onclick="location.href='/uuplex/hotel/reservation'">바로예약</button></p>
      </div>
    </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
        </div>
    </div>
  </body>
</html>
 