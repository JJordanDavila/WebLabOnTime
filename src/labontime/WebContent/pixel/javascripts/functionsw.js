
function keyRestrictw(e) {
    validchars='\'-abcdefghijklmnopqrstuvwxyz '+String.fromCharCode(241,252);
    var key='', keychar='';
    key = getKeyCodew(e);
    if (key == null) return true;
    keychar = String.fromCharCode(key);
    keychar = keychar.toLowerCase();
    validchars = validchars.toLowerCase();
    if (validchars.indexOf(keychar) != -1)
        return true;
    if ( key==null || key==0 || key==8 || key==9 || key==13 || key==27 )
        return true;
    return false;
}

function compruebaEspaciow(valor){
    // alert(valor.value);
    //valor.value = ">" + valor.value + "<";
    valor.value = spTrimw(valor.value);
// valor.value=space_rTrim(valor.value);
}

function spTrimw(JSvalue) {
    //La típica función de quitar espacios en blanco de la mayoría de los lenguajes de programación
    var JStemp = JSvalue;
    var JSobj = /^(\s*)([\W\w]*)(\b\s*$)/;
    //Elimina los espacios de delante y detrás
    if (JSobj.test(JStemp)) {
        JStemp = JStemp.replace(JSobj, '$2');
    }
    //Elimina los espacios duplicados
    var JSobj = / +/g;
    JStemp = JStemp.replace(JSobj, " ");
    if (JStemp == " ") {
        JStemp = "";
    }
    return JStemp;
}

function pasarMayusculasw(caja) {
    cadena=caja.value
    var result="";
    var str = cadena.split('');
    for(i=0; i<=str.length-1; i++) {
        str[i] = str[i].toUpperCase();
        result+=str[i];
    }
    caja.value=result;
}

function getKeyCodew(e)
{
    if (window.event)
        return window.event.keyCode;
    else if (e)
        return e.which;
    else
        return null;
}

function limpiarFields() {
	$('input[type=text], textarea, select, input:radio, input:checkbox').val('');
}