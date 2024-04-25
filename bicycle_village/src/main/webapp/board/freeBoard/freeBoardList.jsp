 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
 .a{border:solid red 5px}
 span{width:150px; color:red}
 input{border:solid gray 1px}
 table{width:100%}
 th,td{border:1px gray solid; text-align:center;padding:3px}
 h2{text-align:center}
 
 a{text-decoration: none;}
 a:hover{color: red}
 
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

<script type="text/javascript">

	$(function(){
		//��ü�˻�
		   function selectAll(){
			   $.ajax({
				url :"ajax" , //������û�ּ�
				type:"post", //��û���(method��� : get | post | put | delete )
				dataType:"json"  , //������ ������ ������(����)Ÿ��(text | html | xml | json )
				data: {key:"customer" , methodName : "selectAll"}, //�������� ���� ����������(parameter����)
				success :function(result){
					console.log(result);
					
					let str="";
					$.each(result, function(index, item){
					    str+="<tr>";
					    str+=`<td>${(item.boardSeq)}</td>`;
					    str+=`<td>${item.boardName}</td>`;
					    str+=`<td>${item.userSeq}</td>`;
					    str+=`<td>${item.regDate}</td>`;
					    str+=`<td>${item.boardCount}</td>`;
					    str+=`<td>${item.comment}</td>`;
					    str+="</tr>";
				  });
					
					$("#listTable tr:gt(0)").remove();
					$("#listTable tr:eq(0)").after(str);//�������� �ڿ� �߰�
					
				} , //���������� ������ �Լ� 
				error : function(err){  
					alert(err+"���� �߻��߾��.");
				}  //���������� ������ �Լ� 
			});//ajax��
		   }//selectAll �Լ���
		   /////////////////////////////////////////////////////////////
		   
		
	});
	
</script>

</head>
<body>
	<table id="listTable" cellspacing="0">
	<tr bgcolor="skyblue">
					<th>��ȣ</th>
					<th class="title">����</th>
					<th>�ۼ���</th>
					<th>�ۼ���</th>
					<th>��ȸ</th>
					<th>���</th>
				</tr>
			</th>
		</table>
</body>
</html>


<tbody>