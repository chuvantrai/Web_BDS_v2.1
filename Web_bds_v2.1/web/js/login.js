/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkForm(){
    var username= document.getElementsByTagName('input')[0].value;
    var password= document.getElementsByTagName('input')[1].value;
    var displayname= document.getElementsByTagName('input')[2].value;
    var sdt= document.getElementsByTagName('input')[3].value;
    if(username==''||username.length <=4){
        alert('Hãy nhập đúng theo yêu cầu!');
        return false;
    }
    if(password==''||password.length <=4){
        alert('Hãy nhập đúng theo yêu cầu!');
        return false;
    }
    if(displayname==''||displayname.length <=4){
        alert('Hãy nhập đúng theo yêu cầu!');
        return false;
    }

    if(sdt==''||sdt<1000000000||sdt>9999999999){
        alert('Hãy nhập đúntheo yêu cầu!'+sdt/2);
        return false;
    }

}
function DN1(){
    window.location.href = "http://localhost:8080/Project_He153014/view/home.jsp";
}
