Parse.initialize("xaWquA962LKda5zgxedPcBxVMwmtwv0tMwWAvLs4", "rEq8Fx7X2melypPqC47pvw4AVNDNJ142tk4Df2j2");

var DataService = (function() {

    function userLogin(name) {
        var userName = name;
        $.ajax({
            url: '/site/test',
            type: 'GET',
            data: {name: userName}
        });
        //window.location.href = '/site/test';
    }


    return {
        login: function(name) {
            userLogin(name);
        }
    };
})();