function add_val(id,val)
{
	if(document.getElementById(id).checked==true)
	{
		document.getElementById(id+"_select").disabled=false;
		subtotal(id,val,1);
	}
	else
	{
		document.getElementById(id+"_select").disabled=true;
		subtotal(id,val,0);
	}
}
function get_qty(id)
{
	var e = document.getElementById(id);
	var qty = e.options[e.selectedIndex].value;
	var i = id.lastIndexOf("_");	
	var new_id = id.substring(0,i);
	var value = document.getElementById(new_id).value;
	subtotal(new_id,value,qty);
}
function subtotal(id,val,qty)
{
	var qty_old = parseInt(document.getElementById(id+"_qty").value);
	var subtotal = 0;
	var total_val_old = parseInt(document.getElementById("total_val").value);
	var subtotal_old = parseInt(document.getElementById(id+"_subtotal").value);
	var grand_total = parseInt(document.getElementById("grand_total").innerHTML);
	if(qty>qty_old)
	{
		subtotal = subtotal_old + ( parseInt(qty-qty_old) * parseInt(val) );
	}
	else
	{
		subtotal = subtotal_old - ( parseInt(qty_old-qty) * parseInt(val) );
	}
	//alert("I am alive");
	total_val = total_val_old + subtotal - subtotal_old;
	document.getElementById(id+"_qty").value=qty;
	document.getElementById(id+"_subtotal").value=subtotal;
	document.getElementById("total_val").value=total_val;
	document.getElementById(id+"_tab_name").innerHTML=id;
	document.getElementById(id+"_tab_price").innerHTML=val;
	document.getElementById(id+"_tab_qty").innerHTML=qty;
	document.getElementById(id+"_tab_subtotal").innerHTML=subtotal;
	document.getElementById("total_val_tab").innerHTML="Item Total: Rs: "+total_val;
	document.getElementById("total_val_tab1").innerHTML="Item Total: Rs: "+total_val;
	if(qty==0)
	{
		document.getElementById(id+"_tab_name").innerHTML="";
		document.getElementById(id+"_tab_price").innerHTML="";
		document.getElementById(id+"_tab_qty").innerHTML="";
		document.getElementById(id+"_tab_subtotal").innerHTML="";
	}
	grand_total = grand_total + total_val - total_val_old;
	document.getElementById("grand_total").innerHTML=grand_total;
}
