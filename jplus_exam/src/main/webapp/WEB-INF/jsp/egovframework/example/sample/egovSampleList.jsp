<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="javax.xml.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>


<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>


 <%
   	URL url = null;
  	URLConnection urlConnection = null;
  	
  	 String stringUrl = "https://www.hf.go.kr/research/openapi/SttsApiTbl.do?STATBL_NM=%EC%A3%BC%ED%83%9D%EA%B7%9C%EB%AA%A8%EB%B3%84%20%EC%A3%BC%ED%83%9D%EA%B5%AC%EC%9E%85%EB%B6%80%EB%8B%B4%EC%A7%80%EC%88%98&Type=json"; 
  	//String stringUrl = "https://mdn.github.io/learning-area/javascript/oojs/json/superheroes.json";
  	InputStream is = null;
  	String data = "";
  	
  	try {
  		
  		url = new URL(stringUrl);
  		urlConnection = url.openConnection();
  		urlConnection.setDoOutput(true);
  		
  		is = urlConnection.getInputStream();
  		 
  	 	byte[] buf = new byte[2048];
  	 	int len = -1;
  	 	StringBuffer sb = new StringBuffer();
  	 	
  	 	while ((len = is.read(buf, 0, buf.length)) != -1) {
  	 		sb.append(new String(buf, 0, len));
  	 	}
  		
  	 	data = sb.toString();
  	 	
  	} catch (MalformedURLException e) {
  		e.getMessage();
  	} catch (IOException e) {
  		e.getMessage();
  	} finally {
  		if (is != null) {
  			is.close();
  		}
  	} 
%>


