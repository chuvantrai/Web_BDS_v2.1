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
        result+='<li class="page-item"><a class="page-link" href="listyeucau?page=1">Trang đầu</a></li>';
    for(var i=pageindex-gap;i<pageindex;i++)
        if(i>0)
            result+='<li class="page-item"><a class="page-link" href="listyeucau?page='+i+'">'+i+'</a></li>';
    
    result+= '<li class="page-item active" aria-current="page"><a class="page-link">' +pageindex+ '</a></li>';
    
    for(var i=pageindex+1;i<=pageindex + gap;i++)
        if(i<=totalpage)
            result+='<li class="page-item"><a class="page-link" href="listyeucau?page='+i+'">'+i+'</a></li>';
    
    if(pageindex+gap < totalpage)
        result+='<li class="page-item"><a class="page-link" href="listyeucau?page='+totalpage+'">Trang cuối</a></li>';
        
    result+='</ul></nav>';
    
    container.innerHTML = result;
}