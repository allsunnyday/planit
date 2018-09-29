<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.mypage-content {
	margin-top: 100px;
	/* border: 3px black solid; */
}

#mypage {
	display: inline-block;
	/*  border: 3px black solid;  */
}

#MY-edit {
	display: inline-block;
	/*  border: 3px black solid;  */
	float: right;
	padding-top: 30px;
}

#MY-edit-button {
	border: 1.5px rgb(53, 181, 157) solid;
	/*  background-color: lightgray; */
	color: rgb(53, 181, 157);
	align: right;
}

#MY-first {
	margin-top: 20px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 100px;
}

#MY-first-1, #MY-first-2 {
	/* 	//height:15%; */
	/* border: 1px purple solid; */
	margin-top: 10px;
}

#MY-first-1-pictur, #MY-first-1-self {
	/* border: 1px pink solid; */
	font-size: 1.5em;
	height: 150%;
}


#MY-user-picture img {
	/* position: absolute; top:0; left: 0;
width: 100%;
height: 100%; */
	max-width: 100%;
	max-height: 100%;
	margin: auto;
	display: block;
}
#MY-second-content img{
position: absolute; top:0; left: 0;
width: 100%;
height: 100%;
}
#MY-user-picture {
	width: 150px;
	height: 150px;
	border-radius: 50%;
	border: 2px gray solid;
}

#MY-first-2-inform {
	display: inline-block;
	border-radius: 10px;
	border: 2px gray solid;
	background-color: white;
}

#MY-first-2-Like {
	display: inline-block;
	border-radius: 10px;
	border: 3px gray dotted;
	background-color: white;
}

#MY-first-2-inform ul, #MY-first-2-Like ul {
	list-style: none;
	display: inline;
}

#MY-first-2-planer, #MY-first-2-review {
	/* border: 1px pink solid; */
	border-right: 1px lightgray solid;
	display: inline-block;
}

#MY-first-2-zzim {
	display: inline-block;
}

.MY-first-2-ul li:first-child {
	font-size: 1.0em;
	font-weight: bold;
}

.MY-first-2-ul li:last-child {
	font-weight: lighter;
	font-size: 3.0em;;
	color: rgb(109, 213, 193);
	text-indent: 60px;
}

#MY-first-2-Like {
	/* background-color:white; */
	margin-top: 20px;
}

#ulLike li:nth-child(n + 2) {
	padding-top: 5px;
	font-weight: lighter;
	font-size: 1.2em;;
	color: rgb(109, 213, 193);
	text-indent: 10px;
	display: inline-block;
}

#MY-second, #MY-third, #MY-forth, #MY-fifth {
	margin-top: 60px;
	padding-top: 10px;
	border-top: 2px rgb(53, 181, 157) solid;
	margin-bottom: 130px;
}

#MY-second-content div, #MY-third-content div, #forth-content div,
	#MY-fifth-content div {
	margin-top: 20px;
	height: 170px;
}
</style>

<div class="container">

	<div class="mypage-content">
		<div class="mypagemenu">
			Q&A

	</div>
	<!--  end mypage-content -->

</div>
<!--  end container -->