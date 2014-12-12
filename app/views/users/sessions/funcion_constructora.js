function TodoItem(p){
  this.tittle=p;
  this.done= false;
}

function.prototype.save (){

   $.ajax({
         url:url,
         type:'post',
         dataType:'json',
         contentType: 'application/json',
         data: '{"title":"'+this.title+'"}',
         success: function(result){
          console.log(result);

         }
       });
};




