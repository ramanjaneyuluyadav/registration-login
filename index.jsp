
<!DOCTYPE html>
<html>
<head>
<title>Registation form here</title>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://kit.fontawesome.com/41e520808c.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



<style>

     body{
            background-image: linear-gradient(to right, rgb(111, 111, 250), rgb(185, 106, 241), rgb(76, 100, 253));
            background-color:#00FFFF;
            font-size: 16px;
		    font-family: 'Times New Roman', Times, serif;
		    margin-left:-512px;
		    margin-top:-300px;
		    position:absolute;
		    height: 650px;
		    width:1024px;
		    left: 50%;
		    top:50%;
        }
	
	.center{
	display:block;
	margin-left:25px;
	}
.error{
	color: red;
	}
	.img{
	  width:500px;
      height:370px;
	  background-color:#FFFFFF;
	  border: 0px solid black;
	  border-radius:50px;
	  padding:20px;
	 
	}
	.card{
	margin-left:40px;
	}
	
	
	 .form-floating{
            position: relative;
        }
        .icon {
            position: absolute;
            top:calc(20%);
            left:1.25rem;
        }
	
	
	 .form-floating label, .form-floating .floatingName{
            left:.5rem;
            padding-left: 4.0rem;
            width:100%;
            height:40%;
   
        }
        
        .eye1{
            top:calc(25%);
            position: absolute;
            left:calc(88%);
        }
        .eye2{
            top:calc(30%);
            position: absolute;
            left:calc(88%);
        
        }
        .register{
        
        font-size:20px;
        padding:8px 25px;
        margin:6px 2px;
        }
        span{
        font-size:15px;
        }
	
</style>

