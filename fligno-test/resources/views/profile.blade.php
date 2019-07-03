@extends('layouts.member')

@section('content')
<link rel="stylesheet" href="{{ asset('css/imgareaselect.css') }}">
<div class="container mt-5">

<div class="row">
    <div class="col-xl-8 col-md-6 col-sm-10 mx-auto">

        <!-- Profile widget -->
        <div class="bg-white shadow rounded overflow-hidden">

                   
            <div class="px-4 pt-0 pb-4 bg-dark">
                <div class="media align-items-end profile-header">
                    
                    <div class="profile mr-3 mt-5">
                        @if (count($userData) > 0)
                            @foreach($userData as $User)
                                <img src="{{ asset('profileimg')}}/{{$User->profileimage}}" alt="Profile Picture" width="130" class="rounded mb-2 img-thumbnail">
                            @endforeach
                        @else
                        <img src="http://placehold.it/150x150" alt="..." width="130" class="rounded mb-2 img-thumbnail">
                        @endif
                        <a href="/profile/image" class="btn btn-primary btn-block btn-small" style="margin-top:2%">Update Image</a>
                    </div>
                    
                    <div class="media-body mb-5 text-white" id="userdata">
                        <h4 class="mt-0 mb-2"> {{ Auth::user()->name }} </h4>
                        <ul class="list-unstyled user_data" >
                        @if (count($userData) > 0)
                            @foreach($userData as $User)
                                <li><i class="fa fa-map-marker user-profile-icon"></i> {{$User->address}}</li>
                                <li class="m-top-xs"><i class="fa fa-phone user-profile-icon"></i>
                                <a href="tel:" target="_blank">{{$User->contactnum}}</a>
                                </li>
                            @endforeach
                        @else
                        <li><i class="fa fa-map-marker user-profile-icon"></i> <em>Empty</em></li>
                        <li class="m-top-xs"><i class="fa fa-phone user-profile-icon"></i>
                            <em>Empty</em>
                        </li>
                        
                        @endif
                        <li>
                        <a href="javascript:;" class="edit-modal" 
                        @if (count($userData) > 0)
                            @foreach($userData as $User)
                                class="edit-modal btn btn-small btn-success" data-id="{{ Auth::user()->id }}" data-name="{{ Auth::user()->name }}"  data-contactnum="{{$User->contactnum}}" data-address="{{$User->address}}"
                            @endforeach
                        @else
                        class="edit-modal btn btn-small btn-success" data-id="{{ Auth::user()->id }}" data-name="{{ Auth::user()->name }}"  data-contactnum="" data-address=""
                        @endif
                        >Edit Profile</a>

                        </li>
                      </ul>
                    </div>
                </div>
                </div>
                @foreach($userData as $Profile) 
                  @if(!empty($Profile->address))
                      <iframe
                      width="100%"
                      height="450"
                      frameborder="0" style="border:0"
                      src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAcCK_v2zv-qrckUCAHSkhn-H772kOvCTc
                          &q={{$Profile->address}}" allowfullscreen>
                      </iframe>
                  @endif
                @endforeach
            
        </div><!-- End profile widget -->

    </div>
</div>
</div>

<div id="myModal" class="modal fade " role="dialog">
  		<div class="modal-dialog ">
  			<!-- Modal content-->
  			<div class="modal-content">
  				<div class="modal-header">
                  <h4 class="modal-title"></h4>
  					<button type="button" class="close" data-dismiss="modal">&times;</button>
  				</div>
  				<div class="modal-body">
  					<form class="form-horizontal" role="form">
                      {{ csrf_field() }}
  						<div class="form-group">
  							<label class="control-label col-sm-2" for="user_name" >Name:</label>
  							<div class="col-sm-12">
                                  <input type="text" class="form-control" id="useredit_name" >
                                  <input type="hidden" class="form-control" id="fid" disabled>
  							</div>
                            <label class="control-label col-sm-2" for="Address" >Address:</label>
  							<div class="col-sm-12">
                                <input type="text" class="form-control" id="editaddress">
  							</div>
                            <label class="control-label col-sm-2" for="Contact" >Contact:</label>
  							<div class="col-sm-12">
                                <input type="text" class="form-control" id="editcontactnum">
  							</div>          
                        </div>
            
  					</form>
  					<div class="deleteContent">
  						Are you Sure you want to delete <span class="dname"></span> ? <span
  							class="hidden did"></span>
  					</div>
                    <div class="errorContent">
  						There is a problem in adding user account. Please check the details correctly..
  					</div>
  					<div class="modal-footer">
  						<button type="button" class="btn actionBtn" data-dismiss="modal">
  							<span id="footer_action_button" class='glyphicon'> </span>
  						</button>
  						<button type="button" class="btn btn-warning" data-dismiss="modal">
  							<span class='glyphicon glyphicon-remove'></span> Close
  						</button>
  					</div>
  				</div>
  			</div>
		  </div>
        </div>
</div>
<script type="text/javascript">



$.ajaxSetup({

  headers: {
    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')

  }
});


var resize = $('#upload-demo').croppie({
    enableExif: true,
    enableOrientation: true,    
    viewport: { 
        width: 200,
        height: 200,
        type: 'square'
    },
    boundary: {
        width: 300,
        height: 300
    }
});

$('#image').on('change', function () { 
  var reader = new FileReader();
    reader.onload = function (e) {
      resize.croppie('bind',{
        url: e.target.result
      }).then(function(){
        console.log('jQuery bind complete');
      });
    }
    reader.readAsDataURL(this.files[0]);
});

$('.upload-image').on('click', function (ev) {
  resize.croppie('result', {
    type: 'canvas',
    size: 'viewport'
  }).then(function (img) {
    $.ajax({
      url: "{{route('upload.image')}}",
      type: "POST",
      data: {
        '_token':$('input[name=_token]').val(), 
        "image":img
        },
      success: function (data) {
        html = '<img src="' + img + '" />';
        $("#preview-crop-image").html(html);
      }
    });
  });
});
</script>
<script src="{{ asset('js/app.js') }}"></script>
<script src="{{ asset('js/userscript.js') }}"></script>
@endsection
