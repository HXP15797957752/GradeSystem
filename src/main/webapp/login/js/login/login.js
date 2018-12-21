$(function(){
    // 登录
    function login() {
        var data = {
            userName: $("input[name='userName']").val(),
            passWord: $("input[name='password']").val()
        }
        var errMsg = $('.errMsg')
        if(data.userName == '' || data.passWord == '') {
            errMsg.html('用户名和密码不能为空！')
            return
        }else{
            $.ajax({
                url:baseUrl+'/dwpf/mark/appLogin',
                type: 'get',
                async: false,
                data: data,
                dataType:"json",
                withCredentials:true,
                data: data,
                success: function(res) {
                    localStorage.clear()
                    if (res.user) {
                        var user = JSON.stringify(res.user)
                        localStorage.setItem('user',user)
                        errMsg.html('登陆成功!')
                            setTimeout( () => {
                                window.location.href = './index.html'
                                // window.location.href = res.url
                            },1000)
                    } else {
                        errMsg.html(res.loginError)
                        setTimeout( () => {
                            window.location.href = res.url
                            // window.location.href = res.url
                        },1000)
                    }
                },
                error:function (error) {
                    console.log(error)
                }
            })
        }
    }
    $("input[type='submit']").click(function(){
        login()
    }) 
})