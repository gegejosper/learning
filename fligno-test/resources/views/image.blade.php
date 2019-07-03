@extends('layouts.member')
 
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
        <div id="success"></div>
        <div class="row">
            <div class="col-lg-6">
            <div id="upload-demo"></div>
            <strong>Select Photo:</strong>
            <input type="file" id="image">
            <input type="hidden" id="userid" value='{{ Auth::user()->id }}'>
            <button class="btn btn-primary btn-block upload-image" style="margin-top:2%">Upload Image</button>
                </div>
                <div class="col-lg-6">
                <div id="preview-crop-image" style="background:#9d9d9d;width:300px;padding:50px 50px;height:300px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-8 mx-auto">
        

    </div>
</div>
<script type="text/javascript">

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
        $('#success').replaceWith(`
        <div class="alert alert-success" role="alert">
        Profile image successfully updated! <a href="/profile"> <em>back</em></a>
        </div>
        `);
        html = `<img src="${img}" />`;
        $("#preview-crop-image").html(html);
      }
    });
  });
});
</script>
@endsection