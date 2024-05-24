<?xml version="1.0" encoding="UTF-8"?>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
   <title>Home</title>
   <style>
     .uploadform label{
        display:block;
        width:80px;
        height:40px;
        border:1px solid #ddd;
        background:#ededed;
        text-align:center;
        line-height:40px;
     }
     .uploadform label:active{
         background:#ddd;
     }
     .upload{
        display:none;
     }
     .btn{
        margin-top:30px;
     }
     .file-container{
        padding:10px;
        border:1px solid #ddd;
     }
     .file-container>div{
        width:100%;
        height:100px;
        border:1px solid #999;
        margin:15px;
        border-radius:3px;
        overflow:hidden;
     }
     .file-container img{
        width:80px;
        height:100px;
        object-fit: cover;
     }
     .container{
        width:1000px;
        padding:30px;
        margin:30px auto;
        border:1px solid #ddd;
     }
     .formtag{
       list-style:none;
       margin:0;
       padding:0;
     }
     .formtag li{
       padding:20px 0;
     }
  </style>
</head>
<body>
<h1>
   Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<div class="container">
<form method="post" name="uploadform" class="uploadform" 
	  enctype="multipart/form-data" onsubmit="return submitForm();"> 
    <ul class="formtag">
       <li>
      <input type="text" name="title" >
      </li>
      <li>
      <label for="upload">업로드</label>
      <input type="file" 
             name="upload" 
             accept="*" 
             class="upload" 
             id="upload"
             onchange="setThumb(event);"
             multiple>
       <div id="file-container"></div>      
       </li>
       <li class="text-center">
      <button type="submit" class="btn">업로드</button>
       </li>
   </ul>
  </form>
  
  <script>
     function setThumb(event){
       for(var file of event.target.files){
          var reader = new FileReader();  //바이너리 담을 컨테이너 객체 생성
          console.log(file);
          if(file.type.startsWith('image/')){
                reader.onload = function(event) {
                    const imgDiv = document.createElement("div");
                    const img = document.createElement("img");
                    img.setAttribute("src", event.target.result);

                    //이미지 이름 출력
                    var imgName = document.createElement("span");
                    imgName.textContent = file.name; //파일이름을 span에 넣음
                    //파일크기 출력
                    var imgSize = document.createElement("span");
                    imgSize.textContent = file.size + "byte";

                    const delBtn = document.createElement("button");
                          delBtn.textContent = "취소";
                          delBtn.className = "del-btn";
                          delBtn.onclick = function(){
                            imgDiv.remove();
                          }

                    imgDiv.appendChild(img);
                    imgDiv.appendChild(imgName);
                    imgDiv.appendChild(imgSize);
                    imgDiv.appendChild(delBtn);
                    const fileContainer = document.getElementById("file-container");
                    fileContainer.classList.add("file-container");
                    fileContainer.appendChild(imgDiv);
                        
                }
                reader.readAsDataURL(file);
            
            }else{
                const fileDiv = document.createElement("div");
                const fileName = document.createElement("span");
                fileName.textContent = file.name;
                fileName.className = "file-name";
                const fileSize = document.createElement("span");
                fileSize.textContent = file.size + "byte";
                
                const delBtn = document.createElement("button");
                      delBtn.textContent = "취소";
                      delBtn.className = "del-btn";
                      delBtn.onclick = function(){
                            fileDiv.remove();
                          }

                fileDiv.appendChild(fileName);
                fileDiv.appendChild(fileSize);
                fileDiv.appendChild(delBtn);

                const fileContainer = document.getElementById("file-container");
                fileContainer.classList.add("file-container");
                fileContainer.appendChild(fileDiv);
            }
       } 
     }
     
     function submitForm(){
    	 const form = document.uploadform;
    	 if(form.title.value == ""){
    		 alert("제목을 입력하세요.");
    		 form.title.focus();
    		 return false;
    	 }
    	 if(form.upload.value == ""){
    		 alert("파일을 첨부하세요.");
    		 return false;
    	 }
    	 return true;
     }
  </script>
</body>
</html>