<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	
	
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    
    
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	 
	 
	  
	<!-- <script type="text/javaScript" src="http://code.jquery.com/jquery-3.4.1.min.js" />   -->
	<!-- <script src="../js/jquery-3.4.1.min.js"></script> -->
	
	<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

    <script type="text/javaScript" language="javascript" defer="defer">
    
    
	    //onload
	    $(document).ready(function () {
	    	$("#p1").text("테스트입니다.");
	    	
/* 	    	var obj_111 = {
	    			
	    		    "ResponseDataAsJson": "{\"Table\":[{\"LoanID\":1035932,\"FileName\":\"TEST001878\",\"DateCreated\":\"2020-03-16T14:35:41.567\",\"OrganizationID\":1000091,\"OrganizationName\":\"Test Broker\",\"FirstName\":\"Roy\",\"MiddleName\":\"\",\"LastName\":\"Sample\",\"LoanProgramCode\":\"AAA7/1\",\"LoanProgramName\":\"Advantage 7/1 ARM\",\"Street\":\"7715 Newman Ave #21 KRE\",\"City\":\"Huntington Beach\",\"State\":\"CA\",\"Zip\":\"92647\",\"NoUnits\":1,\"_LienPosition\":1,\"BaseLoanAmount\":360000.00,\"_LTV\":55.38,\"_CLTV\":55.38,\"IntRate\":4.875,\"_FileCreditScore\":null,\"LockStartDate\":null,\"LockExpirationDate\":null,\"LeadDate\":\"2020-03-16T00:00:00\",\"PreLockedDate\":null,\"RegisteredDate\":\"2020-03-16T00:00:00\",\"ApplicationDate\":\"2020-03-16T00:00:00\",\"ApprovedDate\":null,\"ClosedDate\":null,\"FundingDate\":null,\"SchedClosingDate\":\"2017-07-05T00:00:00\",\"CanceledDate\":null,\"DeclinedDate\":null,\"LoanPurchasedDate\":null,\"SubmissionCancelledDate\":null,\"SubmissionAdverseDate\":null,\"MortgageType\":3,\"MortgageTypeName\":\"Conventional\",\"AmortizationType\":2,\"AmortizationTypeName\":null,\"LoanPurpose\":1,\"LoanPurposeName\":\"Purchase\",\"OccupancyType\":1,\"OccupancyTypeName\":\"PrimaryResidence\",\"DocumentationType\":1,\"DocumentationTypeName\":\"Alternative\",\"PropertyType\":1,\"PropertyTypeName\":\"Detached\",\"LoanStatus\":52,\"LoanStatusName\":\"Registered\",\"LoanStatusCategoryName\":\"Active Loans\",\"SyncFileDataID\":0,\"SyncType\":0,\"SyncFileName\":\"\",\"SyncLoanID\":null,\"AssignAccountExecutive\":\"Joel.Azurin\",\"AssignAccountExecutiveFirstName\":\"Joel\",\"AssignAccountExecutiveLastName\":\"Azurin\",\"AssignAccountManager\":\"\",\"AssignAccountManagerFirstName\":null,\"AssignAccountManagerLastName\":null,\"AssignUnderwriterFirstName\":null,\"AssignUnderwriterLastName\":null,\"AssignAssistantUnderwriterFirstName\":null,\"AssignAssistantUnderwriterLastName\":null,\"PriceIt\":\"Y\",\"HasAlertsOnFile\":false,\"HasAlert\":false,\"HomeScreenUniqueLoan\":null,\"EnabledUploadConditions\":false,\"EnabledChangeOfCircumstance\":true,\"HoldYesNo\":null,\"HoldReason\":null}]}"
    		};

	    	
	    	
	    	const removeBackSlash = obj_111.replace(/\\/g,'');
	    	
	    	alert(removeBackSlash); */

	    	
	    	
	    	
	    	//json \ 제거
	    	//var json_data = JSON.parse(obj_111);
	    	//var json_data = JSON.stringify(obj_111);

	    	//console.log("json_data====>"+json_data);
	    	
	    	//console.log("ResponseDataAsJso11111111n===>" + json_data.ResponseDataAsJson.Table[0].LoanID); 
	    	 
	     	var obj1 = {
	    			
	     		    "ResponseDataAsJson1": "{\"Table\":[{\"LoanID\":1035932,\"FileName\":\"TEST001878\",\"DateCreated\":\"2020-03-16T14:35:41.567\",\"OrganizationID\":1000091,\"OrganizationName\":\"Test Broker\",\"FirstName\":\"Roy\",\"MiddleName\":\"\",\"LastName\":\"Sample\",\"LoanProgramCode\":\"AAA7/1\",\"LoanProgramName\":\"Advantage 7/1 ARM\",\"Street\":\"7715 Newman Ave #21 KRE\",\"City\":\"Huntington Beach\",\"State\":\"CA\",\"Zip\":\"92647\",\"NoUnits\":1,\"_LienPosition\":1,\"BaseLoanAmount\":360000.00,\"_LTV\":55.38,\"_CLTV\":55.38,\"IntRate\":4.875,\"_FileCreditScore\":null,\"LockStartDate\":null,\"LockExpirationDate\":null,\"LeadDate\":\"2020-03-16T00:00:00\",\"PreLockedDate\":null,\"RegisteredDate\":\"2020-03-16T00:00:00\",\"ApplicationDate\":\"2020-03-16T00:00:00\",\"ApprovedDate\":null,\"ClosedDate\":null,\"FundingDate\":null,\"SchedClosingDate\":\"2017-07-05T00:00:00\",\"CanceledDate\":null,\"DeclinedDate\":null,\"LoanPurchasedDate\":null,\"SubmissionCancelledDate\":null,\"SubmissionAdverseDate\":null,\"MortgageType\":3,\"MortgageTypeName\":\"Conventional\",\"AmortizationType\":2,\"AmortizationTypeName\":null,\"LoanPurpose\":1,\"LoanPurposeName\":\"Purchase\",\"OccupancyType\":1,\"OccupancyTypeName\":\"PrimaryResidence\",\"DocumentationType\":1,\"DocumentationTypeName\":\"Alternative\",\"PropertyType\":1,\"PropertyTypeName\":\"Detached\",\"LoanStatus\":52,\"LoanStatusName\":\"Registered\",\"LoanStatusCategoryName\":\"Active Loans\",\"SyncFileDataID\":0,\"SyncType\":0,\"SyncFileName\":\"\",\"SyncLoanID\":null,\"AssignAccountExecutive\":\"Joel.Azurin\",\"AssignAccountExecutiveFirstName\":\"Joel\",\"AssignAccountExecutiveLastName\":\"Azurin\",\"AssignAccountManager\":\"\",\"AssignAccountManagerFirstName\":null,\"AssignAccountManagerLastName\":null,\"AssignUnderwriterFirstName\":null,\"AssignUnderwriterLastName\":null,\"AssignAssistantUnderwriterFirstName\":null,\"AssignAssistantUnderwriterLastName\":null,\"PriceIt\":\"Y\",\"HasAlertsOnFile\":false,\"HasAlert\":false,\"HomeScreenUniqueLoan\":null,\"EnabledUploadConditions\":false,\"EnabledChangeOfCircumstance\":true,\"HoldYesNo\":null,\"HoldReason\":null}]}",
    			    "IsSuccess": true,
    			    "ErrorMessage": null,
    			    "ResultMessage": null,
    			    "ResultCode": 0,
    			    "Exception": null,
    			    "RequestTime": "2020-03-16T16:46:27.8984151-07:00",
    			    "ResponseTime": "2020-03-16T16:46:34.4225401-07:00"
	    		 

	    	};
	    	

	    	const jsonObj11 = JSON.parse(obj1.ResponseDataAsJson1);
	    	

	    	console.log("11111111111===>" + jsonObj11); 
	    	console.log("22222222222===>" + jsonObj11.Table[0].LoanID); 
	

	    	                                                                                  
	    	
	    	                    
	    	
			$.ajax({                                                  
				 
				url         : 'https://www.hf.go.kr/research/openapi/SttsApiTbl.do?STATBL_NM=%EC%A3%BC%ED%83%9D%EA%B7%9C%EB%AA%A8%EB%B3%84%20%EC%A3%BC%ED%83%9D%EA%B5%AC%EC%9E%85%EB%B6%80%EB%8B%B4%EC%A7%80%EC%88%98&Type=json',
				//url         : 'https://aus.amwestfunding.com/api/Eligibility/GetEligibileProductList',
				//url         : 'https://mdn.github.io/learning-area/javascript/oojs/json/superheroes.json',
						
				type        : 'GET',
				dataType    : 'json',

				
				success     : function (result) {
					

					//김병천 json오로 받아온 특정 값만 보여주시   예제 : https://java119.tistory.com/54
					//console.log("list_total_count===>" + result.SttsApiTbl[0].head[0].list_total_count); 
					//console.log("MESSAGE===>" + result.SttsApiTbl[0].head[1].RESULT.MESSAGE); 
					
					//drawBarChart(result);
					//drawPieChart(result);
					drawGrid(result);
			

					
					 $.each(result,function(i,v){
				        //데이터 인풋
				        //console.log("1111==>"+result);
				    }); 
				
				    
				    
				},
				error       : function (result) {
				}
			});
		

	 		function drawGrid(jsonData) { 
	 			
	 		
				var rows = jsonData.SttsApiTbl.row;	// ArcData위치에 해당하는 변수명은 각 API마다 url의 Service명과 동일하게 변합니다.
				
				
				
				if(rows) {
					var html = '';
					$.each(rows, function(idx, row) {
						html += '<tr>';
						html += '	<td style="border: 2px solid gray; text-align: center;">' + row.ITEM_NAME2 + '</td>';
						html += '	<td style="border: 2px solid gray; text-align: center;">' + row.DATA_VALUE + '</td>';
						html += '</tr>';
					});
					$('#grid').append(html);
				}
			}  	    	
	    	
	    	
	 		
	 		


	 		
	    });
    
    
	    
	    //////////////////////////////////////////////////////////////
