<?php

namespace App\Http\Controllers;

use App\Models\Ac;
use Illuminate\Http\Request;

class AcApiController extends Controller
{
    public function index()
    {
        $data = Ac::all();
        if ($data) {
            return response()->json($data);
        } else {
            return response()->json(['error' => 'Not Found!']);
        }
    }

    public function details($id)
    {
        $dataDetail = Ac::find($id);
        if ($dataDetail) {
            return response()->json($dataDetail);
        } else {
            return response()->json(['error' => 'Not Found!']);
        }
    }
}
