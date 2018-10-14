<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function(){
		/* ********************************************도시 및 팔도 선택 ajax 시작************************************************** */
		$('#paldoNcity').change(function(){
			$.ajax({
				url:'<c:url value="/planner/ajax/location.it"/>',
				type:'post',
				data:{paldoNcity:$('#paldoNcity').val()},
				dataType:'json',
				success:function(data){
					var optionString ="";
					//{d01:'C#', d02:'ASP.NET',d03:'WPF4'}
					$.each(data, function(key, value){						
						optionString +="<option value='"+key+"'>"+value+"</option>";
					});
					$('#paldoNcityColumn').html(optionString);
				},
				error:function(request, error){
					console.log('상태코드: ',request.status);
					console.log('서버로 부터 받은 데이터: ',request.responseText);
					console.log('에러: ',error);
				}
			});
		});
		/* ********************************************도시 및 팔도 선택 ajax 종료************************************************** */
		/* ********************************************여행일수 선택  *******************************************************/
		$('#planday option').on('click',function(){
			$('#plandate').text($(this).text());
		});
		/* ********************************************여행일수 선택  *******************************************************/
				
		/* ******************************************** 여행 일수 직접 입력 ************************************************ */
		$('#planday').change(function(){
			$('#planday option:selected').each(function(){
				if($(this).val()=='9'){//직접 입력 일 경우
					$('#plandaytext').val('');
					$('#plandaytext').attr("disabled", false);
				}
				else {//선택일경우
					$('#plandaytext').val($(this).val());
					$('#plandaytext').attr("disabled", true);
				}
			});
		});
		/* ******************************************** 여행 일수 직접 입력 ************************************************ */
		/* ******************************************** 여행 지역 직접 입력 ************************************************ */
		$('#paldoNcity').change(function(){
			$('#paldoNcity option:selected').each(function() {
				if($(this).val()=='aa'){//직접 입력 할경우					
					$('#paldotext').val('');
					$('#paldotext').attr("disabled", false);
					$('#paldoNcityColumn').attr("disabled", true);
				}
				else{
					$('#paldotext').attr("disabled", true);
					$('#paldoNcityColumn').attr("disabled", false);
				}
			});
		});
		/* ******************************************** 여행 지역 직접 입력 ************************************************ */
		
		$('#nextplan').click(function(){
			var plandaytext = $('#plandaytext').val();
			$('#paldoNcity option:selected').each(function() {
				if(plandaytext =='' && ($(this).val()=='aa' & $('#paldotext').val()=='')){
					alert('여행 일수 와 도시를 입력하지 않았습니다.');
				}
				else if(plandaytext ==''){				
					alert('여행 일수를 선택 및 입력하지 않았습니다.');
					
				}
				else if(!parseInt(plandaytext)){
					alert('여행 일수는 숫자만 입력해주세요');
					location.assign;
				}
				else {
					//alert($('#plandaytext').val()); //여행 일수 입력 전달
					//alert($('#paldoNcity option:selected').val());
					//alert($('#paldoNcityColumn option:selected').val());
					//alert($('#paldoNcityColumn option:selected').html());
					
					var days = $('#plandaytext').val(); // 여행일수 저장
					var areacode = $('#paldoNcity option:selected').val(); // 여행 지역 코드 저장					
					var areacodesub = $('#paldoNcityColumn option:selected').val(); // 여행 시군구 코드 저장
					var areacodename = $('#paldoNcity option:selected').html(); // 여행 지역 이름 저장
					var areacodesubname = $('#paldoNcityColumn option:selected').html(); // 여행 지역 시군구 이름 저장
					$('#locationday').attr("action", "<c:url value='/planner/plan/route.it?days="+days+"&areacode="+areacode+"&areacodesub="+areacodesub+"&areacodename="+areacodename+"&areacodesubname="+areacodesubname+"'/>");
				}
			});
		});
	});	
				/* console.log($(this).val()); */
	/* ************************************************************************************************************ */
	
</script>