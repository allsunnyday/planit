<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(function(){
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
	});
	
	//document.getElementById('hide')
</script>