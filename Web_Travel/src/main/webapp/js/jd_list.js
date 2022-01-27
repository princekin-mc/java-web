function Filter(field,value){  
    var $ = function(ele){return document.getElementById(ele);}  
    var ipts = $('filterForm').getElementsByTagName('input'),result=[];  
    for(var i=0,l=ipts.length;i<l;i++){  
        if(ipts[i].getAttribute('to')=='filter'){  
           result.push(ipts[i]);  
       }  
    }  
   if($(field)){  
        value = value || '';  
        $(field).value = value;  
        for(var j=0,len=result.length;j<len;j++){  
           if(result[j].value==''){  
              result[j].parentNode.removeChild(result[j]);  
           }  
       }  
        var url = $("diqu").value+"_"+$("level").value+"_"+$("month").value+"_"+$("classid").value+".html";
        console.log(url);
         window.location.href="http://www.k1u.com/"+url;
    }  
    return false;  
} 


