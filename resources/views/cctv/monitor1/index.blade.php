@extends('layouts.main')


@section('content')
<?php use Illuminate\Support\Carbon; ?>

            <div class="flash-success" data-success="{{ session('success') }}"></div>
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">              
              <div class="ps-3">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-table" style="color:#7b378e"></i></a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Data CCTV</li>
                  </ol>
                </nav>
              </div>              
            </div>
            <button class="btn btn-primary btn-sm border-0" data-bs-toggle="modal" data-bs-target="#modalAddDataCctvMonitor1"><i class="bi bi-plus"></i> New Data</button>

            @can('admin')              
            <a href="/dashboard/export/cctv" class="mb-0 text-uppercase btn btn-secondary btn-sm">Export</a>
            @endcan

            <a href="/dashboard/trashed/cctv" class="btn btn-secondary btn-sm"><i class="bi bi-trash"></i></a>
        <hr/>
        <h6 class="mb-2 text-uppercase">Monitor 1</h6>
        <div class="card">
          <div class="card-body">
            <div class="table-responsive">              
              <table id="example" class="table table-striped table-bordered" style="width:100%">
                <thead>
                  <tr>                    
                    <th>Lantai</th>
                    <th>Wing</th>
                    <th>Lokasi</th>
                    <th>Merk</th>                    
                    <th>Type</th>
                    <th>Status</th>
                    <th>Opsi</th>
                  </tr>
                </thead>
                <tbody> 
                @foreach ($dataCctv1 as $cctv1)
                    <tr>                    
                        <td>{{ $cctv1->lantai }}</td>                
                        <td>{{ $cctv1->wing }}</td>              
                        <td>{{ $cctv1->lokasi }}</td>
                        <td>{{ $cctv1->merk }}</td>
                        <td>{{ $cctv1->type }}</td>
                        @if ($cctv1->status == "Rusak")
                        <td class="bg-danger text-white">{{ $cctv1->status }}</td>
                        @else
                        <td class="bg-success text-white">{{ $cctv1->status }}</td>
                        @endif
                        <td>
                            <div class="table-actions d-flex align-items-center gap-3 fs-6">                            
                                
                                <button id="btnDetailCctv1" class="text-primary border-0 bg-transparent" data-bs-toggle="modal" data-bs-target="#modalDetailDataCctvMonitor1"
                                data-iddetcctv1="{{ $cctv1->id }}"
                                data-lantaidetcctv1="{{ $cctv1->lantai }}"
                                data-wingdetcctv1="{{ $cctv1->wing }}"
                                data-lokasidetcctv1="{{ $cctv1->lokasi }}"
                                data-merkdetcctv1="{{ $cctv1->merk }}"
                                data-typedetcctv1="{{ $cctv1->type }}"
                                data-statusdetcctv1="{{ $cctv1->status }}"
                                data-resolusidetcctv1="{{ $cctv1->resolusi }}"
                                data-tglpemasangandetcctv1="{{ $cctv1->tgl_pemasangan }}"
                                data-petpemasangandetcctv1="{{ $cctv1->petugas_pemasangan }}"
                                data-tglperbaikandetcctv1="{{ $cctv1->tgl_perbaikan }}"
                                data-petperbaikandetcctv1="{{ $cctv1->petugas_perbaikan }}"
                                data-catatandetcctv1="{{ $cctv1->catatan }}"
                                data-kerusakandetcctv1="{{ $cctv1->kerusakan }}"
                                data-userupdatedetcctv1="{{ $cctv1->user_updated }}/{{ Carbon::parse($cctv1->updated_time)->diffForHumans() }}"
                                data-sandidvrdetcctv1="{{ $cctv1->sandi_dvr }}">
                                <i class="bi bi-eye-fill"></i>
                                </button>
                                
                                <a href="/dashboard/cctv/{{ $cctv1->id }}/edit" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Edit"><i class="bi bi-pencil-fill"></i>
                                </a>        
                             
                            @can('admin')                              
                            <form action="javascript:delCctv1({{ $cctv1->id }})" method="post">
                                @method('DELETE')
                                @csrf
                                <button class="text-danger btn-delete bg-transparent border-0" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-circle-fill"></i></button>
                            </form>                              
                            @endcan
                                
                            </div>
                        </td>
                    </tr>                            
                    @endforeach     
                </tbody>
                <tfoot>
                  <tr>
                    <th>Lantai</th>
                    <th>Wing</th>
                    <th>Lokasi</th>
                    <th>Merk</th>                    
                    <th>Type</th>
                    <th>Status</th>
                    <th>Opsi</th>
                  </tr>
                </tfoot>
              </table>
            </div>
          </div>
        </div>


        
            <!-- Modal add data cctv -->
            <div class="modal fade" id="modalAddDataCctvMonitor1" tabindex="-1" aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">New Data</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">                                    
                <form action="/dashboard/cctv" class="row g-3 needs-validation" method="post">                    
                  @csrf
                  <div class="col-md-4">
                    <label for="lantai" class="form-label">Lantai <small class="text-danger">*</small></label>
                    <select class="form-select" id="lantai" name="lantai" required>
                        <option value="" disabled selected>--Select--</option>
                        <option value="Lantai 1">Lantai 1</option>
                        <option value="Lantai 2">Lantai 2</option>
                        <option value="Lantai 3">Lantai 3</option>
                    </select>
                  </div>
                  <div class="col-md-4">
                    <label for="wing" class="form-label">Wing <small class="text-danger">*</small></label>
                    <select class="form-select" id="wing" name="wing" required>
                        <option value="" disabled selected>--Select--</option>
                        <option value="Wing A">Wing A</option>
                        <option value="Wing B">Wing B</option>
                        <option value="Wing C">Wing C</option>
                        <option value="Wing D">Wing D</option>
                        <option value="Lainnya">Lainnya</option>
                    </select>
                  </div>
                  <div class="col-md-4">
                    <label for="lokasi" class="form-label">Lokasi <small class="text-danger">*</small></label>
                    <input class="form-control text-capitalize" id="lokasi" name="lokasi" placeholder="Lokasi Camera" required>
                  </div>
                  <div class="col-md-4">
                    <label for="merk" class="form-label">Merk <small class="text-danger">*</small></label>
                    <input class="form-control text-capitalize" id="merk" name="merk" placeholder="Merk Camera" required>
                  </div>
                  <div class="col-md-4">
                    <label for="type" class="form-label">Type <small class="text-danger">*</small></label>
                    <select class="form-select" id="type" name="type" required>
                        <option value="" disabled selected>--Select--</option>
                        <option value="Analog">Analog</option>
                        <option value="Ip Cam">Ip Cam</option>
                    </select>
                  </div>
                  <div class="col-md-4">
                    <label for="resolusi" class="form-label">Resolusi</label>
                    <select class="form-select" id="resolusi" name="resolusi">
                        <option value="" disabled selected>--Select--</option>
                        <option value="1,5MP">1,5MP</option>
                        <option value="2MP">2MP</option>
                        <option value="4MP">4MP</option>
                    </select>
                  </div>
                  <div class="col-md-4">
                    <label for="tgl_pemasangan" class="form-label">Tanggal Pemasangan</label>
                    <input class="form-control datepicker" id="tgl_pemasangan" name="tgl_pemasangan" placeholder="Tanggal Pemasangan Camera">
                  </div>
                  <div class="col-md-4">
                    <label for="petugas_pemasangan" class="form-label">Petugas Pemasangan</label>
                    <input class="form-control text-capitalize" id="petugas_pemasangan" name="petugas_pemasangan" placeholder="Petugas Pemasangan Camera">
                  </div>
                  <div class="col-md-4">
                    <label for="status" class="form-label">Status <small class="text-danger">*</small></label>
                    <select class="form-select" id="status" name="status" required>
                        <option value="" disabled selected>--Select--</option>
                        <option value="Normal">Normal</option>
                        <option value="Rusak">Rusak</option>
                    </select>
                  </div>
                  <div class="col-12">
                    <label class="form-label">Sandi DVR</label>
                    <input type="text" class="form-control" id="sandi_dvr" name="sandi_dvr" placeholder="Kata sandi DVR/NVR">
                  </div>
                  <div class="col-12">
                    <label class="form-label">Kerusakan</label>
                    <textarea class="form-control" rows="4" cols="4" id="kerusakan" name="kerusakan" placeholder="Kerusakan pada camera!"></textarea>
                  </div>

                </div>
                <div class="modal-footer">         
                <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>                                    
                </div>
              </div>
            </div>
            <!-- End modal add data cctv -->



            {{-- Modal Detail --}}        
            <div class="modal fade" id="modalDetailDataCctvMonitor1" tabindex="-1" aria-hidden="true">
              <div class="modal-dialog modal-dialog-scrollable">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title">Detail Data</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body" id="modalDetailCctv1">
                    <div class="card">                      
                        <ul class="list-group">                        
                          <li class="list-group-item d-flex justify-content-between align-items-center">Di ubah <span>:</span> <span id="detailUpdatedCCTV1"></span>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Tanggal Pemasangan <span>:</span> <span id="detailTanggalPemasanganCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Petugas Pemasangan <span>:</span> <span id="detailPetugasPemasanganCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Tanggal Perbaikan <span>:</span> <span id="detailTglPerbaikanCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Petugas Perbaikan <span>:</span> <span id="detailPetugasPerbaikanCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Lantai <span>:</span> <span id="detailLantaiCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Wing <span>:</span> <span id="detailWingCCTV1"></span>
                          </li>                        
                          <li class="list-group-item d-flex justify-content-between align-items-center">Lokasi <span>:</span> <span id="detailLokasiCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Merk <span>:</span> <span id="detailMerkCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Type <span>:</span> <span id="detailTypeCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Resolusi <span>:</span> <span id="detailResolusiCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Status <span>:</span> <span id="detailStatusCCTV1"></span>
                          </li>
                          <li class="list-group-item d-flex justify-content-between align-items-center">Kata Sandi DVR <span>:</span> <span id="detailSandiDvrCCTV1"></span>
                          </li>
                          
                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Kerusakan
                              </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                              <div class="accordion-body" id="detailKerusakanCCTV1">
                              </div>
                            </div>
                          </div>

                          <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Catatan
                              </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                              <div class="accordion-body" id="detailCatatanCCTV1">
                                
                              </div>
                            </div>
                          </div>
                          
                        </ul>                      
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>                 
                  </div>
                </div>
              </div>
            </div>
          
  
          {{-- end modal detail --}}

        

        <script src="/assets/js/jquery.min.js"></script>  
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <script>

          const flashSuccess = document.querySelector('.flash-success');
          const flashNotif = flashSuccess.dataset.success;          
          if(flashNotif){
            Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: flashNotif,
            showConfirmButton: false,
            timer: 4000
            });
          }

        </script>
        
        <script>

            function delCctv1(id) {                
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                    }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = '/dashboard/cctv/' + id
                      }
                    })
            };

        </script>

        <script>

            $(document).on("click", "#btnDetailCctv1", function(e) {
                e.preventDefault();
                const iddetcctv1 = $(this).data("iddetcctv1");
                const lantaidetcctv1 = $(this).data("lantaidetcctv1");
                const wingdetcctv1 = $(this).data('wingdetcctv1');
                const merkdetcctv1 = $(this).data('merkdetcctv1');
                const lokasidetcctv1 = $(this).data('lokasidetcctv1');
                const typedetcctv1 = $(this).data('typedetcctv1');
                const statusdetcctv1 = $(this).data('statusdetcctv1');
                const resolusidetcctv1 = $(this).data('resolusidetcctv1');
                const tglpemasangandetcctv1 = $(this).data('tglpemasangandetcctv1');
                const petpemasangandetcctv1 = $(this).data('petpemasangandetcctv1');
                const tglperbaikandetcctv1 = $(this).data('tglperbaikandetcctv1');
                const petperbaikandetcctv1 = $(this).data('petperbaikandetcctv1');
                const catatandetcctv1 = $(this).data('catatandetcctv1');
                const kerusakandetcctv1 = $(this).data('kerusakandetcctv1');
                const userupdatedetcctv1 = $(this).data('userupdatedetcctv1');
                const sandidvrdetcctv1 = $(this).data('sandidvrdetcctv1');

                if(userupdatedetcctv1 == "/1 detik yang lalu"){

                  $("#detailUpdatedCCTV1").html('');
                }else{

                  $("#detailUpdatedCCTV1").html(userupdatedetcctv1);
                }


                $("#modalDetailCctv1 #detailTanggalPemasanganCCTV1").text(tglpemasangandetcctv1);
                $("#modalDetailCctv1 #detailPetugasPemasanganCCTV1").text(petpemasangandetcctv1);
                $("#modalDetailCctv1 #detailTglPerbaikanCCTV1").text(tglperbaikandetcctv1);
                $("#modalDetailCctv1 #detailPetugasPerbaikanCCTV1").text(petperbaikandetcctv1);
                $("#modalDetailCctv1 #detailLantaiCCTV1").text(lantaidetcctv1);
                $("#modalDetailCctv1 #detailWingCCTV1").text(wingdetcctv1);
                $("#modalDetailCctv1 #detailLokasiCCTV1").text(lokasidetcctv1);
                $("#modalDetailCctv1 #detailMerkCCTV1").text(merkdetcctv1);
                $("#modalDetailCctv1 #detailTypeCCTV1").text(typedetcctv1);
                $("#modalDetailCctv1 #detailResolusiCCTV1").text(resolusidetcctv1);
                $("#modalDetailCctv1 #detailStatusCCTV1").text(statusdetcctv1);
                $("#modalDetailCctv1 #detailSandiDvrCCTV1").text(sandidvrdetcctv1);
                $("#modalDetailCctv1 #detailKerusakanCCTV1").text(kerusakandetcctv1);
                $("#modalDetailCctv1 #detailCatatanCCTV1").text(catatandetcctv1);
                
            });

        </script>

@endsection       