
       $(document).ready(function(){
         $("#panel").click(function(){
            $("#panel").slideUp("fast")
         });
         $("#slide").click(function(){
            $("#panel").slideDown(5000)
         });
         $("#flip").click(function(){
            $("#panel").slideToggle("slow")
         });
         $("#stop").click(function(){
            $("#panel").stop();
         });
       });


       
