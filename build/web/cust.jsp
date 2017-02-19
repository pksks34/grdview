<%-- 
    Document   : cust
    Created on : Oct 4, 2015, 2:05:06 AM
    Author     : PRASHANT KUMAR SINGH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Relation</title>
        <script type="text/javascript">
          var country_arr=new Array("Australia","USA","India");
          var s_a=new Array();
          s_a[0]="";
          s_a[1]="Melbourne|Sydney|Adelaide";
          s_a[2]="Arozona|Californea|Texasas";
          s_a[3]="Delhi|Mumbai|Bihar";
         function populateStates( countryElementId, stateElementId ){
	
	var selectedCountryIndex = document.getElementById( countryElementId ).selectedIndex;

	var stateElement = document.getElementById( stateElementId );
	
	stateElement.length=0;	// Fixed by Julian Woods
	stateElement.options[0] = new Option('Select State','');
	stateElement.selectedIndex = 0;
	
	var state_arr = s_a[selectedCountryIndex].split("|");
	
	for (var i=0; i<state_arr.length; i++) {
		stateElement.options[stateElement.length] = new Option(state_arr[i],state_arr[i]);
	}
}

function populateCountries(countryElementId, stateElementId){
	// given the id of the <select> tag as function argument, it inserts <option> tags
	var countryElement = document.getElementById(countryElementId);
	countryElement.length=0;
	countryElement.options[0] = new Option('Select Country','-1');
	countryElement.selectedIndex = 0;
	for (var i=0; i<country_arr.length; i++) {
		countryElement.options[countryElement.length] = new Option(country_arr[i],country_arr[i]);
	}

	// Assigned all countries. Now assign event listener for the states.

	if( stateElementId ){
		countryElement.onchange = function(){
			populateStates( countryElementId, stateElementId );
		};
	}
}
        </script>
    </head>
    <body>
        Select country:<select id="country" name="country"></select>
        Select state:<select id="state" name="state"></select>
        <script type="text/javascript">
            populateCountries("country","state");
        </script>
    </body>
</html>
