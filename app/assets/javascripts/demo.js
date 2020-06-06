// $.ajax({
//     type: "GET",
//     url: "/articles/19",
//     dataType: "json",
//     success: function(data){
//         alert ("Title:"+data.title +"\nDescription:"+ data.description) 
//     }     ,   
//     error: function(data){
//         alert ("error")
//     }
// });


// $(document).ready(function(){
 
//     $('#submit').click(function(event){
//         event.preventDefault();
 
//         $.ajax({
//             url: '/articles',
//             type: 'POST',
//             success: function(a){
//                 alert(a.title);
//                 console.log(a.title);
//             }
//         });
 
//     });
 
 
// });


// $(document).ready(function(){
//     $('#submit').submit(function(event){
//         event.preventDefault();
//         var request_method=$(this).attr("method")
//         var form_data=$(this).serialize();
//         $ajax({
//             url:'/articles/abc',
//             type: request_method,
//             data: form_data,
//             dataType:"json",
//             success: function(data){
//                 alert ("done");
//             }, 
//             error: function(data){
//                 alert("not done");
//                 }
//             })
//     });
// });


