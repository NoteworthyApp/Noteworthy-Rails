Parse.initialize("uGqVPX8ZdhRsRzYK4pRGNvzjwi2bljbNEJtvifHc", "86Q1tN3pxwdVd0RLjiFVFhbnzsLVwXuBHl20l2yg");

var DataService = (function() {

    function userLogin(name) {
        var userName = name;
        $.ajax({
            url: '/site/test',
            type: 'GET',
            data: {name: userName}
        });
        // window.location.href = '/site/test';
    }


    return {
        login: function(name) {
            userLogin(name);
        }
    };
})();