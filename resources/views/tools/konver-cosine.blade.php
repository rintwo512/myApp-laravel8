@extends('layouts.main')

@section('content')
    
        {{-- BTU/h --}}
    <h6 class="mb-0 text-uppercase">Kalkulator Cosine</h6>
    <hr/>
    <div class="card">
      <div class="card-body">       
        <div class="row">
          <div class="col-md-6">                  
            <p>Untuk menghitung cos (x) pada kalkulator:</p>
            <ol>
                <li>Masukkan sudut masukan.</li>
                <li>Pilih jenis sudut derajat (°) atau radian (rad) di kotak kombo.</li>               
                <li>Tekan &nbsp;tombol Hitung untuk menghitung hasilnya.
                </li>
            </ol>
            <form name="calcform" autocomplete="off">
                <table class="calc">
                    <tbody>
                        <tr>                        
                            <td>
                                <input type="number" step="any" name="x" class="intext form-control" tabindex="1" placeholder="Cos">
                            </td>
                            <td>
                                <select id="degtype" class="form-select">
                                    <option selected>°</option>
                                    <option>rad </option>
                                </select>
                            </td>
                            {{-- <td>
                                <input type="button" value=" = " class="btn" onclick="calc()">
                            </td> --}}
                        </tr>
                        <tr>
                            <td colspan="4" class="pt-2">
                                <button type="button" title="Calculate" class="btn btn-purple" tabindex="2" onclick="calc()">Hitung</button>
                                <button type="reset" title="Reset" class="btn btn-secondary" tabindex="3" onclick="setfocus()">Reset</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">Hasil :</td>
                        </tr>
                        <tr>
                            <td colspan="4"><input type="text" name="y" class="outtext form-control" readonly tabindex="4"></td>
                        </tr>
                    </tbody>
                </table>
            </form>
          </div>
          {{-- Kalkulator btu --}}
          <div class="col-md-6">
            {{-- <div class="card">
              <div class="card-body">              
               <div class="pasang-ac-custom-column" id="pasang_ac_column_tipe">
                 <div style="margin-bottom:0px;"  class="pasang-ac-value-ladder">
                     <div class="row">                        
                         <div style="float:right;">
                             <div style="margin:0px 0px 0px 5px;" class="onoffswitch">
                                 <input type="checkbox" name="on_off_advanced" class="onoffswitch-checkbox form-check-input" id="on_off_advanced">
                                 <label class="onoffswitch-label form-check-label" style="height:25px;" for="on_off_advanced">
                                     Advanced Mode
                                     <span class="onoffswitch-inner"></span>
                                     <span class="onoffswitch-switch"></span>
                                 </label>
                             </div>
                         </div>                        
                     </div>                                        
                     
                     <div class="row" style="font-size:26px;font-weight:bold;"> 
                        
                         <div class="col-xs-4 text-primary" style="text-align:center;padding:0px;" id="pasang_ac_range_output">
                         </div>                       
                        
                     </div>
                     
                     <div class="row">
                         <div style="margin:10px 0px" class="slidecontainer">
                             <input type="range" min="3" max="100" value="3" class="slider form-range" id="myRange">
                         </div>                        
                     </div>
 
                     <div class="row" style="font-size:26px;font-weight:bold;">                                            
 
                       <div class="col-xs-4 text-primary" style="text-align:center;padding:0px;" id="pasang_ac_range_output_lebar">
                       </div>
                      
                   </div>
 
                     <div class="row">
                       <div style="margin:10px 0px" class="slidecontainerLebar">
                           <input type="range" min="3" max="100" value="3" class="slider form-range" id="myRangeLebar">
                       </div>                        
                   </div>
                     
                     <div style="display:none" id="advanced_mode_container">
                         <div class="text-primary" style="font-size:26px;font-weight:bold;text-align:center;" id="pasang_ac_range_output_plafon">
                         </div>
                         <div class="row">
                             <div style="margin:10px 0px" class="slidecontainer">
                                 <input type="range" min="2.0" max="10.0" step="0.1" value="3" class="slider form-range" id="myRange_plafon">
                             </div>                            
                         </div>
                         
                         <div style="text-align:left" class="mb-2">
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Suhu Yang Di inginkan</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_suhu" value="low" /> 25-26&#8451; &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_suhu" value="medium" /> 23-24&#8451; &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_suhu" value="high" /> > 23&#8451;</label>
                             </div>
                             
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Berapa orang (per 10m2)</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_orang" value="low" /> 1-2 &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_orang" value="medium" /> 3-6 &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_orang" value="high" /> 10</label>
                             </div>
                             
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Aktivitas</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_aktivitas" value="low" /> Santai &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_aktivitas" value="medium" /> Office &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_aktivitas" value="high" />Olahraga</label>
                             </div>
                             
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Posisi Ruangan Menghadap</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_arah" value="low" /> Utara, Selatan &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_arah" value="medium" /> Tenggara,Timur Laut, Barat Daya, Barat Laut &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_arah" value="high" /> Barat, Timur</label>
                             </div>
                             
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Jenis Lampu Yang digunakan</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_lampu" value="low" /> LED &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_lampu" value="medium" /> Neon &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_lampu" value="high" /> Spot Light</label>
                             </div>
                             
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Jam Penggunaan</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_hour" value="low" /> Malam &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_hour" value="medium" /> Pagi &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_hour" value="high" /> 24 Jam</label>
                             </div>
                             
                             <div class="advanced-column mb-3">
                                 <div class="pasang-ac-value-ladder-title"><b>Jenis Kaca</b></div>
                                 <label><input type="radio" class="advanced-radio" name="radio_glass" value="low" /> Low-E Double Glass &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_glass" value="medium" /> Double Glass &nbsp;</label>
                                 <label><input type="radio" class="advanced-radio" name="radio_glass" value="high" /> Clear</label>
                             </div>
                         </div>
                     </div>
                     
                     <div class="d-flex justify-content-center btn btn-primary hitung-button pasang-ac-button my-2">
                         Hitung
                     </div>                                        
                 </div>
             </div>
             
             <div style="display:none" class="pasang-ac-custom-column" id="pasang_ac_custom_column_result">
                 <div style="text-align:left;margin-bottom:0px;"" class="pasang-ac-value-ladder">
                     <div id="pk_calculator_result_title" class="pasang-ac-value-ladder-title"><b>Calculator&trade;</b></div>
                     
                     <div style="font-size:24px;" class="pasang-ac-value-ladder-title">
                         <b>Daya : <span class="count text-primary" id="count_btu"></span> Btu/h</b>
                     </div>
                     <div id="pk_result" style="font-size:24px;display:none" class="pasang-ac-value-ladder-title"><b>Kapasitas : <span class="text-primary" id="count_pk"></span> PK</b></div>
                     
                     <div style="border-radius: 5px;margin-bottom:10px;padding:5px 10px;background-color:#d9edf7;color:#3a87ad;border-color:#bce8f1">
                         Perhitungan ini untuk ruangan yang pintu tidak terbuka tutup dengan tinggi plafon max 3m. Untuk ruangan yang sering terbuka tutup tambahkan 10% dari luas ruangan tersebut.
                     </div>
                   </div>
                 </div>                                            
              </div>              
            </div> --}}
            <p>Masukkan nilai cosinus, pilih derajat (°) atau radian (rad) dan tekan tombol Hitung :</p>
            <form name="calcform2">
                <table class="calc">
                    <tbody>
                    <tr>                       
                        <td>
                            <label for=""><span>cos <sup style="font-size: 0.8em">-1</sup></span></label>
                            <input type="number" step="any" name="x" class="intext form-control" tabindex="5"></td>
                        <td>
                            {{-- <input onclick="calc_a()" type="button" value=" = " class="btn"></td> --}}
                    </tr>
                    <tr>
                        <td colspan="4" class="pt-2">
                            <button type="button" title="Calculate" class="btn btn-purple" tabindex="6" onclick="calc_a()">Hitung</button>
                            <button type="reset" title="Reset" class="btn btn-secondary" tabindex="7" onclick="setfocus()">Reset</button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">Hasil :</td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" id="y2" name="y" class="outtext form-control" tabindex="8">
                        </td>
                        <td colspan="4">
                            
                            <select id="degtypea" class="mathsymbol form-select" onchange="OnSelChange()" name="D1">
                                <option selected>°</option>
                                <option>rad </option>
                            </select>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
          </div>
          {{-- end kalkulator btu --}}
        </div>                
      </div>              
    </div>
  {{-- End BTU/h --}}

  <script>

