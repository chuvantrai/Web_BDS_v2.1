/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkForm2(){
    var username= document.getElementsByTagName('input')[0].value;
    var sdt= document.getElementsByTagName('input')[1].value;
    var noidung= document.getElementsByTagName('textarea')[0].value;
    if(username==''||username.length <=0){
        alert('Không được để trống họ tên!');
        return false;
    }
    if(sdt==''||sdt.length <=0){
        alert('Không được để trống số điện thoại!');
        return false;
    }
    if(noidung==''||noidung.length <=0){
        alert('Không được để trống nội dung này!');
        return false;
    }

}
