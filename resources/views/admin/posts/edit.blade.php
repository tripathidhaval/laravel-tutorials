<x-admin-master>

    @section('content')
        <h1 class="h3 mb-4 text-gray-800">Edit Post From Admin Page</h1>
        <form method="post" action="{{route('adminpost.update', $post->id)}}" enctype="multipart/form-data">
        @csrf
        @method('PATCH')
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" class="form-control" id="title" aria-describedby="" 
                placeholder="Enter Title" value="{{$post->title}}">
            </div>

            <div class="form-group">
                <label for="file">File</label>
                <input type="file" name="post_image" class="form-control-file" id="post_image">
                <br/>
                @if($post->post_image)
                    <img src="{{$post->post_image}}" alt="Image not loaded" height="100px">
                @else
                    <b>Image has not been uploaded yet</b>
                @endif
                <hr/>
            </div>

            <div class="form-group">
            <label for="file">Body</label>
                <textarea name="body" id="body" class="form-control" cols="30" rows="10">{{$post->body}}</textarea>
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    @endsection
</x-admin-master>