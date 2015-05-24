/* ---------------------------------------------
 Contact form
 --------------------------------------------- */
// $(document).ready(function(){

//     $("#submit_btn").click(function(){
//       console.log("hello from contact_form!");
        
//         //get input field values
//         var first_name = $('#first-name').val();
//         var last_name = $('#last-name').val();
//         var email = $('#email').val();
//         var email = $('#email').val();
//         var email = $('#email').val();
//         var email = $('#email').val();
//         var email = $('#email').val();
//         var email = $('#email').val();
//         debugger;
        
//         //simple validation at client's end
//         //we simply change border color to red if empty field using .css()
//         var proceed = true;
//         if (user_name == "") {
//             $('input[name=name]').css('border-color', '#e41919');
//             proceed = false;
//         }
//         if (user_email == "") {
//             $('input[name=email]').css('border-color', '#e41919');
//             proceed = false;
//         }
        
//         if (user_message == "") {
//             $('textarea[name=message]').css('border-color', '#e41919');
//             proceed = false;
//         }
        
//         // //everything looks good! proceed...
//         // if (proceed) {
//         //     //data to be sent to server
//         //     post_data = {
//         //         'userName': user_name,
//         //         'userEmail': user_email,
//         //         'userMessage': user_message
//         //     };
            
//         //     //Ajax post data to server
//         //     $.post('contact_me.php', post_data, function(response){
            
//         //         //load json data from server and output message     
//         //         if (response.type == 'error') {
//         //             output = '<div class="error">' + response.text + '</div>';
//         //         }
//         //         else {
                
//         //             output = '<div class="success">' + response.text + '</div>';
                    
//         //             //reset values in all input fields
//         //             $('#contact_form input').val('');
//         //             $('#contact_form textarea').val('');
//         //         }
                
//         //         $("#result").hide().html(output).slideDown();
//         //     }, 'json');
            
//         // }
        
//         return false;
//     });
    
//     //reset previously set border colors and hide all message on .keyup()
//     $("#contact_form input, #contact_form textarea").keyup(function(){
//         $("#contact_form input, #contact_form textarea").css('border-color', '');
//         $("#result").slideUp();
//     });
    
// });
