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
          $('#picture').val($(this).data('pic'));
          $('#useredit_name').val($(this).data('name'));
          $('#editaddress').val($(this).data('address'));
          $('#editemail').val($(this).data('email'));
          $('#editcontactnum').val($(this).data('contactnum'));
         
          //console.log($(this).data('pass'));
          $('#myModal').modal('show');
          //console.log($(this).data('name') + $(this).data('points'));
      });
  
      $('.modal-footer').on('click', '.edit', function() {
  
          $.ajax({
              type: 'post',
              url: '/admin/member/edit',
              data: {
                
                  '_token': $('input[name=_token]').val(),
                  'id': $("#fid").val(),
                  'name': $('#useredit_name').val(),
                  'pic': $('#picture').val(),
                  'address': $('#editaddress').val(),
                  'email': $('#editemail').val(),
                  'contactnum': $('#editcontactnum').val()
              },
              success: function(data) {
                  console.log(data);
                    $('.item' + data.id).replaceWith(`
                        <tr class='item${data.id}'><td>
                        <img src="/profileimg/${data.pic}" alt="" class="profile-img"></td>
                        <td>${data.name}</td><td>${data.email}</td>
                        <td>${data.address}</td>
                        <td>${data.contactnum}</td>
                        <td style="padding-top:15px;">
                            <a href="javascript:;" 
                                class="edit-modal btn btn-info btn-small" 
                                data-id="${data.id}" 
                                data-name="${data.name}"
                                data-email="${data.email}"  
                                data-contactnum="${data.contactnum}" 
                                data-address="${data.address}">
                            <i class="fa fa-pencil"></i></a> 
                            <a href=""
                                class="delete-modal btn btn-danger btn-small" 
                                data-id="${data.id}">
                            <i class="fa fa-remove"></i></a>
                        </td>
                        </tr>`);
                  
                  //console.log("success");
              }         
          });
           
      });
      $.ajax().done(function(response){
    //check if response has errors object
    });
    $(document).on('click', '.delete-modal', function() {
        $('#footer_action_button').text(" Delete");
        $('#footer_action_button').removeClass('glyphicon-check');
        $('#footer_action_button').addClass('glyphicon-trash');
        $('.actionBtn').removeClass('btn-success');
        $('.actionBtn').addClass('btn-danger');
        $('.actionBtn').addClass('delete');
        $('.modal-title').text('Delete');
        $('.did').text($(this).data('id'));
        $('.deleteContent').show();
        $('.errorContent').hide();
        $('.form-horizontal').hide();
        $('.dname').html($(this).data('name'));
        $('#myModal').modal('show');
    });
    $('.modal-footer').on('click', '.delete', function() {
        $.ajax({
            type: 'post',
            url: '/admin/member/delete',
            data: {
                '_token': $('input[name=_token]').val(),
                'id': $('.did').text()
            },
            success: function(data) {
                $('.item' + $('.did').text()).remove();
            }
        });
    });
});
  