@extends('layouts.main')


@section('content')
@php
 use Illuminate\Support\Carbon; 
//  $date = date('Y-m-d H:i:s');
@endphp

            <div class="flash-success" data-success="{{ session('success') }}"></div>
            <div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">              
              <div class="ps-3">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0 p-0">
                    <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-table" style="color:#7b378e"></i></a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Data AC</li>
                  </ol>
                </nav>
              </div>              
            </div>            
            
            <a href="/ac/create" class="mb-0 text-uppercase btn btn-primary btn-sm">Tambah Data</a>
            <a href="/ac/export" class="mb-0 text-uppercase btn btn-secondary btn-sm">Export</a>                                   
            <a href="/ac/trash" class="mb-0 text-uppercase btn btn-secondary btn-sm"><i class="bi bi-trash-fill"></i></a>
        <hr/>
        <div class="card">
          <div class="card-body">
            <div class="table-responsive">
              <table id="example" class="table table-striped table-bordered" style="width:100%">
                @can('admin')                  
                <a href="javascript:;" class="btn btn-danger btn-sm mb-3" id="selectDeleteRecord">Delete All</a>
                @endcan
                <thead>
                  <tr>
                    @can('admin')                      
                    <th><input type="checkbox" class="form-check-input" id="checkAll" /></th>
                    @endcan
                    <th>No.</th>
                    <th>Assets</th>
                    <th>Label</th>
                    <th>Wing</th>
                    <th>Lantai</th>
                    <th>Ruangan</th>
                    <th>Merk</th>
                    <th>Type</th>                    
                    <th>Status</th>
                    <th>Opsi</th>
                  </tr>
                </thead>
                <tbody>
                  @foreach ($data as $ac)                                      
                  <tr id="sid{{ $ac->id }}">
                    @can('admin')                      
                    <td><input class="form-check-input checkBoxClass" type="checkbox" name="ids" value="{{ $ac->id }}" /></td>
                    @endcan
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $ac->assets }}</td>
                    <td>{{ $ac->label }}</td>
                    <td>{{ $ac->wing }}</td>
                    <td>{{ $ac->lantai }}</td>
                    <td>{{ $ac->ruangan }}</td>
                    <td>{{ $ac->merk }}</td>
                    <td>{{ $ac->type }}</td>
                    @if ($ac->status == 'Rusak')
                    <td class="bg-danger text-white">{{ $ac->status }}</td>
                    @else
                    <td class="bg-info text-white">{{ $ac->status }}</td>
                    @endif
                    <td>
                        <div class="table-actions d-flex align-items-center gap-3 fs-6">

                            <button id="btnDetailAC" class="text-primary border-0 bg-transparent btnku" data-bs-toggle="modal" data-bs-target="#exampleScrollableModal" 
                            data-id="{{ $ac->id }}"
                            data-labelac="{{ $ac->label }}"
                            data-assetsac="{{ $ac->assets }}"
                            data-wingac="{{ $ac->wing }}"
                            data-lantaiac="{{ $ac->lantai }}"
                            data-ruanganac="{{ $ac->ruangan }}"
                            data-merkac="{{ $ac->merk }}"
                            data-typeac="{{ $ac->type }}"
                            data-jenisac="{{ $ac->jenis }}"
                            data-kapasitasac="{{ $ac->kapasitas }}" data-refrigerantac="{{ $ac->refrigerant }}" data-productac="{{ $ac->product }}"
                            data-currentac="{{ $ac->current }}"
                            data-voltageac="{{ $ac->voltage }}"
                            data-btuac="{{ $ac->btu }}"
                            data-statusac="{{ $ac->status }}"
                            data-catatanac="{{ $ac->catatan }}" data-tglpemasanganac="{{ $ac->tgl_pemasangan }}" data-petugaspemasanganac="{{ $ac->petugas_pemasangan }}"
                            data-tanggalmaintenanceac="{{ Carbon::parse($ac->tgl_maintenance)->locale('id')->diffForHumans() }}" data-updatedtimeac="{{ $ac->user_updated }}/{{ Carbon::parse($ac->user_updated_time)->diffForHumans() }}">
                            <i class="bi bi-eye-fill"></i>
                            </button>
                            
                            <a href="/ac/update/{{ $ac->id }}" class="text-warning" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Edit"><i class="bi bi-pencil-fill"></i>
                            </a>        

                            @can('admin')                              
                            <a id="btnDeleteAc" href="/ac/delete/{{ $ac->id }}" class="text-danger btn-delete" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Delete"><i class="bi bi-x-circle-fill"></i></a>
                            @endcan
                          </div>
                    </td>
                  </tr>
                  @endforeach                 
                </tbody>
                <tfoot>
                  <tr>
                    @can('admin')                      
                    <th></th>
                    @endcan
                    <th>No.</th>
                    <th>Assets</th>
                    <th>Label</th>
                    <th>Wing</th>
                    <th>Lantai</th>
                    <th>Ruangan</th>
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


        {{-- Modal Detail --}}

        <div class="col">          
          <div class="modal fade" id="exampleScrollableModal" tabindex="-1" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Detail Data</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                  <div class="card">                    
                    {{-- <div class="card-body"> --}}
                      <ul class="list-group">                        
                        <li class="list-group-item d-flex justify-content-between align-items-center">Di ubah <span>:</span> <span id="detailUpdatedAC"></span>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Tanggal Pemasangan <span>:</span> <span id="detailTanggaPemasanganAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Petugas Pemasangan <span>:</span> <span id="detailPetugasPemasanganAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Tanggal Maintenance <span>:</span> <span id="detailTglMaintenanceAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Label <span>:</span> <span id="detailLabelAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Assets <span>:</span> <span id="detailAssetsAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Wing <span>:</span> <span id="detailWingAC"></span>
                        </li>                        
                        <li class="list-group-item d-flex justify-content-between align-items-center">Lantai <span>:</span> <span id="detailLantaiAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Ruangan <span>:</span> <span id="detailRuanganAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Merk <span>:</span> <span id="detailMerkAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Type <span>:</span> <span id="detailTypeAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Jenis <span>:</span> <span id="detailJenisAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Kapasitas <span>:</span> <span id="detailKapasitasAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Refrigerant <span>:</span> <span id="detailRefrigerantAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Product <span>:</span> <span id="detailProductAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Amper <span>:</span> <span id="detailAmperAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Voltage <span>:</span> <span id="detailVoltageAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Btu <span>:</span> <span id="detailBtuAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-between align-items-center">Status <span>:</span> <span id="detailStatusAC"></span>
                        </li>
                        <li class="list-group-item d-flex justify-content-center align-items-center text-center" id="detailCatatanAC">Lorem ipsum dolor.</span>
                        </li>
                        <li class="list-group-item d-flex justify-content-center align-items-center">
                          <a href="" class="btn btn-danger btn-sm">Lihat Data Error</a>
                        </li>   
                      </ul>
                    {{-- </div> --}}
                  </div>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>                 
                </div>
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

                  
          $(document).on('click', '#btnDeleteAc', function(e){
            const href = $(this).attr('href');
            e.preventDefault();          
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
                window.location.href = href;
                Swal.fire(
                  'Deleted!',
                  'Your file has been deleted.',
                  'success'
                )
              }
            })
          });
                              
        </script>
        <script>          

          $(document).on('click', '#btnDetailAC', function() {
              const label = $(this).data('labelac');
              const assets = $(this).data('assetsac');
              const wingac = $(this).data('wingac');
              const lantaiac = $(this).data('lantaiac');
              const ruanganac = $(this).data('ruanganac');
              const merkac = $(this).data('merkac');
              const typeac = $(this).data('typeac');
              const jenisac = $(this).data('jenisac');
              const kapasitasac = $(this).data('kapasitasac');
              const refrigerantac = $(this).data('refrigerantac');
              const productac = $(this).data('productac');
              const currentac = $(this).data('currentac');
              const voltageac = $(this).data('voltageac');
              const btuac = $(this).data('btuac');
              const statusac = $(this).data('statusac');
              const catatanac = $(this).data('catatanac');
              const tanggalpemasanganac = $(this).data('tglpemasanganac');
              const petugaspemsanganac = $(this).data('petugaspemasanganac');
              const tanggalmaint = $(this).data('tanggalmaintenanceac');
              const updatedtimeac = $(this).data('updatedtimeac');
            
              if(updatedtimeac == '/1 detik yang lalu'){
                
                $('#detailUpdatedAC').html('');
                

              }else{

                $('#detailUpdatedAC').html(updatedtimeac);
                
                
              }

              if(tanggalmaint == '1 detik yang lalu'){
                                
                $('#detailTglMaintenanceAC').html('');

              }else{

                
                $('#detailTglMaintenanceAC').html(tanggalmaint);
                
              }
              
              $('#detailTanggaPemasanganAC').html(tanggalpemasanganac);
              $('#detailPetugasPemasanganAC').html(petugaspemsanganac);
              $('#detailLabelAC').html(label);
              $('#detailAssetsAC').html(assets);
              $('#detailWingAC').html(wingac);
              $('#detailLantaiAC').html(lantaiac);
              $('#detailRuanganAC').html(ruanganac);
              $('#detailMerkAC').html(merkac);
              $('#detailTypeAC').html(typeac);
              $('#detailJenisAC').html(jenisac);
              $('#detailKapasitasAC').html(kapasitasac);
              $('#detailRefrigerantAC').html(refrigerantac);
              $('#detailProductAC').html(productac);
              $('#detailAmperAC').html(currentac);
              $('#detailVoltageAC').html(voltageac);
              $('#detailBtuAC').html(btuac);   
              $('#detailStatusAC').html(statusac);           
              $('#detailCatatanAC').html(catatanac); 
          });          
        </script>
        <script>

          $(function(e) {            
            
            $("#checkAll").click(function() {
              $(".checkBoxClass").prop('checked', $(this).prop('checked'));
            });
            $("#selectDeleteRecord").click(function(e) {              
              var checkBox = $('.checkBoxClass:checked');                
              if(checkBox.length > 0) {                  
                  e.preventDefault();                  
                  Swal.fire({
                  title: 'Are you sure?',
                  text: "Some data will be deleted!",
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#3085d6',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                  // $('input[type=checkbox]').prop('checked', false);
                  if (result.isConfirmed) {
                    var allids = [];
                  $("input:checkbox[name=ids]:checked").each(function() {
                    allids.push($(this).val());
                  });                  
                  
                  $.ajax({
                    url: "{{ route('ac.deleteSelected') }}",
                    type: "DELETE",
                    data : {
                      _token : $("input[name=_token]").val(),
                      ids:allids
                    },
                    success : response => {
                      $.each(allids, (key, val) => {
                        $("#sid"+val).remove();                        
                      })
                    },
                    error : e => {
                      Swal.fire({
                        icon: 'error',
                        title: 'Oops...'
                      })
                    }
                  });
                    
                  }
                })
              }else{
                  Swal.fire({
                  icon: 'error',
                  title: 'Oops...',
                  text: 'Choose at least one data!'  
                })
              }                       
            })
                              
          });
        </script>

@endsection       