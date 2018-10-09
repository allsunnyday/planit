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
					$('#plandaytext').attr("disabled", true);
				}
			});
		});
		/* ******************************************** 여행 일수 직접 입력 ************************************************ */
		/* ******************************************** 여행 지역 직접 입력 ************************************************ */
		$('#paldoNcity').change(function(){
			$('#paldoNcity option:selected').each(function() {
				console.log($(this).val());
				if($(this).val()=='paldoNcity99'){//직접 입력 할경우					
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
		
	});	
	
	$
	/* ************************************************************************************************************ */
	
</script>