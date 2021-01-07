<x-admin-master>

    @section('content')
        <h1 class="h3 mb-4 text-gray-800">Create Post From Admin Page</h1>
        <form method="post" action="{{route('adminpost.store')}}" enctype="multipart/form-data">
        @csrf
        
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" class="form-control" id="title" aria-describedby="" 
                placeholder="Enter Title">
            </div>

            <div class="form-group">
                <label for="file">File</label>
                <input type="file" name="post_image" class="form-control-file" id="post_image">
            </div>

            <div class="form-group">
            <label for="file">Body</label>
                <textarea name="body" id="body" class="form-control" cols="30" rows="10"></textarea>
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    @endsection
</x-admin-master>