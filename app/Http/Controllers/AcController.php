<?php

namespace App\Http\Controllers;

use App\Models\Ac;

use App\Models\User;
use App\Exports\AcExport;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Maatwebsite\Excel\Facades\Excel;


class AcController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        return view('dataAc.index', [
            'title' => 'Data AC',
            'data' => Ac::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dataAC/create', [
            'title' => 'Tambah Data AC'
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



        $validateDataAc = $request->validate([
            'wing' => 'required',
            // 'label' => 'unique:ac',
            'lantai' => 'required',
            'ruangan' => 'required',
            'merk' => 'required',
            'type' => 'required',
            'jenis' => 'required',
            'ruangan' => 'required',
            'kapasitas' => 'required',
            'refrigerant' => 'required',
            'voltage' => 'required',
            'status' => 'required'
        ]);

        $validateDataAc =
            [
                'label' => $request->label,
                'assets' => $request->assets,
                'wing' => $request->wing,
                'lantai' => $request->lantai,
                'ruangan' => $request->ruangan,
                'merk' => $request->merk,
                'type' => $request->type,
                'jenis' => $request->jenis,
                'kapasitas' => $request->kapasitas,
                'refrigerant' => $request->refrigerant,
                'product' => $request->product,
                'current' => $request->current,
                'voltage' => $request->voltage,
                'btu' => $request->btu,
                'status' => $request->status,
                'catatan' => $request->catatan,
                'tgl_pemasangan' => $request->tgl_pemasangan,
                'petugas_pemasangan' => $request->petugas_pemasangan,
                'tgl_maintenance' => $request->tgl_maintenance,
                'user_id' => auth()->user()->id
            ];

        Ac::create($validateDataAc);
        return redirect('/ac')->with('success', 'Data berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ac  $ac
     * @return \Illuminate\Http\Response
     */
    public function show(Ac $ac, $id)
    {

        return view('dataAC.update', [
            'title' => 'Update Data AC',
            'ac' => Ac::find($id),
            'dataall' => Ac::all()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ac  $ac
     * @return \Illuminate\Http\Response
     */
    public function edit(Ac $ac)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ac  $ac
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ac $ac, $id)
    {

        $oldLabel = Ac::find($id)->toArray();


        $rules = [
            'wing' => 'required',
            'lantai' => 'required',
            'ruangan' => 'required',
            'merk' => 'required',
            'type' => 'required',
            'jenis' => 'required',
            'kapasitas' => 'required',
            'refrigerant' => 'required',
            'voltage' => 'required',
            'status' => 'required'
        ];

        // if ($request->label != $oldLabel['label']) {
        //     $rules['label'] = 'unique:ac';
        // }

        $validateNewData = $request->validate($rules);

        $validateNewData =
            [
                'label' => $request->label,
                'assets' => $request->assets,
                'wing' => $request->wing,
                'lantai' => $request->lantai,
                'ruangan' => $request->ruangan,
                'merk' => $request->merk,
                'type' => $request->type,
                'jenis' => $request->jenis,
                'kapasitas' => $request->kapasitas,
                'refrigerant' => $request->refrigerant,
                'product' => $request->product,
                'current' => $request->current,
                'voltage' => $request->voltage,
                'btu' => $request->btu,
                'status' => $request->status,
                'catatan' => $request->catatan,
                'tgl_pemasangan' => $request->tgl_pemasangan,
                'petugas_pemasangan' => $request->petugas_pemasangan,
                'tgl_maintenance' => $request->tgl_maintenance,
                'user_updated' => auth()->user()->name,
                'user_updated_time' => date('Y-m-d H:i:s')
            ];
        Ac::where('id', $id)
            ->update($validateNewData);

        return redirect('/ac')->with('success', 'Data berhasil di ubah!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ac  $ac
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ac $ac, $id)
    {
        Ac::where('id', $id)->update(['is_delete' => auth()->user()->name]);
        Ac::destroy($id);
        return redirect('/ac');
    }

    public function trash()
    {
        return view('dataAC.sampah', [
            'title' => 'Trash',
            'softData' => Ac::onlyTrashed()->get()
        ]);
    }

    public function deleteAll()
    {
        Ac::onlyTrashed()->forceDelete();
        return redirect('/ac/trash');
    }

    public function exportDataAc()
    {
        return Excel::download(new AcExport, 'data-ac.xlsx');
    }

    public function deleteCheckedAc(Request $request)
    {
        $ids = $request->ids;
        Ac::whereIn('id', $ids)->update(['is_delete' => auth()->user()->name]);
        Ac::whereIn('id', $ids)->delete();
        return response()->json(['success' => 'Data have been delete!']);
    }

    public function restore($id)
    {

        $restoreDataId = Ac::withTrashed()->find($id);

        if ($restoreDataId && $restoreDataId->trashed()) {
            $restoreDataId->restore();
        }

        return response()->json(['success' => 'Data kembali']);
    }
}
