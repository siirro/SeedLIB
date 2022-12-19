$('.q1').click(function(){
         $('.a').slideUp();
         if ($(this).children('.a').is(':hidden')){
            $(this).children('.a').slideDown();
         } else{
            $(this).children('.a').slideUp();
         }
      });