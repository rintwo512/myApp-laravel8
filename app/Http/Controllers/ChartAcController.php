<?php

namespace App\Http\Controllers;

use App\Models\Ac;
use App\Models\User;
use App\Models\Chart;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class ChartAcController extends Controller
{
    public function index(Request $request)
    {

        // $lat = -5.147665;
        // $lon = 119.432732;

        // $data = DB::table("users")
        //     ->select(
        //         "users.id",
        //         DB::raw("6371 * acos(cos(radians(" . $lat . ")) 
        //         * cos(radians(users.lat)) 
        //         * cos(radians(users.lon) - radians(" . $lon . ")) 
        //         + sin(radians(" . $lat . ")) 
        //         * sin(radians(users.lat))) AS distance")
        //     )
        //     ->groupBy("users.id")
        //     ->get();

        // dd($data);



        $kalTahun = DB::table('chartac')->select('tahun')->groupBy('tahun')->orderBy('tahun', 'DESC')->get()->count();
        $kal = intval(Chart::sum('total'));

        $list_tahun = DB::table('chartac')
            ->select('tahun')
            ->groupBy('tahun')
            ->orderBy('tahun', 'DESC')
            ->get();


        return view('dashboard', [
            'title' => 'Dashboard',
            'countData' => Ac::count(),
            'countTrash' => Ac::onlyTrashed()->count(),
            'countUsers' => User::count(),
            'list_tahun' => $list_tahun,
            'kal' => $kal,
            'kalTahun' => $kalTahun
        ]);
    }

    public function getChart(Request $request)
    {
        $tahun = $request->tahun;
        $data = Chart::where('tahun', $tahun)
            ->orderBy('tahun', 'ASC')
            ->get()->toArray();
        foreach ($data as $d) {
            $output[] = array(
                'tahun' => $d['tahun'],
                'bulan' => $d['bulan'],
                'total' => $d['total']
            );
        }
        echo json_encode($output);
    }


    public function dataChart(Request $request)
    {

        $input = $request->updateTahun;
        $dataTotalUnit = Chart::where('tahun', $input)->sum('total');

        $dataTahun = Chart::where('tahun', $input)->get();

        $month = ['January', 'February', 'March', 'April', 'May', 'June', 'July', ' August', 'September', 'October', 'November', 'December'];


        $listUpdateTahun = DB::table('chartac')
            ->select('tahun')
            ->groupBy('tahun')
            ->orderBy('tahun', 'DESC')
            ->get();
        return view('chartsAC.update', [
            'title' => 'Chart AC',
            'listUpdateTahun' => $listUpdateTahun,
            'dataChart' => $dataTahun,
            'month' => $month,
            'dataTotalUnit' => intval($dataTotalUnit)
        ]);
    }


    public function updateViewChartAc(Request $request)
    {
        $input = $request->updateTahun;

        $dataTahun = Chart::where('tahun', $input)->get();

        return view('chartsAC.update', [
            'dataChart' => $dataTahun
        ]);

        // return response()->json($dataTahun);
    }

    public function deleteDataChartAc($id)
    {
        Chart::where('id', $id)->delete();

        return response()->json(['success' => 'Ok']);
    }

    public function tambahDataChart(Request $request)
    {
        $rules = [
            'tahunChart' => 'required',
            'monthChart' => 'required',
            'totalChart' => 'required'
        ];

        $data = $request->validate($rules);
        $data = [
            'tahun' => $request->tahunChart,
            'bulan' => $request->monthChart,
            'total' => $request->totalChart
        ];

        Chart::create($data);

        return redirect('dashboard/charts')->with('success', 'Data has been Added!');
    }

    public function updateDataChart(Request $request)
    {
        $id = $request->idUpdateChart;


        $rules = [
            'tahunUpdateChart' => 'required',
            'monthUpdateChart' => 'required',
            'totalUpdateChart' => 'required'
        ];

        $data = $request->validate($rules);
        $data = [
            'tahun' => $request->tahunUpdateChart,
            'bulan' => $request->monthUpdateChart,
            'total' => $request->totalUpdateChart
        ];

        Chart::where('id', $id)->update($data);
        return redirect('dashboard/charts')->with('success', 'Data has been updated!');
    }
}
