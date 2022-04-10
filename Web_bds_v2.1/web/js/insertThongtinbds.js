/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkForm4(){
    var tenbds= document.getElementsByTagName('input')[0].value;
    var noidung= document.getElementsByTagName('textarea')[0].value;
    var giachu= document.getElementsByTagName('input')[1].value;
    var giaso= document.getElementsByTagName('input')[2].value;
//    var map= document.getElementsByTagName('input')[3].value;
    var img= document.getElementsByTagName('input')[4].value;
    if(tenbds==''||tenbds.length <=0){
        alert('Không được để trống!');
        return false;
    }
    if(noidung==''||noidung.length <=0){
        alert('Không được để trống!');
        return false;
    }
    if(giachu==''||giachu.length <=0){
        alert('Không được để trống!');
        return false;
    }
    if(giaso==''||giaso.length <=0){
        alert('Không được để trống giá!');
        return false;
    }
    if(img==''||img.length <=0){
        alert('Không được để trống ảnh!');
        return false;
    }
}
function checkForm5(){
    var tenbds= document.getElementsByTagName('input')[0].value;
    var noidung= document.getElementsByTagName('textarea')[0].value;
    var giachu= document.getElementsByTagName('input')[1].value;
    var giaso= document.getElementsByTagName('input')[2].value;
    var img= document.getElementsByTagName('input')[3].value;
    if(tenbds==''||tenbds.length <=0){
        alert('Không được để trống!');
        return false;
    }
    if(noidung==''||noidung.length <=0){
        alert('Không được để trống!');
        return false;
    }
    if(giachu==''||giachu.length <=0){
        alert('Không được để trống!');
        return false;
    }
    if(giaso==''||giaso.length <=0){
        alert('Không được để trống!');
        return false;
    }
}
