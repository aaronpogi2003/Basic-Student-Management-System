<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Students;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;
use Intervention\Image\Laravel\Facades\Image;

class StudentController extends Controller
{
    public function index(){
        // $data = Students::where('age', '<=', 19)->orderBy('first_name', 'asc')->limit(5)->get();

        // $data = DB::table('students')
        //         ->select(DB::raw('count(*) as gender_count, gender'))
        //         ->groupBy('gender')->get();

        $data = array("students" => DB::table('students')->orderBy('created_at', 'desc')->simplePaginate(10));
        return view('students.index', $data);
    }

    public function show($id){
        $data = Students::findOrFail($id);
        return view('students.edit', ['student' => $data]);
    }

    public function create(){
        return view('students.create')->with('title', 'Add New');
    }

    public function store(Request $request){
        $validated = $request->validate([
            "first_name" => ['required', 'min:4'],
            "last_name" => ['required', 'min:4'],
            "gender" => ['required'],
            "age" => ['required'],
            "email" => ['required', 'email', Rule::unique('students', 'email')],
        ]);

        if($request->hasFile('student_image')){

            $request->validate([
                "student_image" => 'mimes:jpeg,png,bmp,tiff|max:4096'
            ]);

            $filenameWithExtension = $request->file("student_image")->getClientOriginalName(); // Corrected to get the original name
            $filename = pathinfo($filenameWithExtension, PATHINFO_FILENAME);
            $extension = $request->file("student_image")->getClientOriginalExtension();
            $filenameToStore = $filename.'_'.time().'.'.$extension;
            $smallThumbnail = $filename.'_'.time().'.'.$extension;

            $request->file('student_image')->storeAs('public/student', $filenameToStore);
            $request->file("student_image")->storeAs('public/student/thumbnail', $smallThumbnail);

            $thumbNail = 'storage/student/thumbnail/'.$smallThumbnail;
            $this->createThumbnail($thumbNail, 150, 150);

            $validated['student_image'] = $filenameToStore; // Removed the extra $
        }

        Students::create($validated);

        return redirect('/')->with('message', 'New Student was added successfully');
    }

    public function update(Request $request, Students $student){
        $validated = $request->validate([
            "first_name" => ['required', 'min:4'],
            "last_name" => ['required', 'min:4'],
            "gender" => ['required'], 
            "age" => ['required'],
            "email" => ['required', 'email'],
        ]);

        if($request->hasFile('student_image')){

            $request->validate([
                "student_image" => 'mimes:jpeg,png,bmp,tiff|max:4096'
            ]);

            $filenameWithExtension = $request->file("student_image")->getClientOriginalName(); // Corrected to get the original name
            $filename = pathinfo($filenameWithExtension, PATHINFO_FILENAME);
            $extension = $request->file("student_image")->getClientOriginalExtension();
            $filenameToStore = $filename.'_'.time().'.'.$extension;
            $smallThumbnail = $filename.'_'.time().'.'.$extension;

            $request->file('student_image')->storeAs('public/student', $filenameToStore);
            $request->file("student_image")->storeAs('public/student/thumbnail', $smallThumbnail);

            $thumbNail = 'storage/student/thumbnail/'.$smallThumbnail;
            $this->createThumbnail($thumbNail, 150, 150);

            $validated['student_image'] = $filenameToStore; // Removed the extra $
        }

        $student->update($validated);

        return back()->with('message', 'Data was successfully updated');
    }

    public function destroy(Students $student){
        $student->delete();
        return redirect('/')->with('message', 'Data was successfully deleted');
    }

    public function createThumbnail($path, $width, $height){
        $img = Image::read($path)->resize($width, $height, function($constraint){
            $constraint->aspectRatio();
        });
        $img->save($path);
    }
}
