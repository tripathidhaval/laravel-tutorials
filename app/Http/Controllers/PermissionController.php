<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Permission;
use Illuminate\Support\Str;
use Session;

class PermissionController extends Controller
{
    public function index(){
        $permissions = Permission::all();
        return view('admin.permissions.index', [
            'permissions' => $permissions
        ]);
    }

    public function store(){
        request()->validate([
            'name' => ['required', 'unique:permissions']
        ]);

        Permission::create([
            'name'=> Str::ucfirst(request('name')),
            'slug'=> Str::of(Str::lower(request('name')))->slug('-')
        ]);
        
        Session::flash('success', 'Permission created successfully');
        return back();
    }

    public function destroy(Permission $permission){
        $permission->delete();

        Session::flash('warning', 'Permission '. $permission->name.' deleted successfully');
        return back();
    }

    public function edit(Permission $permission){
        return view('admin.permissions.edit', [
            'permission' => $permission
            ]);
    }

    public function update(Permission $permission){
        $permission->name = Str::ucfirst(request('name'));
        $permission->slug = Str::of(Str::lower(request('name')))->slug('-');

        if($permission->isDirty('name')){
            $permission->update();
            Session::flash('success', 'Permission updated successfully');    
        }else{
            Session::flash('danger', 'Nothing has been updated');
            return back();
        }
        
        return redirect()->route('admin.permissions.index');
    }

}
