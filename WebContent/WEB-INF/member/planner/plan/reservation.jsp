<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
/* 1. Menu settings */
.menu,
.menu li {
  margin: 0;
  padding: 0;
}
.menu a {
  font-weight: 700;
  padding: .75em 1.25em;
  transition: background .25s ease-in-out;
}
.menu li {
  position: relative;
  border-width: 0 0 1px;
  border-style: solid;
}
.menu li:last-child {
  border-width: 0;
}
.menu li,
.menu a {
  display: block;
} 

/* 2. Navigation aligned right-to-left */
.nav--right {
  text-align: right;
}

/* 3. Screen settings */
@media only screen and (min-width: 1024px) {
  /* 3.1 Flex-display of `.menu` for desktop */
  .menu {
    display: flex;
    flex-flow: row wrap;
  }
   /* 3.1.1 Border adjustments for menu-items */
  .menu li {
    border-width: 0 1px 0 0;
  }

  /* 3.2 Navigation aligned to the center */
  .nav--center .menu {
    justify-content: center;
  }

  /* 3.3 Navigation aligned right-to-left */
  .nav--right .menu {
    justify-content: flex-end;
  }
}

/* Theming */
.nav {
  background-color: #222;
}

.menu li {
  border-color: #2a2a2a;
}
.menu li a {
  color: rgba(255, 255, 255, 0.75);
}
.menu li a:hover, .menu li a:active, .menu li a:focus {
  color: rgba(255, 255, 255, 0.9);
  background-color: black;
}

/* Green */
.nav--green {
  background-color: #1abc9c;
}

.nav--green .menu li {
  border-color: #1cc9a7;
}
.nav--green .menu li a {
  color: rgba(255, 255, 255, 0.75);
}
.nav--green .menu li a:hover, .nav--green .menu li a:active, .nav--green .menu li a:focus {
  color: rgba(255, 255, 255, 0.9);
  background-color: #16a085;
}

.w3bits-labs { width: 468px; height: 60px; margin: 1.5em 0 0}
</style>



<div class="nav nav--center" style="margin-top: 60px; width: 100%; height: 40px; float: right;">
	<nav class="nav nav--green lab-nav--light">
		<ul class="menu text-center">
			<li class="menu-item" style="width: 15%;"><a href="#">저 장</a></li>
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/route.it'/>">루 트</a></li>			
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/schedule.it'/>">일 정</a></li>
			<li class="menu-item" style="width: 15%;"><a href="<c:url value='/planner/plan/reservation.it'/>">예 약</a></li>
			<li class="menu-item" style="width: 15%;"><a href="#">즐겨찾기</a></li>			
		</ul><!-- .menu -->
	</nav><!-- .nav -->
</div>

<div class="container">
	<div class="row text-center" style="height: 650px; text-align:center; background-color: pink;">
		<br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<br/><br/><br/><br/><br/><br/><br/><br/><br/>
		흠.. 예약페이지 인데 어떻게 만들까나...
	</div>
</div>
