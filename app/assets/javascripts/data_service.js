var DataService = (function() {

    function userLogin(username, password) {
        $.ajax({
            url: '/site/user_login',
            type: 'GET',
            data: {username: username, password: password},
            success: function(data) {
                console.log("Login was successful. REST API is working!!");
                console.log(data);
            }
        });
    }

    function signUp(username, password, email) {
        $.ajax({
            url: '/site/sign_in_test',
            type: 'POST',
            data: {username: username, password: password, email: email},
            success: function(data) {
                console.log("sign up successful!");
                console.log(data);
            }
        });
    }


    return {
        login: function(username, password) {
            userLogin(username, password);
        },
        signUp: function(username, password, email) {
            signUp(username, password, email);
        }
    };

})();