/*
 *  Jquery
 */

$(document).ready(function (){
   $("#user_Name, #password, #password_again, #lbyear, #lbEmail, #lbAddress, #lSex").focus(function (){
       $(".error").css("display", "none");
   });

    $("input[type=text],input[type=password],input[type=date]").blur(function (){
        if($("#user_Name").val() == ""){
            $(".error span").text("UserName không được để trống");
            $(".error").css("display", "block");
            return;
        }
        if($("#lbEmail").val() == ""){
            $(".error span").text("Email không được để trống");
            $(".error").css("display", "block");
            return;
        }
        if($("#password").val() == ""){
            $(".error span").text("Password không được để trống");
            $(".error").css("display", "block");
            return;
        }
        if($("#password_again").val() == ""){
            $(".error span").text("Nhập lại Password không được để trống");
            $(".error").css("display", "block");
            return;
        }
        if($("#lbyear").val() == ""){
            $(".error span").text("Ngày sinh không được để trống");
            $(".error").css("display", "block");
            return;
        }
        if($("#lbAddress").val() == ""){
            $(".error span").text("Địa chỉ không được để trống");
            $(".error").css("display", "block");
            return;
        }
        if($("#lSex").val() == ""){
            $(".error span").text("Giới tính không được để trống");
            $(".error").css("display", "block");
            return;
        }

    });

    //bấm đường link để đến review(comment) trong trang chi tiết sản phẩm
    $(".review-link").on('click', function () {
        //đổi màu title
        $(".tab-nav li").removeClass("active");
        $("li.comment").addClass("active");

        //show ra phần comment
        $(".tab-pane").removeClass("active");
        $("#tab3").addClass("active in");

        //kéo màn hình xuống phần comment
        $('html, body').animate({
            scrollTop: $("#tab3").offset().top
        }, 1000);
    });

    
    $(".up_down .add_product").click(function(){
        let value = $(".number").val();

        $(".number").val(Number(value)+1);
    });

    $(".up_down .degree_product").click(function () {
        let value = $(".number").val();
        let degree = value - 1;
        if (Number(degree) == 0) {
            $(".number").val("1");
            return;
        }
        $(".number").val(value - 1);
    });
});

/**
 * javascript
 */
function myFunction() {
    var x = $(".password");
    if (x.attr("type") === "password") {
        x.attr("type", "text");
    } else {
        x.attr("type", "password");
    }
}

function getRequestObject() {
    if (window.XMLHttpRequest) {
        return(new XMLHttpRequest());
    } else if (window.ActiveXObject) {
        return(new ActiveXObject("Microsoft.XMLHTTP"));
    } else {
        return(null);
    }
}

function checkInformation(type){
    var request = getRequestObject();

    let val;
    switch (type){
        case "userName":
            val = $("#user_Name").val();
            console.log(val);
            if(val == ""){
                $(".error span").text("UserName không được để trống");
                $(".error").css("display", "block");
                return;
            }
            break;
        case "email":
            val = $("#lbEmail").val();
            console.log(val);
            if(val == ""){
                $(".error span").text("Email không được để trống");
                $(".error").css("display", "block");
                return;
            }
            break;

    }
    if(val == "") return;
    console.log("Log in");
    let url = "CheckUserNameOrEmail"+"?type="+type+"&val="+val;
    request.onreadystatechange = function () {showResponseAlert(request);};
    request.open("GET", url, true); //gửi address qua server(servlet) thông qua get
    // request.setRequestHeader("Content-type", "charset=utf-8");
    request.send(null);
}

function showResponseAlert(request) {
    if ((request.readyState == 4) &&
        (request.status == 200)) {
        console.log(request.responseText);
        let text ;
        switch(request.responseText){
            case "DontHave":
                return;
            case "UserNameHave":
                text ="UserName đã tồn tại";
                break;
            case "EmailHave":
                text = "Email đã tồn tại";
                break;
        }

        $(".error span").text(text);
        $(".error").css("display", "block");
    }
}