function setfocus(){
    document.calcform.x.focus();
}

function calc(){
    x = document.calcform.x.value;
    y = calcfunc(x);
    y = roundresult(y);
    document.calcform.y.value = y
}

function calc_a(){
    x = document.calcform2.x.value;
    y = calcfunc_a(x);
    y = roundresult(y);
    document.calcform2.y.value = y
}

function roundresult(x){
    y=parseFloat(x);
    y=roundnum(y,10);
    return y;
}

function roundnum(x,p){
    var i;
    var n=parseFloat(x);
    var m=n.toPrecision(p+1);
    var y=String(m);
    i=y.indexOf('e');
    if(i==-1)i=y.length;
        j=y.indexOf('.');
    if(i>j&&j!=-1){
        while( i > 0 ){
            if( y.charAt(--i)=='0')
              y = removeAt(y,i);
            else
        break;
        }
        if(y.charAt(i)=='.')
          y = removeAt(y,i);
    }
    return y;
}

function roundnum2(x,p){
    var i;
    var n=parseFloat(x);
    var m=n.toFixed(p);
    var y=String(m);
    i=y.length;
    j=y.indexOf('.');
    if(i>j&&j!=-1){
        while(i>0){
            if(y.charAt(--i)=='0')
                y = removeAt(y,i);
            else
        break;
        }
        if(y.charAt(i)=='.')
         y = removeAt(y,i);
    }
    return y;
}

function removeAt(s,i){
    s=s.substring(0,i)+s.substring(i+1,s.length);
    return s;
}
var gcd = function(a,b){
    if(!b){
        return a;
    }
    return gcd(b,a%b);
};

  </script>

  <script>
    function calcfunc(x) {
        var degtype=document.getElementById("degtype");
        var i=degtype.selectedIndex;
        if( i==0 )
             x *= Math.PI/180;
         y = Math.cos(x);
         y = roundnum2(y,8);
         return y;
    }
    function calcfunc_a(x) {
        var degtype=document.getElementById("degtypea");
        var i=degtype.selectedIndex;
        var y=Math.acos(x);
        if( i==0 )
             y*=180/Math.PI;
         y = roundnum2(y,8);
         return y;
    }
    function OnSelChange()
    {
        calc_a();
    }
</script>
@endsection