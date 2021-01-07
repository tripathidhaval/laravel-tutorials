<x-admin-master>
    @section('content')
<h1>Edit Permission: {{$permission->name}}</h1>
    <div class="row">
    <div class="col-sm-6">
        <form method="post" action="{{route('admin.permissions.update', $permission)}}" enctype="multipart/form-data">
        @csrf
        @method('PUT')
            <div class="form-group">
                <label for="title">Name</label>
                <input type="text" name="name" class="form-control" id="name" aria-describedby="" 
                placeholder="Enter Permission Name" value="{{$permission->name}}">
            </div>

            <button type="submit" class="btn btn-primary">Update</button>
        </form>

    </div>        
    </div>
    @endsection
</x-admin-master>
