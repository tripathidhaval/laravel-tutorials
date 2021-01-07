<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Role;
use App\Models\Permission;

use Session;

class RoleController extends Controller
{
    public function index(){
        $roles = Role::all();
        
        return view('admin.roles.index', ['roles'=>$roles]);
    }

    public function store(){
        request()->validate([
            'name' => ['required', 'unique:roles']
        ]);

        Role::create([
            'name'=> Str::ucfirst(request('name')),
            'slug'=> Str::of(Str::lower(request('name')))->slug('-')
        ]);
        
        Session::flash('success', 'Role created successfully');
        return back();
    }

    public function destroy(Role $role){
        $role->delete();

        Session::flash('warning', 'Role '. $role->name.' deleted successfully');
        return back();
    }

    public function edit(Role $role){
        return view('admin.roles.edit', [
            'role' => $role,
            'permissions' => Permission::all()
            ]);
    }

    public function update(Role $role){
        /*$inputs = request()->validate([
            'name' => ['required', 'unique:roles']
        ]);*/

        $role->name = Str::ucfirst(request('name'));
        $role->slug = Str::of(Str::lower(request('name')))->slug('-');

        if($role->isDirty('name')){
            $role->update();
            Session::flash('success', 'Role updated successfully');    
        }else{
            Session::flash('danger', 'Nothing has been updated');
            return back();
        }
        
        return redirect()->route('admin.roles.index');
    }

    public function attach_permission(Role $role){
        $role->permissions()->attach(request('permission'));
        return back();
    }

    public function detach_permission(Role $role){
        $role->permissions()->detach(request('permission'));
        return back();
    }

}
