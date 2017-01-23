<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>UU HOTEL</title>

    <style>
    
    @import url(http://fonts.googleapis.com/earlyaccess/jejumyeongjo.css);
    
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
			font-family: 'Jeju Myeongjo', serif;
            vertical-align: baseline;
        } 

        header {
            background-color:#4B0025; color:#030066;
        }

        header li{
            float:left; list-style:none; margin-left:50px; font-size:.9em;
        }

        header a{
            color:#cccccc; text-decoration:none;
        }

        header .logo {
            padding: 0px 0px 0px 50px;
            align:left;
            font-size: 2em;
            font-weight: bolder;
        }
        
        header .hit_menu {
            overflow:hidden;
            padding:5px;
        }

        header .hit_menu ul {
            overflow:hidden; width:1000px; margin:0 auto 3px; 
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
            width:100%; height:550px;
        }

        #content .section1 {
            overflow:hidden;
            width:1000px;
            margin:auto;
            padding-top:50px;
            padding-left:100px;
        }
        
        #content .section1 .inputButton {
        	font-size:0.8em;
        }

        #content .section1 div {
            height:400px; float:left; text-align:center;
            border:0px solid #cccccc;
            /* box-sizing:border-box; */
        }

        #content .slide_banner {
        	padding-right: 5px;
        	font-weight: bolder;
        }
        
        #content .side_banner {
        	padding-left: 5px;
        	font-weight: bolder;
        }

        /* footer {
            width:100%; height:170px; margin:auto; background-color:#4B0025; color:#cccccc;
            text-align:center; line-height:50px;
            clear:both; border:0;
        } */

    </style>

</head>
<body>
    <header>
        <div class="logo"><img src = "${resources}/hotelImages/hotellogo.png" width="150px;"></div>
        <div class="hit_menu">
            <ul>
                <li><a href="#" >예약관리</a></li>
                <li><a href="hotel/roomAddForm" >객실등록</a></li>
                <li><a href="hotel/roomList" >객실관리</a></li>
                <li><a href="hotel/roomInfo" >객실정보</a></li>
            </ul>
        </div>
    </header>
    <div id="content">
        <div class="section1">
            <div class="slide_banner"><img src = "${resources}/hotelImages/standard.jpg" width="400px" height="300px"><br><br> 스탠다드룸 </div>
            <div class="side_banner"><img src = "${resources}/hotelImages/suite.jpg" width="400px" height="300px"><br><br> 스위트룸 </div>
        </div>
    </div>
  </body>
</html>