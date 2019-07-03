@extends('layouts.guest')

@section('content')

<div class="container mt-5">

<div class="row">
    <div class="col-xl-8 col-md-6 col-sm-10 mx-auto">

        <!-- Profile widget -->
        <div class="bg-white shadow rounded overflow-hidden">

                   
            <div class="px-4 pt-0 pb-4 bg-dark">
                <div class="media align-items-end profile-header">
                    
                    <div class="profile mr-3 mt-5">
                        @foreach($userData as $User)
                            <img src="{{ asset('profileimg')}}/{{$User->profileimage}}" alt="Profile Picture" width="130" class="rounded mb-2 img-thumbnail">
                        @endforeach
                    </div>
                    
                    <div class="media-body mb-5 text-white" id="userdata">
                        @foreach($userData as $User)
                        <h4 class="mt-0 mb-2"> {{ $User->name }} </h4>
                        <ul class="list-unstyled user_data" >
                            <li><i class="fa fa-map-marker user-profile-icon"></i> {{$User->address}}</li>
                            <li class="m-top-xs"><i class="fa fa-phone user-profile-icon"></i>
                            <a href="tel:" target="_blank">{{$User->contactnum}}</a>
                            </li>
                         </ul>
                        @endforeach
                    </div>
                    
                </div>
            </div>
           
            @foreach($User as $Profile) 
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
@endsection
