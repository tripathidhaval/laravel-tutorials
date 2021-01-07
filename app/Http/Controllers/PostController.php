<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\Post;

class PostController extends Controller
{
    public function index(){
        $posts = auth()->user()->posts()->paginate(5);
        //$posts = auth()->user()->posts;
        //$posts = Post::all();
        return view('admin.posts.index', ['posts'=>$posts]);
    }

    //public function show($id){
        //$post = Post::findOrFail($id);
    public function show(Post $post){
        return view('blog-post', ['post' => $post]);
    }

    public function create(){
        return view('admin.posts.create');
    }

    public function store(Request $request){
        //$this->authorize('create', App\Http\Controllers\PostController::class);

        $inputs = request()->validate([
            'title'=>'required|min:8|max:255',
            'post_image'=>'file',
            'body'=>'required'
        ]);

        if(request('post_image')){
            $inputs['post_image'] = request('post_image')->store('images');
        }

        auth()->user()->posts()->create($inputs);

        $request->session()->flash('success', 'Post was created');

        return redirect()->route('adminpost.index');
        //return back();
    }

    public function edit(Post $post){
        $this->authorize('update', $post); // Only allow owner to edit the post
        /*if(auth()->user()->can('view', $post)){

        }*/
        //$post = Post::findOrFail($post);
        return view('admin.posts.edit', ['post'=>$post]);
    }

    public function destroy(Post $post, Request $request){
        /*if(auth()->user()->id != $post->user_id){
            $request->session()->flash('message', 'Post Could not be deleted because you are not an owner of the post');
            return back();
        }*/

        $this->authorize('delete', $post); 

        $post->delete();
        $request->session()->flash('warning', 'Post was deleted');
        //Session::flash('message', 'Post was deleted');
        return back();
    }

    public function update(Post $post, Request $request){
        $inputs = request()->validate([
            'title'=>'required|min:8|max:255',
            'post_image'=>'file',
            'body'=>'required'
        ]);

        if(request('post_image')){
            $inputs['post_image'] = request('post_image')->store('images');
            $post->post_image = $inputs['post_image'];
        }

        $post->title = $inputs['title'];
        $post->body = $inputs['body'];
        
        $this->authorize('update', $post); // Only allow owner to edit the post
        //auth()->user()->posts()->save($post); // User id will be updated with logged in user
        $post->update();
        $request->session()->flash('success', 'Post was updated');
        return redirect()->route('adminpost.index');
        
    }
}
