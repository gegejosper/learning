$(document).ready(function() {
    $(document).on('click', '.edit-modal', function() {
          $('#footer_action_button').text("Update");
          $('#footer_action_button').addClass('glyphicon-check');
          $('#footer_action_button').removeClass('glyphicon-trash');
          $('.actionBtn').addClass('btn-success');
          $('.actionBtn').removeClass('btn-danger');
          $('.actionBtn').addClass('edit');
          $('.modal-title').text('Edit Profile');
          $('.errorContent').hide();
          $('.deleteContent').hide();
          $('.form-horizontal').show();
          $('#fid').val($(this).data('id'));
          $('#useredit_name').val($(this).data('name'));
          $('#editaddress').val($(this).data('password'));
          $('#editcontactnum').val($(this).data('address'));
         
          //console.log($(this).data('pass'));
          $('#myModal').modal('show');
          //console.log($(this).data('name') + $(this).data('points'));
      });
  
      $('.modal-footer').on('click', '.edit', function() {
  
          $.ajax({
              type: 'post',
              url: '/profile/edit',
              data: {
                  //_token:$(this).data('token'),
                  '_token': $('input[name=_token]').val(),
                  'id': $("#fid").val(),
                  'name': $('#useredit_name').val(),
                  'address': $('#editaddress').val(),
                  'contactnum': $('#editcontactnum').val()
              },
              success: function(data) {
                  console.log(data);
                  //$('.item' + data.id).replaceWith("<tr class='item" + data.id + "'><td>" + data.name + "</td><td>" + data.email + "</td><td>please refresh</td><td>" + data.usertype + "</td><td class='td-actions'><button class='edit-modal btn btn-small btn-success' data-id='" + data.id + "' data-name='" + data.name + " data-password='" + data.password + "' data-usertype='" + data.usertype + "' data-email='" + data.email + "' ><i class='btn-icon-only icon-pencil'> </i></button><a class='delete-modal btn btn-danger btn-small' data-id='" + data.id + "' ><i class='btn-icon-only icon-remove'> </i></a></td></tr>");
                  $('#userdata').replaceWith(
                      ` <div class="media-body mb-5 text-white" id="userdata">
                        <h4 class="mt-0 mb-2"> ${data.name} </h4>
                        <ul class="list-unstyled user_data">
                        <li>
                            <i class="fa fa-map-marker user-profile-icon"></i> ${data.address}
                        </li>
                        <li class="m-top-xs">
                            <i class="fa fa-phone user-profile-icon"></i>
                            <a href="tel:${data.contactnum}" target="_blank">${data.contactnum}</a>
                        </li>
                        </ul>
                        </div>
                      `
                  );
                  //console.log("success");
              }         
          });
           
      });
      $.ajax().done(function(response){
    //check if response has errors object
    if(response.errors){

    // do what you want with errors, 

    }
    });
});
  