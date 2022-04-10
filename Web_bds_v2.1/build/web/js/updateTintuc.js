/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function checkForm4(){
    var tieude= document.getElementsByTagName('input')[0].value;
    var ngay= document.getElementsByTagName('input')[1].value;
    var noidung= document.getElementsByTagName('textarea')[0].value;
    var img= document.getElementsByTagName('input')[2].value;
    if(tieude==''||tieude.length <=0){
        alert('Không được để trống tiêu đề!');
        return false;
    }
    if(ngay==''||ngay.length <=0){
        alert('Không được để trống ngày!');
        return false;
    }
    if(noidung==''||noidung.length <=0){
        alert('Không được để trống nội dung này!');
        return false;
    }
//    if(img==''||img.length <=0){
//        alert('Không được để trống ảnh!');
//        return false;
//    }
}