</head>
<body>
      <div class="container h-20">
        <div class="card text-black bg-light" style="border-radius: 25px;">
          <div class="card-body p-md-5">
            <div class="row ">
               <div class="col-md-7 col-lg-6 col-xl-5 ">
            <h1 style="text-align:center" class="bg-info rounded-pill fs-2">Registration Here </h1>
            
            <p class="fs-6 text-primary text-center"><b>Kindly fill in this form to register.</b></p>
            
            <form name="registration" action="register" method="post">
            
            
            <div class="form-floating mb-2">
                      <i class="icon fa-solid fa-user-tie fa-lg"></i>
                        <input class="form-control  floatingName" type="text" name="firstname" id="firstname"  placeholder="first-name" >
                        <label for="floatingName">First-name</label>
                       <span class="text-danger" id="errName" ></span>
             </div>
            
              <div class="form-floating mb-2">
                      <i class="icon fa-solid fa-user-tie fa-lg"></i>
                        <input class="form-control  floatingName" type="text" name="lastname" id="lastname" placeholder="last-name" >
                        <label for="floatingName">Last-name</label>
                        <span class="text-danger" id="errName"></span>
              </div>
            
            
              <div class="form-floating mb-2">
                        <i class="icon fa-solid fa-envelope fa-lg"></i>   
                        <input class="form-control  floatingName" type="email" name="email" id="email" placeholder="abc@gmail.com" onblur="func3()" >
                        <label for="floatingName">Email</label>
                        <span class="text-danger" id="cemail"></span>
                </div>
                
                <div class="form-floating mb-2">
                        <i class="icon fa-solid fa-lock fa-lg"></i>
                        <input class="form-control floatingName" type="password" name="password" id="password" placeholder="password" onblur="func4()">
                     <span class="eye" onclick="eyeFunction1()">
                        <i class="fa-solid fa-eye fa-lg eye1" id="hide1" style="display: none;" ></i>
                        <i class="fa-solid fa-eye-slash fa-lg eye2" id="hide2" ></i>
                     </span>
                    <label for="floatingName">Password</label>
                    <span class=" text-danger " id="pwd"></span>
               </div>
               
                 <div class="form-floating mb-2">
                        <i class="icon fa-solid fa-lock fa-lg"></i>
                        <input class="form-control floatingName" type="password" name="confirmpassword" id="confirmpassword" placeholder="confirm-password" onblur="func5()">
                        <span class="eye" onclick="eyeFunction2()">
                            <i class="fa-solid fa-eye fa-lg eye1" id="hide3" style="display: none;" ></i>
                            <i class="fa-solid fa-eye-slash fa-lg eye2" id="hide4" ></i>
                        </span>
                        <label for="floatingName">Confirm-Password</label>
                        <span class="text-danger" id="cpwd"></span>
                    </div>
                    
                   <div class="form-floating mb-2">
                        <i class="icon fa-solid fa-phone fa-lg"></i>
                        <input class="form-control floatingName" type="number" name="contact" id="contact"  maxlength="10" placeholder="+91" >
                        <label for="floatingName">Contact-number</label>
                        <span class="text-danger" id="ccontact"></span>
                    </div>
                    
                     <div class="form-floating mb-2">
                        <button type="submit"  class="btn btn-success rounded-pill register" onclick="return fun1()">Register</button>
                      <p class="fs-6 " ><input type="checkbox" class="mx-auto" style="width:40px">I agree all statements in <a href="#!">Terms of service</a></p>
                       <span id="para1" class="error"></span> </td>
                    </div>
               
                    
               </form>
	      </div>
	            <div class="col-md-5 col-lg-6 col-xl-7 d-flex align-items-center">

                     <img src="./assets/reg.jpg" class="img" alt="Sample image">
                 </div>
            
	       </div>
	    </div>
	 </div>
		<script type="text/javascript">
		
		//confirmation message
		   function fun1(){
						 var Fname = document.getElementById("firstname").value;
						 var Lname = document.getElementById("lastname").value;
						 var Email = document.getElementById("email").value;
						 var pwd = document.getElementById("password").value;
						 var Cpwd = document.getElementById("confirmpassword").value;
						 var Contact = document.getElementById("contact").value;
					if(Fname =="" || Lname ==""|| Email==""||pwd==""||  Cpwd=="" || Contact==""){
						
						document.getElementById("para1").innerHTML="*Enter all the above details is mandatory";
						return false
					}else{
						document.getElementById("para1").innerHTML="Successfully Registered!!!.";
					   }
		       
				   }   
        	   
          	   //email 
          	   
          	    
          	   function func3(){
		     var s1 = document.getElementById("email").value;
			 var regexpemail = /^([a-zA-z0-9\.-]+)@([a-zA-Z]+).([a-z]{2,4})$/;
		     if (regexpemail.test(s1)==false)
				{
				document.getElementById("cemail").innerHTML = "*Invalid email";
				return false
				}
			else
				{
					document.getElementById("cemail").innerHTML = "";
				}
	   	   	}
            
          	   
          	   //password
          	   function func4(){
          		 var s2=document.getElementById("password").value;
          		 var regexppassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
 				if (regexppassword.test(s2) == false){
 					document.getElementById("pwd").innerHTML="*Invalid password(8 to 15 characters) one lowercase letter, one uppercase letter, one digit,one special character";
 					return false
 				}else
 					{
 					document.getElementById("pwd").innerHTML="";
 					}
          	   }
          	   
          	   //confirmPassword
          	   
          	   function func5(){
          		   var s2=document.getElementById("password").value;
          		   var s3=document.getElementById("confirmpassword").value;
          		 var regexpcpassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
    			 if (regexpcpassword.test(s3) == false)
    				{
    				 document.getElementById("cpwd").innerHTML="*Invalid confirmPassword";
    				 return false
    				}
    			  else if(s2 != s3){
    				  
    				  document.getElementById("cpwd").innerHTML="*Password does't match";
    				  return false
    				  
    			  }else
    			   {
    				document.getElementById ("cpwd").innerHTML = "";

    				}
          	   }
		
          
             //Show password eye1
            	 function eyeFunction1(){
                   var x=document.getElementById("password");
                   var y=document.getElementById("hide1");
                   var z=document.getElementById("hide2");
                   if(x.type==='password'){
                       x.type="text";
                       y.style.display="block";
                       z.style.display="none";
                   }
                   else{
                       x.type="password";
                       y.style.display="none";
                       z.style.display="block";

                   }  
               }
          	   
             //Show password eye2
              function eyeFunction2(){
	            var x=document.getElementById("confirmpassword");
	            var y=document.getElementById("hide3");
	            var z=document.getElementById("hide4");
	            if(x.type==='password'){
	                x.type="text";
	                y.style.display="block";
	                z.style.display="none";
	            }
	            else{
	                x.type="password";
	                y.style.display="none";
	                z.style.display="block";

            }
        }

             
             
          	   
			//firstname			
		
		   document.getElementById("firstname"). addEventListener("keypress", func1);
    	   function func1(event){
    		   var ch = event.which;

    		 if ( !((ch >=65 && ch <=90) || (ch >=97 && ch <=122) || (ch == 32) || (ch == 8) || (ch == 0)))
    		 {
    			 event.preventDefault();
    			 return false
    		 }
    	   }
    		       //lastname
    		       
    		 document.getElementById("lastname"). addEventListener("keypress", func2);
      	   function func2(event){
      		   var ch = event.which;

      		 if ( !((ch >=65 && ch <=90) || (ch >=97 && ch <=122) || (ch == 32) || (ch == 8) || (ch == 0)))
      		    {
      		   event.preventDefault();
      		 	return false
      		    }
    	
			   }
      	 
      	   // contact
    	 document.getElementById("contact"). addEventListener("keypress", func6);
      	  function func6(event)
	    	{
	          	var ch = event.which;
				if ( !((ch >=48 && ch <=57) || (ch == 8) || (ch == 0)))
	
	          	{
					event.preventDefault(); 
					return false
				}
	
	       	}
      	  
      	 function clickon() {
			    var x = document.getElementById("password");
			    if (x.type =="password") {
			      x.type = "text";
			    } else {
			      x.type = "password";
			    }
			  }
		 
      	  
			</script>
</body>
</html>