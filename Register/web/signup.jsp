<%-- 
    Document   : signup
    Created on : 1 Apr, 2020, 6:22:02 PM
    Author     : Manoj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    </head>
    <body style="background: url(images/images.jpg);background-size: cover;background-attachment: fixed">  
        <div class="container">

            <div class="row">
                <div class="col m6 offset-m3">

                    <div class="card">
                        <div class="card-content">
                            <h2 style="margin-top: 8px;" class="center-align">Register Here..!!</h2>
                            <h6 id="msg" class="center-align"></h6>



                            <div class="form center-align">

                                <!--//creating form-->
                                <form action="Register" method="post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter your name" id="name"   />
                                    <input type="password" name="user_password" placeholder="Enter password" id="pass"  />
                                    <input type="email" name="user_email" placeholder="Email Address" id="email"/>
                                    <button type="submit" class="btn deep-purple">Register</button>




                                </form>






                            </div>


                            <div class="loader center-align" style="margin-top: 10px; display: none">
                                <div class="preloader-wrapper big active">
                                    <div class="spinner-layer spinner-blue">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-red">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-yellow">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>

                                    <div class="spinner-layer spinner-green">
                                        <div class="circle-clipper left">
                                            <div class="circle"></div>
                                        </div><div class="gap-patch">
                                            <div class="circle"></div>
                                        </div><div class="circle-clipper right">
                                            <div class="circle"></div>
                                        </div>
                                    </div>
                                </div>

                                <h6> Please wait...</h6>












                            </div>
                        </div>
                    </div>
                </div>
            </div>




        </div>

        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous">

        </script>

        <script>
            $(document).ready(function () {
                console.log("page is ready")
            })

            $("#myform").on("submit", function (event) {
                event.preventDefault();

                var f = $(this).serialize();
                console.log(f);
                

                $(".loader").show();
                $("#myform").hide();
                
                $.ajax({
                    url: "Register",
                    data: f,
                    type: 'POST',
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        console.log("success........!!!");
                        $(".loader").hide();
                        $("#myform").show();
                        $("#name").val("");
                        $("#pass").val("");
                        $("#email").val("");
                        
                        
                        if(data.trim()==="done"){
                            $("#msg").addClass("green-text");
                            $("#msg").text("successfully registered");
                            
                            
                        }
                        else{
                              $("#msg").addClass("red-text");
                            $("#msg").text("something went wrong");
                        }
                        



                    },

                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(data);
                        console.log("Error........!!!");
                        $(".loader").hide();
                        $("#myform").show();

                    }



                })

            })




        </script>
    </body>
</html>
