<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/client/assets" var="url"/>

 <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
 	<!-- / header section -->
	<!--  content -->
	<!-- catg header banner section -->
	<section id="aa-catg-head-banner">
  <img src="${pageContext.request.contextPath}/view/client/assets/images/banner_product.jpg" alt="banner blog">
    <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Đăng bài</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>                   
          <li style="color:#fff">Nhập thông tin</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  
  <section id="aa-myaccount">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
        <div class="aa-myaccount-area">         
            <div class="row">
       
              <div class="col-md-8 col-md-push-2">
                <div class="aa-myaccount-register">                 
                 <h4>Thêm bài viết</h4>
                 <form class="aa-login-form" method="post" action="${pageContext.request.contextPath}/view/client/exchange/add" >
                    <label for="">Họ tên<span>*</span></label>
                    	<input type="text" placeholder="Name" name="name" required>   
                     <label for="">Email <span>*</span></label>
                    	<input type="text" placeholder="useremail@gmail.com" name="email" required>
                    <label for="">Tiêu đề<span>*</span></label>
                    	<input type="text" name="title" required>   
                     <label for="">Nội dung<span>*</span></label>
                    	<input type="text" name="content" required> 
                    <label for="">Hình ảnh<span>*</span></label> 
                    	<input type="text" name="image_link" required> 
					 <label for="">Ngày đăng<span>*</span></label>
					 	<input type="date" class="form-control" id="the-date" name="created">
					  
            		 <button class="btn btn-danger"><i class="fa fa-times"></i><a href="${pageContext.request.contextPath}/view/client/exchange/list">Hủy</a></button>
                    <button type="submit" class="btn btn-success"><i class="fa fa-check-square-o"></i> Thêm</button>                  
                    
                    </form>
                
                </div>
              </div>
            </div>          
         </div>
       </div>
     </div>
   </div>
 </section>
 
    <script>
		var date = new Date();
		
		var day = date.getDate();
		var month = date.getMonth() + 1;
		var year = date.getFullYear();
		
		if (month < 10) month = "0" + month;
		if (day < 10) day = "0" + day;
		
		var today = year + "-" + month + "-" + day;
		
		
		document.getElementById('the-date').value = today;
</script>
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->