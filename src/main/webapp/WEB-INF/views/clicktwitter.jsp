<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Pubnub Twitter</title>
    <!-- Include the PubNub Library -->
<script src="https://cdn.pubnub.com/pubnub.min.js"></script>

<script type="text/javascript">

var table = document.createElement('TABLE');
table.border='1';

var tableBody = document.createElement('TBODY');
table.appendChild(tableBody);

  var PUBNUB_demo = PUBNUB.init({
    publish_key: 'pub-c-47fb8998-381d-4c65-be36-66f6b4a2d3bf',
    subscribe_key: 'sub-c-a51cafda-d1c9-11e4-95a3-0619f8945a4f'
  });
  
</script>
  </head>
  <body>
    <script src="https://cdn.pubnub.com/pubnub.min.js"></script>
     <script>
     var data;
     PUBNUB.init({
    	 subscribe_key: 'sub-c-78806dd4-42a6-11e4-aed8-02ee2ddab7fe'
    	 }	).subscribe({
    	 channel : 'pubnub-twitter',
    	 message : function(msg){ 
    		       console.log(msg);
    		       var myTableDiv = document.getElementById("myDynamicTable");
    		       var tr = document.createElement('TR');
    		       tableBody.appendChild(tr);
    		       for (var j=0; j<1; j++){
    		           var td = document.createElement('TD');
    		           td.width='200';
    		           var elem = document.createElement("img");
    		           elem.setAttribute("src",msg.user.profile_image_url);
    		           td.appendChild(elem);
    		           td.appendChild(document.createTextNode(msg.user.screen_name));
    		           
    		           var td2 = document.createElement('TD');
    		           td2.width='200';
    		           td2.appendChild(document.createTextNode(msg.text));
    		       		
    		           
    		           tr.appendChild(td);
    		           tr.appendChild(td2);
    		       }
    		    myTableDiv.appendChild(table);
    	 }
    	 });
</script>

<div id="myDynamicTable"></div>
</body>
</html>