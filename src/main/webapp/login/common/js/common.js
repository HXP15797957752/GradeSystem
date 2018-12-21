var baseUrl = 'http://28.5.23.160:8080'

// 分行考核评估
function assess() {
    var userMsg = localStorage.getItem('user')
    var urlinfo = window.location.href,//获取url 
    type = urlinfo.split("?")[1].split("=")[1]; //拆分url得到”=”后面的参数 
    console.log(JSON.parse(userMsg))
    var userId = JSON.parse(userMsg).userId
    var data = {
        userName: userId,
        type: type
    }
    $.ajax({
        url:baseUrl+'/dwpf/mark/getAppraiseePage',
        type: 'get',
        async: false,
        data: data,
        dataType:"json",
        withCredentials:true,
        data: data,
        success: function(res) {
            var listGroup = []
            var index = 0
            var status = res.status
            var appGroupDTOList = res.appGroupDTOList
            if(status == 0) {
                var html = ''
                var dateDTOHtml = ''
                // console.log(appGroupDTOList[0])
                for (var i in appGroupDTOList[0].copyDateDTO) {
                    if(appGroupDTOList[0].copyDateDTO[i].bankExamine) {
                        $('.finish-edit').css('display','block')
                         $('.assess-editTd').css('visibility','hidden')
                    }else{
                         $('.finish-edit').css('display','none')
                         $('.assess-editTd').css('visibility','')
                    }
                    html += `
                        <tr>
                            <td style="height:52px">${parseFloat(i)+1}</td>
                            <td style="height:52px">${appGroupDTOList[0].copyDateDTO[i].orgName}</td>
                            <td style="height:52px">${appGroupDTOList[0].copyDateDTO[i].compScore}</td>
                            <td style="height:52px"> 
                                <span style="display:none">10</span>
                                <div class="assess-editTd" data-toggle="popover" style="width:100%;margin:0 auto;">   
                                    <img class="assess-edit" style="width:20px;height:20px;" src="images/edit.png" alt="">
                                </div>
                                <div class="focuse-input" style="display:none">
                                    <input type="text">
                                    <img style="width:18px;height:18px;vertical-align:middle;margin-top:-6px" src="images/edit.png" alt="">
                                </div>
                                <div class="finish-edit" data-toggle="popover" style="position:relative;vertical-align:top;margin-top:-21px">
                                    <span style="color:#fff;position:absolute;top:3px;left:21px">${appGroupDTOList[0].copyDateDTO[i].bankExamine}</span>
                                    <img style="width:45.5px;height:23px;" src="images/finish.png" alt="">
                                </div>
                            </td>        
                            <td style="height:52px"><span>${appGroupDTOList[0].copyDateDTO[i].avgScore}</span></td> 
                            <td style="height:52px" class="red-color">${appGroupDTOList[0].copyDateDTO[i].totleScore}</td>                                    
                        </tr>	
                    `
                }
                for(var i in appGroupDTOList[0].dateDTO) {
                    console.log(appGroupDTOList[0].dateDTO)
                     dateDTOHtml += `
                        <tr>
                            <td style="height:52px">${parseFloat(i)+1}</td>
                            <td style="height:52px">${appGroupDTOList[0].dateDTO[i].orgName}</td>
                            <td style="height:52px">${appGroupDTOList[0].dateDTO[i].totleScore}</td> 
                        <tr>
                    `
                }
             $('.left-tbody').html(html)
             $('.right-tbody').html(dateDTOHtml)
            }
        },
        error: function(error) {

        }
    })
}