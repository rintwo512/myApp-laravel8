@extends('layouts.main')

@section('content')

@can('admin')  
{{-- Chart --}}
<meta name="csrf-token" content="{{ csrf_token() }}">
<div class="col-md-2 mb-3">  
  <select class="form-select" name="tahun" id="tahun">
    <option value="">--Select--</option>
    @foreach ($list_tahun as $tahun)
        <option value="{{ $tahun->tahun }}">{{ $tahun->tahun }}</option>
    @endforeach  
</select>               
</div>
<div class="card">
  <div class="card-body">
    <div class="chart-container1">
      <canvas id="chart7"></canvas>
    </div>
  </div>
</div>
{{-- End Chart --}}
@endcan
<div class="row row-cols-1 row-cols-lg-2 row-cols-xl-2 row-cols-xxl-4">  
  <div class="col">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Data AC</p>
            <h4 class="mb-0">Total : {{ $countData }} unit AC</h4>
          </div>
          <div class="ms-auto fs-2 text-primary">
            <i class="bi bi-table"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <a href="/ac" class="text-view"><small class="mb-0"><span class="text-primary"><i class="bi bi-eye"></i></span> View Data</small></a>
      </div>
    </div>
   </div>
   <div class="col">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Data Trash AC</p>
            <h4 class="mb-0">{{ $countTrash }} unit</h4>
          </div>
          <div class="ms-auto fs-2 text-danger">
            <i class="bi bi-trash"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <a href="/ac/trash" class="text-danger"><small class="mb-0"><span class="text-danger"><i class="bi bi-trash"></i></span> Delete Trash</small></a>
      </div>
    </div>
   </div>
   <div class="col">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Total Maintenance</p>
            <h6 class="mb-0">{{ $kal }} unit total AC yang di maintenance dalam {{ $kalTahun }} tahun.</h6>
          </div>
          <div class="ms-auto fs-2 text-primary">
            <i class="bi bi-hammer"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <small class="mb-0 text-primary"><span class="text-primary"><i class="bi bi-gear"></i></span> Data Maint AC</small>
      </div>
    </div>
   </div>
   <div class="col">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Perlu diperhatikan</p>
            <h6 class="mb-0">{{ $countAcRusak }} Unit AC yang masih tidak normal.</h6>
          </div>
          <div class="ms-auto fs-2 text-danger">
            <i class="bi bi-gear"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <small class="mb-0 text-danger"><span class="text-danger"><i class="bi bi-gear"></i></span> Data AC tidak aktif</small>
      </div>
    </div>
   </div>

   {{-- CCTV --}}
   <div class="col-md-4">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Data CCTV</p>
            <h6 class="mb-0">Total CCTV : {{ $countCctv1 }} Unit</h6>
          </div>
          <div class="ms-auto fs-2 text-info">
            <i class="bi bi-camera-video"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <a href="/dashboard/cctv"><small class="mb-0 text-info"><span class="text-info"><i class="bi bi-camera-video"></i></span> View Data</small></a>
      </div>
    </div>
   </div>
   <div class="col-md-4">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Data Trash CCTV</p>
            <h6 class="mb-0">{{ $countTrashCctv1 }} Unit</h6>
          </div>
          <div class="ms-auto fs-2 text-info">
            <i class="bi bi-trash"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <small class="mb-0 text-info"><span class="text-info"><i class="bi bi-trash"></i></span> Delete Trash</small>
      </div>
    </div>
   </div>
   <div class="col-md-4">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Perlu diperhatikan</p>
            <h6 class="mb-0">{{ $countCctv1Rusak }} Unit CCTV yang masih tidak normal.</h6>
          </div>
          <div class="ms-auto fs-2 text-info">
            <i class="bi bi-gear"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <small class="mb-0 text-info"><span class="text-info"><i class="bi bi-gear"></i></span> Data CCTV tidak aktif</small>
      </div>
    </div>
   </div>
   {{-- END CCTV --}}
   <div class="col-12">
    <div class="card radius-10">
      <div class="card-body">
        <div class="d-flex align-items-center">
          <div class="">
            <p class="mb-1">Users Registration</p>
            <h4 class="mb-0">{{ $countUsers }}</h4>
          </div>
          <div class="ms-auto fs-2 text-info">
            <i class="bi bi-people"></i>
          </div>
        </div>
        <div class="border-top my-2"></div>
        <small class="mb-0 text-success"><span class="text-success"> <i class="bi bi-eye"></i></span> List Users Registration</small>
      </div>
    </div>
   </div>   
</div>

<script src="/assets/js/jquery.min.js"></script>
<script src="/assets/plugins/chartjs/js/Chart.min.js"></script>
<script src="/assets/plugins/chartjs/js/Chart.extension.js"></script>



<script type="text/javascript">
function chartAc(year, title){
   
   $.ajaxSetup({
       headers: {
           'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
       }
   });

   $.ajax({
     method: "POST",
     url: "/dashboard",
     data : {
       tahun : year
     },
     dataType : "JSON",
     success : result => {
       
       drawChart(result, title, year);
     }
   })

 }
 

function drawChart(result, title, year){
var total = result.map(item => parseInt(item.total));
var kalkulasi = total.reduce((acc, curr) => acc + curr);

var bulan = result.map(item => item.bulan);
new Chart(document.getElementById("chart7"), {
  type: 'horizontalBar',
  data: {
    labels: bulan,
    datasets: [{
      label: '',
      backgroundColor: ["#55DD28", "#D83218", "#0048BA", "#FFBF00	", "#9966CC","#3DDC84", "#841B2D", "#00FFFF", "#FF9966", "#DA1884","#3D2B1F	", "#1B4D3E"],
      data: total
    }]
  },
  options: {
    maintainAspectRatio: false,
    legend: {
      display: false
    },
    title: {
      display: true,
      text: `${title}/Total = ${kalkulasi} Unit`
    }
  }
});
}


</script>

<script>

  $(document).ready(function() {
    $('#tahun').change(function() {
      var year = $(this).val();
      
        if(year != ''){
          chartAc(year, `Statistic Bulanan Maintenance AC : ${year}`);
        }
    });
    
    const d = new Date();
    let tahun = d.getFullYear() -1;    
    chartAc(tahun, `Statistic Bulanan Maintenance AC : ${tahun}`);
  });
</script>


@endsection

