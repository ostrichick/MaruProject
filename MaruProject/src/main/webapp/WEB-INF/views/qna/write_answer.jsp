<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="" />
<!-- histoty Modal-->
<div class="modal-header">
    <h5 class="modal-title" id="historyModalLabel">ID - Modal</h5>
    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">×</span>
    </button>
</div>
<form action="${pageContext.request.contextPath}/qna/qnaisanswered" method="post" id="answer"> 
<div class="modal-body">
    <div class="table-responsive">
        <div class="container">
        </div>
        <table class="table table-hover">
            <thead class="text-center">
            <tr class="content">
                <th class="text-center">
                    ID
                </th>
                <th class="text-center">
                    PassWord
                </th>
            </tr>
            </thead>
            <tbody class="text-center">
            <c:forEach items="${qna}" var="qna">
                <tr class="content" style="font-size: 12px;">
                    <td class="text-center">${qna.idx }</td>
                    <td class="text-center">${qna.content}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>
</form>
<div class="modal-footer">
    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
</div>
  <style>  
  .faq_submit , .faq_retrun { 
  		  justify-content: center; 
  		  text-align:center;
  	}
  	button {
	    color: #fff; 
    background-color: #6c757d;
    border-color: #6c757d;  
}
  </style>
  <script type="text/javascript">
  $("#faq_retrun").on("click", function(e){
		 
		location.href = "${MaruContextPath}/qna_list";
});
  
  </script>
   <script>
      $("#summernote").summernote({
        placeholder : "내용을 작성해주세요.",
        tabsize : 2,
        height : 300,
        lang : "ko-KR", // 한글 설정
        toolbar : [
        // [groupName, [list of button]]
        [ 'fontname', [ 'fontname' ] ], [ 'fontsize', [ 'fontsize' ] ], [ 'style', [ 'bold', 'italic', 'underline', 'strikethrough', 'clear' ] ], [ 'color', [ 'forecolor', 'color' ] ], [ 'table', [ 'table' ] ], [ 'para', [ 'ul', 'ol', 'paragraph' ] ], [ 'height', [ 'height' ] ], [ 'insert', [ 'picture', 'link', 'video' ] ], [ 'view', [ 'fullscreen', 'help' ] ] ],
        fontNames : [ 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체' ],
        fontSizes : [ '8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72' ],
        callbacks : {
          onImageUpload : function(files, editor, welEditable) {
            // 파일 업로드(다중업로드를 위해 반복문 사용)
            for (var i = files.length - 1; i >= 0; i--) {
              uploadSummernoteImageFile(files[i], this);
            }
          }
        }
      });
      function uploadSummernoteImageFile(file, el) {
        data = new FormData();
        data.append("file", file);
        $.ajax({
          data : data,
          type : "POST",
          url : "uploadSummernoteImageFile",
          contentType : false,
          enctype : 'multipart/form-data',
          processData : false,
          success : function(data) {
            $(el).summernote('editor.insertImage', data.url);
          }
        });
      } 
    </script>
</body>
</html>