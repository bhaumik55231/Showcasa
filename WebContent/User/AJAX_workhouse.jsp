<!DOCTYPE html>
<html>
<style>
<link href="css/rating.css" rel="stylesheet">
table,th,td 
{
  border : 1px solid black;
  border-collapse: collapse;
}
th,td 
{
  padding: 5px;
}
</style>
<body>

<form action="" id="one"> 
<!-- <select name="customers" onchange="showCustomer(this.value)">
<option value="">Select a customer:</option>
<option value="1">Alfreds Futterkiste</option>
<option value="2 ">North/South</option>
<option value="3">Wolski Zajazd</option>
</select> -->
<fieldset class="rating" name="star">
							    <input type="radio" id="star5" name="rating1" value="5" onclick="showCustomer(this.value)"/><label class = "full" for="star5" title="Awesome - 5 stars"></label>
							    <input type="radio" id="star4half" name="rating1" value="4.5" onclick="showCustomer(this.value)"/><label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>
							    <input type="radio" id="star4" name="rating1" value="4" onclick="showCustomer(this.value)"/><label class = "full" for="star4" title="Pretty good - 4 stars"></label>
							    <input type="radio" id="star3half" name="rating1" value="3.5" onclick="showCustomer(this.value)"/><label class="half" for="star3half" title="Meh - 3.5 stars"></label>
							    <input type="radio" id="star3" name="rating1" value="3" onclick="showCustomer(this.value)"/><label class = "full" for="star3" title="Meh - 3 stars"></label>
							    <input type="radio" id="star2half" name="rating1" value="2.5" onclick="showCustomer(this.value)"/><label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>
							    <input type="radio" id="star2" name="rating1" value="2" onclick="showCustomer(this.value)"/><label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
							    <input type="radio" id="star1half" name="rating1" value="1.5" onclick="showCustomer(this.value)"/><label class="half" for="star1half" title="Meh - 1.5 stars"></label>
							    <input type="radio" id="star1" name="rating1" value="1" onclick="showCustomer(this.value)"/><label class = "full" for="star1" title="Sucks big time - 1 star"></label>
							    <input type="radio" id="starhalf" name="rating1" value="0.5" onclick="showCustomer(this.value)"/><label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
								
</fieldset>
</form>
<br>
 <div id="two"></div>
 
<script>
function showCustomer(str)
{
  var xhttp;    
  xhttp = new XMLHttpRequest();
  
  xhttp.onreadystatechange = function() 
  {
    if (xhttp.readyState == 4 && xhttp.status == 200)
    {
      document.getElementById("one").innerHTML = xhttp.responseText;
      document.getElementById("two").innerHTML = "<p class='movie__option'><strong>Your Ratings: </strong>"+str+"/10</p>";
      
    }
  };
  xhttp.open("GET", "${pageContext.request.contextPath}/revenueController?&flag=ajax&value="+str, true);
  xhttp.send();
}
</script>
</body>
</html>
