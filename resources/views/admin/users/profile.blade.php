<x-admin-master>
    @section('content')
        <h1>User Profile : {{$user->name}}</h1>

        <form method="post" enctype="multipart/form-data" action="{{route('user.profile.update', $user)}}">
            @csrf
            @method('PUT')
            <div class="mb-4">
                <img class="img-profile rounded-circle" src="{{$user->avatar}}" alt="Image not loaded" height="100px">
            </div>

            <div class="form-group">
                <input type="file" name="avatar">
            </div>

            <div class="form-group">
                <label for="username">UserName</label>
                <input type="text" name="username" class="form-control {{$errors->has('username') ? 'is-invalid' : ''}}"
                id="username" value="{{$user->username}}">
                @error('username')
                    <div class="alert alert-danger">{{$message}}</div>
                @enderror
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" class="form-control"
                id="name" value="{{$user->name}}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" name="email" class="form-control"
                id="email" value="{{$user->email}}">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="text" name="password" class="form-control"
                id="password">
            </div>
            <div class="form-group">
                <label for="password-confirm">Confirm Password</label>
                <input type="text" name="password-confirmation" class="form-control"
                id="password-confirmation">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        
        </form>

        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead>
            <tr>
                <th>options</th>
                <th>Id</th>
                <th>Name</th>
                <th>Slug</th>
                <th>Attach</th>
                <th>Detach</th>
            </tr>
            </thead>
            <tfoot>
            <tr>
                <th>options</th>
                <th>Id</th>
                <th>Name</th>
                <th>Slug</th>
                <th>Attach</th>
                <th>Detach</th>
            </tr>
            </tfoot>
            <tbody>
            @foreach($roles as $role)
            <tr>
                <td>
                    <input type="checkbox"
                    @foreach($user->roles as $user_role)
                        @if($user_role->slug == $role->slug)
                            checked
                        @endif
                    @endforeach
                ></td>
                <td>{{$role->id}}</td>
                <td><a href="#">{{$role->name}}</a></td>
                <td>{{$role->slug}}</td>
                <td>
                <form method="post" action="{{route('users.role.attach', $user)}}">
                @csrf
                @method('PUT')
                <input type="hidden" value="{{$role->id}}" name="role">
                <button class="btn btn-primary"
                @if($user->roles->contains($role))
                    disabled="disabled"
                @endif
                >
                    Attach
                </button>
                </form>
                </td>
                <td>
                <form method="post" action="{{route('users.role.detach', $user)}}">
                @csrf
                @method('PUT')
                    <input type="hidden" value="{{$role->id}}" name="role">
                    <button class="btn btn-danger"
                    @if(!$user->roles->contains($role))
                        disabled="disabled"
                    @endif            
                    >
                        Detach
                    </button>
                </form>
                </td>
            </tr>
            @endforeach
            </tbody>
        </table>

    @endsection
</x-admin-master>