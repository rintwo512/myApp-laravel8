addEventListener('click', function(){
    const st = document.querySelector('#status').value;

    if(st == 'Rusak'){
        document.querySelector('#catatan').required = true;
    }else{
        document.querySelector('#catatan').required = false;
    }
});


$('#wing').on('click', function() {
    const wing = $(this).val();
    let cardLantai = '';
    if(wing == 'Wing A' || wing == 'Wing B'){
        cardLantai += wingAB();
        $('.optLantai').html(cardLantai);
    }else if(wing == 'Wing C' || wing == 'Wing D'){
        cardLantai += wingCD();
        $('.optLantai').html(cardLantai);
    }else{
        cardLantai += wingLainnya();
        $('.optLantai').html(cardLantai);
    }
});

function wingAB() {
  return `<label for="lantai" class="form-label">Lantai <span               class="text-danger">*</span></label>
        <select class="form-select" id="lantai" required name="lantai">
            <option value="Lantai 1">Lantai 1</option>
            <option value="Lantai 2">Lantai 2</option>
            <option value="Lantai 3">Lantai 3</option>                
        </select>`;
}
function wingCD() {
    return `<label for="lantai" class="form-label">Lantai <span               class="text-danger">*</span></label>
          <select class="form-select" id="lantai" required name="lantai">
              <option value="Lantai 1">Lantai 1</option>
              <option value="Lantai 2">Lantai 2</option>                              
          </select>`;
}
function wingLainnya() {
    return `<label for="lantai" class="form-label">Lantai <span               class="text-danger">*</span></label>
          <select class="form-select" id="lantai" required name="lantai">
              <option value="Lantai 1">Lantai 1</option>                                          
          </select>`;
}


$('#jenis').on('click', function() {
    const jenis = $(this).val();
    let cardRefri = '';
    if(jenis == 'Inverter'){
        cardRefri += funcInverter();
        $('.optRefrigerant').html(cardRefri);
    }else{
        cardRefri += funcNonInverter();
        $('.optRefrigerant').html(cardRefri);
    }
});

function funcInverter(){
    return `<label for="refrigerant" class="form-label">Refrigerant <span class="text-danger">*</span></label>
    <select class="form-select" id="refrigerant" required name="refrigerant">        
        <option value="R32">R32</option>
        <option value="R410">R410</option>
    </select>`;
}

function funcNonInverter(){
    return `<label for="refrigerant" class="form-label">Refrigerant <span class="text-danger">*</span></label>
    <select class="form-select" id="refrigerant" required name="refrigerant">        
        <option value="R22">R22</option>
        <option value="R32">R32</option>
        <option value="R410">R410</option>
    </select>`;
}