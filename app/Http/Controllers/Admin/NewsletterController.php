<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Admin\AdminController;

use App\Advice;
use App\Moshavere;;

class NewsletterController extends AdminController
{
    public function index()
    {
        $moshaveres = Moshavere::orderBy('created_at', 'desc')->get();
        $newsletters = Advice::orderBy('created_at', 'desc')->get();
        return view('panel.newsletters.index', compact('newsletters','moshaveres'));
    }

    public function destroy($id)
    {
        $newsletter = Advice::findOrFail($id);
        $newsletter->delete();
        return redirect('/panel/newsletters')->with('success', 'با موفقیت حذف شد!');
    }
}
