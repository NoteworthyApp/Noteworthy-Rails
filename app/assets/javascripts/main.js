//Parse.initialize("uGqVPX8ZdhRsRzYK4pRGNvzjwi2bljbNEJtvifHc", "86Q1tN3pxwdVd0RLjiFVFhbnzsLVwXuBHl20l2yg");

var signUpButton = $('#signUp');
var createAccountButton = $('#create-account-btn');
var signInButton = $('#si-btn');

signInButton.click(function() {
    console.log("clicked login button");
    login();
    //DataService.login('Michael');
});

createAccountButton.click(function() {
   createAccount();
});

signUpButton.click(function() {
   signUp();
});

// add a new user to Parse
function signUp() {
    //var user = new Parse.User();

    var username     = $('#username').val();
    var email        = $('#email').val();
    var password     = $('#password').val();

    //user.set("username", username);
    //user.set("email", email);
    //user.set("password", password);
    //user.signUp(null, null);

    DataService.signUp(username, password, email);
}

function createAccount() {
    $('#sign-in-card').hide();
    $('#sign-up-card').show();
    $('#agreement').show();
    $('#agreement-label').hide();
    createAccountButton.hide();
}

function login() {
    var username = $('#si-username').val();
    var password = $('#si-password').val();

    DataService.login(username, password);

    //Parse.User.logIn(username, password, {
    //    success: function() {
    //        console.log("Login successful");
    //    },
    //    error: function() {
    //        console.log("Login failed")
    //    }
    //});

}