<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function check_all() {
		if (my_form.checkall.checked == true) {
			for (i = 0; i < my_form.mycheck.length; i++) {
				my_form.mycheck[i].checked = true;
			} 
		} else{
			for (i = 0; i < my_form.mycheck.length; i++) {
				my_form.mycheck[i].checked = false;
			}
		}
	}
	function count_check() {
		var cnt = 0;
		for (i = 0; i < my_form.mycheck.length; i++) {
			if (my_form.mycheck[i].checked)
				cnt++;
		}
		alert(cnt);
	}
</script>
</head>
<body>
	<form name='my_form'>
		<label><input type='checkbox' name='mycheck' value='apple' />사과</label>
		<label><input type='checkbox' name='mycheck' value='pear' />배</label>
		<label><input type='checkbox' name='mycheck' value='banana' />바나나</label>
		<label><input type='checkbox' name='mycheck' value='melon' />멜론</label>
		<br> <input type="checkbox" name="checkall"
			onclick='check_all();' value='모두 선택' />
	</form>

	<input type='button' onclick='count_check();' value='체크 수 확인' />
</body>
</html>