/*   	    $.ajaxPrefilter('json', function(options, orig, jqXHR){
		return 'jsonp';
		}); */

		     
	    /////////////////////////////////////////////////////////////
	    
	    
	    
	    
	    
    	//function
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateSampleView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addSample.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit();
        }	    	
    	
 
           
        
    </script>
</head>



<body style="text-align:center; margin:0 auto; display:inline; padding-top:100px;">
    <form:form commandName="searchVO" id="listForm" name="listForm" method="post">
        <input type="hidden" name="selectedId" />
        <div id="content_pop">
        	<!-- 타이틀 -->
        	<div id="title">
        		<ul>
        			<li><img src="<c:url value='/images/egovframework/example/title_dot.gif'/>" alt=""/><spring:message code="list.sample" /></li>
        		</ul>
        	</div>
        	
        	
	        <p id = "p1">
			
			</p>
			    
			<!-- <script>  
  				$("#p1").text("안녕");
			</script>   -->
        	
        	
        	
        	<!-- // 타이틀 -->
        	<div id="search">
        		<ul>
        			<li>
        			    <label for="searchCondition" style="visibility:hidden;"><spring:message code="search.choose" /></label>
        				<form:select path="searchCondition" cssClass="use">
        					<form:option value="1" label="Name" />
        					<form:option value="0" label="ID" />
        				</form:select>
        			</li>
        			<li><label for="searchKeyword" style="visibility:hidden;display:none;"><spring:message code="search.keyword" /></label>
                        <form:input path="searchKeyword" cssClass="txt"/>
                    </li>
        			<li>
        	            <span class="btn_blue_l">
        	                <a href="javascript:fn_egov_selectList();"><spring:message code="button.search" /></a>
        	                <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
        	            </span>
        	        </li>
                </ul>
        	</div>
        	<!-- List -->
        	<div id="table">
        		<table width="100%" border="0" cellpadding="0" cellspacing="0" summary="카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블">
        			<caption style="visibility:hidden">카테고리ID, 케테고리명, 사용여부, Description, 등록자 표시하는 테이블</caption>
        			<colgroup>
        				<col width="40"/>
        				<col width="100"/>
        				<col width="150"/>
        				<col width="80"/>
        				<col width="?"/>
        				<col width="60"/>
        			</colgroup>
        			<tr>
        				<th align="center">No</th>
        				<th align="center"><spring:message code="title.sample.id" /></th>
        				<th align="center"><spring:message code="title.sample.name" /></th>
        				<th align="center"><spring:message code="title.sample.useYn" /></th>
        				<th align="center"><spring:message code="title.sample.description" /></th>
        				<th align="center"><spring:message code="title.sample.regUser" /></th>
        			</tr>
        			<c:forEach var="result" items="${resultList}" varStatus="status">
            			<tr>
            				<td align="center" class="listtd"><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
            				<td align="center" class="listtd"><a href="javascript:fn_egov_select('<c:out value="${result.id}"/>')"><c:out value="${result.id}"/></a></td>
            				<td align="left" class="listtd"><c:out value="${result.name}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.useYn}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.description}"/>&nbsp;</td>
            				<td align="center" class="listtd"><c:out value="${result.regUser}"/>&nbsp;</td>
            			</tr>
        			</c:forEach>
        		</table>
        	</div>
        	<!-- /List -->
        	<div id="paging">
        		<ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_link_page" />
        		<form:hidden path="pageIndex" />
        	</div>
        	<div id="sysbtn">
        	  <ul>
        	      <li>
        	          <span class="btn_blue_l">
        	              <a href="javascript:fn_egov_addView();"><spring:message code="button.create" /></a>
                          <img src="<c:url value='/images/egovframework/example/btn_bg_r.gif'/>" style="margin-left:6px;" alt=""/>
                      </span>
                  </li>
              </ul>
              
               <%=data%>   

			
			
				


         
        	</div>
        	
        </div>
        
        
       <!--  <input type = "button" onclick = "javascript:ajax()" value = "제출" /> -->
    	
    	
    	<div><table id = "boardList" border = "1"></table></div>
    	
    	
    	
    	
<!-- 		<table id="listTable">
		
		</table>         -->
        
        
        
		<table style="border: 2px solid gray; width: 700px; text-align: center;">
			<colgroup>
				<col width="50%">
				<col width="">
			</colgroup>
			<thead>
				<tr>
					<th style="border: 2px solid gray; text-align: center;">지역</th>
					<th style="border: 2px solid gray; text-align: center;">부담지수</th>
				</tr>
			</thead>
			<tbody id="grid">
			</tbody>
			
			
			
			
			
			
<%-- 			<c:forEach var="result" items="${data}" varStatus="status">
      			<tr>
     				<td align="left" class="listtd"><c:out value="${result.ITM_NM}"/>&nbsp;</td>
      				<td align="center" class="listtd"><c:out value="${result.DTA_VAL}"/>&nbsp;</td>
      			</tr>
  			</c:forEach> --%>
			
		</table>        
		        

        
    </form:form>
</body>
</html>
