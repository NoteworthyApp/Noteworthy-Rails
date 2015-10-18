Parse.initialize("xaWquA962LKda5zgxedPcBxVMwmtwv0tMwWAvLs4", "rEq8Fx7X2melypPqC47pvw4AVNDNJ142tk4Df2j2");


var signUpButton = $('#signUp');

signUpButton.click(function() {
   signUp();
});

function signUp() {
    var user = new Parse.User();

    var username     = $('#username').val();
    var email        = $('#email').val();
    var password     = $('#password').val();

    user.set("username", username);
    user.set("email", email);
    user.set("password", password);
    user.signUp(null, null);
}