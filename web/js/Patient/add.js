$(document).ready(function()
{           
    $("#savePatient").on('click', this, function()
    {
        var blank_counter = 0;                
        
        if("" == $("#txtfName").val() || null == $("#txtfName").val()){
            blank_counter++;
        }
        if("" == $("#txtmName").val() || null == $("#txtmName").val()){
            blank_counter++;
        }
        if("" == $("#txtlName").val() || null == $("#txtlName").val()){
            blank_counter++;
        }
        if(0 == $("#txtSex").val()){
            blank_counter++;
        }
        if("" == $("#datepicker").val() || null == $("#datepicker").val()){
            blank_counter++;
        }
        if("" == $("#txtAge").val() || null == $("#txtAge").val()){
            blank_counter++;
        }
        if("" == $("#txtNationality").val() || null == $("#txtNationality").val()){
            blank_counter++;
        }
        if("" == $("#txtAddress").val() || null == $("#txtAddress").val()){
            blank_counter++;
        }
        
        console.log(blank_counter);
    });
});
