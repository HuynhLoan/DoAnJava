<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<c:url value = "/view/client/assets" var="url"/>
  <!-- Start header section -->
  <jsp:include page = "./header/mainHeader.jsp" flush = "true" />
  <!-- / header section -->
  
  <!--  content -->
    <!-- catg header banner section -->
  <section id="aa-catg-head-banner">
   <img src="${pageContext.request.contextPath}/view/client/assets/images/blog-banner.png" alt="banner blog">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>Chi tiết bài viết</h2>
        <ol class="breadcrumb">
          <li><a href="${pageContext.request.contextPath}/">Trang chủ</a></li>
          <li style="color:#fff">Bài viết</li>
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- / catg header banner section -->

  <!-- Blog Archive -->
  <section id="aa-blog-archive">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-blog-archive-area">
            <div class="row">
              <div class="col-md-9">
                <!-- Blog details -->
                <div class="aa-blog-content aa-blog-details">
                  <article class="aa-blog-content-single">                        
                    <h2><a href="#">${exchange.title}</a></h2>
                     <div class="aa-article-bottom">
                      <div class="aa-post-author">
                        Đăng bởi <a href="#">${exchange.name}</a>
                      </div>
                      <div class="aa-post-date">${exchange.created}</div>
                    </div>
                    <figure class="aa-blog-img">
                      <a href="#"><img src="${pageContext.request.contextPath}/view/client/assets/images/${exchange.image_link}" alt="fashion img"></a>
                    </figure>
                    <p>${exchange.content}</p> 
                  </article>
                </div>
                
                
             <div class="aa-blog-content aa-blog-details">
              <div class="aa-product-details-bot" id="comment">
              
              <ul class="nav nav-tabs aa-products-tab">
                <li><a href="#comment" data-toggle="tab">Bình luận</a></li>                
              </ul>
              
              <div class="aa-product-review-area">
              <ul class="aa-comment-nav">
              <c:forEach items="${commentbyid}" var="comment" >
                     <li>
                        <div class="medi">
                          <div class="medi-body">
                            <h4 class="medi-heading"><strong>${comment.name}</strong> - <span>${comment.created}</span></h4>
                            <div class="aa-comment-rating">
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                              <span class="fa fa-star"></span>
                            </div>
                            <p>${comment.content}</p>
                          </div>
                        </div>
                      </li>
                    </c:forEach>
                </ul>
                      
                       <h3>Thêm đánh giá</h3>
                  
                   <!-- review form -->
                     <form action="${pageContext.request.contextPath}/view/client/exchange/comment?id=${exchange.id}" method="post" class="aa-comment-form">
                      <div class="form-group">
                        <label for="name">Tên</label>
                        <input type="text" class="form-control" id="name" placeholder="Name" name="name">
                      </div>  
                      <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" placeholder="example@gmail.com" name="email">
                      </div>
                      <div class="form-group">
                        <label for="message">Bình luận của bạn</label>
                        <textarea class="form-control" rows="3" id="content" name="content"></textarea>
                      </div>

                      <button type="submit" class="btn btn-default aa-comment-submit">Gửi</button>
                   </form>
              
              </div>
              </div>
              </div>
              
              </div>
              
              <!-- blog sidebar -->
              <div class="col-md-3">
                <aside class="aa-blog-sidebar">

                  <div class="aa-sidebar-widget">
                    <h3>Bài đăng gần đây</h3>
                    <div class="aa-recently-views">
                      <ul>
                   <c:forEach items="${exchanges}" var="exchange" end="2">
                        <li>
                          <a class="aa-cartbox-img" href="${pageContext.request.contextPath}/view/client/exchange/list_detail?id=${exchange.id}"><img src="${pageContext.request.contextPath}/view/client/assets/images/${exchange.image_link}" alt="img bài viết"></a>
                          <div class="aa-cartbox-info">
                            <h4><a href="${pageContext.request.contextPath}/view/client/exchange/list_detail?id=${exchange.id}"><b>${exchange.title }</b></a></h4>
                            <p>${exchange.created }</p>
                          </div>                    
                        </li>
                        </c:forEach>
                      </ul>
                    </div>                            
                  </div>
                </aside>
              </div>
            </div>           
          </div>
        </div>
      </div>
    </div>
  </section>


  
  <!-- / Blog Archive -->
<!--  end content-->
  
<!--  footer-->
 <jsp:include page = "./footer/footer.jsp" flush = "true" />
<!-- end footer-->
 
  
  