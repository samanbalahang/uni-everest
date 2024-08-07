<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Admin\AdminController;

use App\Setting;

class SettingController extends AdminController
{
    protected $uploadPath;

    public function __construct()
    {
        parent::__construct();
        $this->uploadPath = public_path('storage/images/settings');
    }

    public function index()
    {
        $settings = Setting::all();
        return view('panel.settings.index', compact('settings'));
    }

    public function create(Setting $settings)
    {
        return view('panel.settings.create', compact('settings'));
    }

    public function store(Request $request)
    {
        $data = $this->handleRequest($request);
        Setting::create($data);
        return redirect('/panel/settings')->with('success', 'با موفقیت افزوده شد!');
    }

    private function handleRequest($request)
    {
        $data = $request->all();
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $fileName = $image->getClientOriginalName();
            $destination = $this->uploadPath;
            $image->move($destination, $fileName);
            $data['image'] = $fileName;
        }
        // $message = $request->input('text');
        // $dom = new \DomDocument();
		// $dom->loadHtml(mb_convert_encoding($message, 'HTML-ENTITIES', "UTF-8"), LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
    
		// $images = $dom->getElementsByTagName('img');
		// foreach($images as $img){
		// 	$src = $img->getAttribute('src');
		// 	if(preg_match('/data:image/', $src)){
		// 		preg_match('/data:image\/(?<mime>.*?)\;/', $src, $groups);
		// 		$mimetype = $groups['mime'];
		// 		$filename = uniqid();
		// 		$filepath = "/storage/images/$filename.$mimetype";
		// 		$image = Image::make($src)
		// 		  ->encode($mimetype, 100)
		// 		  ->save(public_path($filepath));
				
		// 		$new_src = asset($filepath);
		// 		$img->removeAttribute('src');
		// 		$img->setAttribute('src', $new_src);
		// 	}
        // }
        // $data['text'] = $dom->saveHTML();
        return $data;
    }

    public function edit($id)
    {
        $settings = Setting::findOrFail($id);
        return view('panel.settings.edit', compact('settings'));
    }

    public function update(Request $request, $id)
    {
        $settings = Setting::findOrFail($id);
        $data = $this->handleRequest($request);
        $settings->update($data);
        return redirect('/panel/settings')->with('success', 'با موفقیت بروزرسانی شد!');
    }

    public function destroy($id)
    {
        $settings = Setting::findOrFail($id);
        $settings->delete();
        return redirect('/panel/settings')->with('success', 'با موفقیت حذف شد!');
    }
}
