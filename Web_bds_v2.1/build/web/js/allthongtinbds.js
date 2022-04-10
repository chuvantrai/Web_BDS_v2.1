/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function pagger(id,pageindex,totalpage,gap)
{
    var container = document.getElementById(id);
    var result = '<nav aria-label="..."><ul class="pagination">';
    if(pageindex-gap > 1)
        result+='<li class="page-item"><button name="page" value="1" class="page-link">Trang đầu</button></li>';
    for(var i=pageindex-gap;i<pageindex;i++)
        if(i>0)
            result+='<li class="page-item"><button name="page" value="'+i+'" class="page-link">'+i+'</button></li>';
    
    result+= '<li class="page-item active" aria-current="page"><span class="page-link">' +pageindex+ '</span></li>';
    
    for(var i=pageindex+1;i<=pageindex + gap;i++)
        if(i<=totalpage)
            result+='<li class="page-item"><button name="page" value="'+i+'" class="page-link">'+i+'</button></li>';
    
    if(pageindex+gap < totalpage)
        result+='<li class="page-item"><button name="page" value="'+totalpage+'" class="page-link">Trang cuối</button></li>';
        
    result+='</ul></nav>';
    
    container.innerHTML = result;
}
