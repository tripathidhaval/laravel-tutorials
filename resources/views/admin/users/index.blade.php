<x-admin-master>
    @section('content')
        <h1>List of all users</h1>

                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>username</th>
                      <th>Avatar</th>
                      <th>Name</th>
                      <th>Registered date</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Id</th>
                      <th>username</th>
                      <th>Avatar</th>
                      <th>Name</th>
                      <th>Registered date</th>
                      <th>Updated At</th>
                      <th>Delete</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  @foreach($users as $user)
                    <tr>
                        <td>{{$user->id}}</td>
                        <td><a href="{{route('user.profile.show', $user)}}">{{$user->username}}</a></td>
                        <td><img src="{{$user->avatar}}" alt="Image not uploaded" height="40px"></td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->created_at->diffForHumans()}}</td>
                        <td>{{$user->updated_at->diffForHumans()}}</td>
                        <td>
                          
                          <form method="post" action="{{route('admin.users.destroy', $user)}}"
                            enctype="multipart/form-data">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-danger">Delete</button>
                          </form>
                          
                        </td>
                    </tr>
                  @endforeach
                  </tbody>
                </table>
 
              <?php /* <div class="d-flex">
                <div class="mx-auto">
                  {{$users->links('vendor.pagination.bootstrap-4')}}
                </div>
              </div>
              */ ?>

          


    @endsection

    @section('scripts')
        <!-- Page level plugins -->
        
        <script src="{{asset('vendor/datatables/jquery.dataTables.min.js')}}"></script>
        <script src="{{asset('vendor/datatables/dataTables.bootstrap4.min.js')}}"></script>
        
        <!-- Page level custom scripts -->
         <script src="{{asset('js/demo/datatables-demo.js')}}"></script> 
         
    @endsection
</x-admin-master>