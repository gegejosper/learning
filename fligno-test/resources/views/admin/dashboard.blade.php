@extends('layouts.admin')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<div class="mt-5">
            <div class="table-responsive pt-5">
                <div class="row">
                    <div class="col-lg-8"> <h2>Members List</h2> </div>
                    <div class="col-lg-4"> 
                    <form class="form-inline my-2 my-lg-0" method="get" action="{{route('adminmembersearch')}}">
                    @csrf
                        <input class="form-control mr-sm-2" type="text" placeholder="Member Search" aria-label="Search" name="q" />
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                    </div>
    
                <table class="table table-striped table-sm">
                <thead>
                    <tr>
                    <th></th>
                    <th>@sortablelink('name', 'Name')</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Contact Number</th>
                    </tr>
                </thead>
                <tbody class="membersresult">
                    @foreach($userData as $User)
                    <tr class="item{{$User->id}}">
                    <td>
                        <img src="{{asset ('profileimg')}}/{{$User->profileimage}}" alt="" class="profile-img"></td>
                    <td>
                        {{$User->name}}</td>
                    <td>{{$User->email}}</td>
                    <td>{{$User->address}}</td>
                    <td>{{$User->contactnum}}</td>
                    <td style="padding-top:15px;">
                        <a href="javascript:;" 
                            class="edit-modal btn btn-info btn-small" 
                            data-id="{{$User->id}}" 
                            data-name="{{$User->name}}"
                            data-email="{{$User->email}}"  
                            data-contactnum="{{$User->contactnum}}" 
                            data-address="{{$User->address}}"
                            data-pic="{{$User->profileimage}}">
                        <i class="fa fa-pencil"></i></a> 
                        <a href="javascript:;" 
                            class="delete-modal btn btn-danger btn-small" 
                            data-id="{{$User->id}}">
                        <i class="fa fa-remove"></i></a>
                    </td>
                    </tr>
                    @endforeach
                </tbody>
                </table>
                {{ $userData->links() }}
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
                                  <input type="hidden" class="form-control" id="picture" disabled>
                              </div>
                            <label class="control-label col-sm-2" for="Email" >Email:</label>
  							<div class="col-sm-12">
                                <input type="text" class="form-control" id="editemail">
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
  						Are you sure you want to delete <span class="dname"></span> ? <span
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
<script src="{{ asset('js/app.js') }}"></script>
<script src="{{ asset('js/usersscriptadmin.js') }}"></script>
@endsection
