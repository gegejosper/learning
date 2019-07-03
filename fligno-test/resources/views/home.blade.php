@extends('layouts.member')
@section('content')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<section>
<div class="row mt-5">
            <div class="table-responsive pt-5">
                <div class="row">
                    <div class="col-lg-8"> <h2>Members List</h2> </div>
                    <div class="col-lg-4"> 
                    <form class="form-inline my-2 my-lg-0" method="get" action="{{route('membersearch')}}">
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
                    <tr>
                        <td>
                        <img src="{{asset ('profileimg')}}/{{$User->profileimage}}" alt="" class="profile-img"></td>
                        <td><a href="/member/{{$User->id}}">{{$User->name}}</a></td>
                        <td>{{$User->email}}</td>
                        <td>{{$User->address}}</td>
                        <td>{{$User->contactnum}}</td>
                    </tr>
                    @endforeach
                </tbody>
                </table>
                {{ $userData->links() }}
            </div>
        </div>
</section>
@endsection
