function add_val(id,val)
{
	if(document.getElementById(id).checked==true)
	{
		//alert("COPY");
		document.getElementById(id+"_select_plus").disabled=false;
		document.getElementById(id+"_select").value=1;
		subtotal(id,val,1);
	}
	else
	{
		document.getElementById(id+"_select_plus").disabled=true;
		document.getElementById(id+"_select_minus").disabled=true;
		document.getElementById(id+"_select").value=0;
		subtotal(id,val,0);
	}
}
function get_qty(id,val)
{
	var i = id.lastIndexOf("_");	
	var pm = id.substring(i+1,id.length); //gives plus or minus
	var new_id = id.substring(0,i);       // gives the qty id(x_select)
	var qty = parseInt(document.getElementById(new_id).value);
	var r = document.getElementById("radio_buttons");
	if(pm =="plus")
	{
		qty = qty + 1;
	}
	else
	{
		qty = qty - 1;
	}
	document.getElementById(new_id).value = qty;
	
	var j = new_id.lastIndexOf("_");
	var id_select = new_id.substring(0,j); //gives main id
	var value = document.getElementById(id_select).value;
	if(qty==0)
	{
		document.getElementById(id_select).checked=false;
		document.getElementById(id_select+"_select_minus").disabled=true;
		document.getElementById(id_select+"_select_plus").disabled=true;
	}
	else
	{
		if(qty==10)
		{
			document.getElementById(id_select+"_select_plus").disabled=true;
		}
		document.getElementById(id_select+"_select_minus").disabled=false;
	}
	subtotal(id_select,value,qty);
}
function subtotal(id,val,qty)
{
	var qty_old = parseInt(document.getElementById(id+"_qty").value);
	var subtotal = 0;
	var total_val_old = parseInt(document.getElementById("total_val").value);
	var subtotal_old = parseInt(document.getElementById(id+"_subtotal").value);
	var grand_total = parseInt(document.getElementById("grand_total").innerHTML);
	var total_val_1 = parseInt(document.getElementById("total_val").value);
	var r = document.getElementById("radio_buttons");
	if(qty>qty_old)
	{
		subtotal = subtotal_old + ( parseInt(qty-qty_old) * parseInt(val) );
	}
	else
	{
		subtotal = subtotal_old - ( parseInt(qty_old-qty) * parseInt(val) );
	}
	total_val = total_val_old + subtotal - subtotal_old;
	//alert("FINISHED!");
	raido(total_val);
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
	
}
function radio(num)
{
	var r = document.getElementById("radio_buttons");
	//alert(r);
	if(num>0)
	{
		r.style.display = 'block';
	}
	else
	{
		r.style.display = 'none';
	}
}
