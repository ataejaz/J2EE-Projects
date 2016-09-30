
<%@ page import="java.io.*,java.util.*" %>

<html>
<head>

<meta charset="UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
    h1{
       
        color:red
    }
     h2{
        margin: 30px 0;
        padding: 0 100px 15px 0;
       
        
    
       
    }
    h3{
       
        border-bottom: 1px solid #E5E5E5;
        
    
       
    }
	.bs-example{
    	margin: 20px;
    }
	h4
	{
	color:red;
	margin: 30px 0;
        padding: 0 100px 15px 0;
	border-bottom: 1px solid #E5E5E5;
	
	}
	h5
	{
	color:red;
	margin: 30px 0;
        padding: 0 100px 15px 0;
	border-bottom: 1px solid #E5E5E5;
	
	}
	h6
	{
	color:red;
	margin: 30px 0;
        padding: 0 100px 15px 0;
	border-bottom: 1px solid #E5E5E5;
	
	}
</style>
</head>
<body>
<%

if(request.getParameter("submit")==null)
{ %>

<%= request.getParameter("submit")%>
<form class="form-horizontal" action="Test2.jsp" method="POST">
<div class="bs-example">
    <h1>Physician Referral Form</h1>
    <h2>Is this referral urgent?     
       
   
                <label class="radio-inline">
                    <input type="radio" name="urgentoption" value="Referral is urgent"> Yes
                </label>
       

                <label class="radio-inline">
                    <input type="radio" name="urgentoption" value="Referral is not urgent"> No
                </label>
         
        </h2>
    

        <h3>If urgent appointment is needed, please call 614-293-5123 to speak with a scheduling representative.</h3>
Please fill out this form completely, include any clinical documentation relevant to this referral, and fax all documents to 614-293-1456.
Missing information (including clinical documentation) may result in a processing delay.<br>
<label class="radio-inline">
<input type="radio" name="clinicalreq" value="is included"><b>Clinical Documentation included</b><br>
<b><i>(Examples include: insurance cards, imaging, lab work, office procedures, office notes, etc.)</b> </i>


 </label></br></br>
<h4> <i>Patient Information: </i></h4>
    
        <div class="form-group">

            <label class="control-label col-xs-3" >First Name:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="firstName" placeholder="First Name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="middlename" >Middle Name:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="middlename" placeholder="Middle Name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="lastName">Last Name:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="lastName" placeholder="Last Name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="gender">Gender:</label>
            <div class="col-xs-5">
                <label class="radio-inline">
                    <input type="radio" name="genderRadios" value="Male" required> Male
                </label>
       

                <label class="radio-inline">
                    <input type="radio" name="genderRadios" value="Female" required> Female
                </label>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="maritalstatus">Marital Status:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="maritalstatus" placeholder="Marital Status" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="ssn">Last four digits of SSN:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="ssn" placeholder="Last four digits of SSN" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3">Date of Birth:</label>
            <div class="col-xs-5">
               <input class="form-control" id="datepicker" name="datepicker" placeholder="MM/DD/YYYY" type="text" required/>
            </div>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
            
        </div>
		
		<div class="form-group">
            <label class="control-label col-xs-3" for="phonenumber">Primary Phone:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="phonenumber" placeholder="Primary Phone" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="postalAddress">Address:</label>
            <div class="col-xs-5">
                <textarea rows="3" class="form-control" name="postalAddress" placeholder="Postal Address" required></textarea>
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-3" for="city">City:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="city" placeholder="City" required>
            </div>
        </div>
		<div class="form-group">
            <label class="control-label col-xs-3" for="state">State::</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="state" placeholder="State" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-xs-3" for="ZipCode">Zip Code:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="ZipCode" placeholder="Zip Code" required>
            </div>
        </div>
		        <div class="form-group">
            <label class="control-label col-xs-3" for="country">Country:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="country" placeholder="Country" required>
            </div>
        </div>
       
        
        <br>
		<h5><i>Details:</i></h5>
		<div class="form-group">
            <label class="control-label col-xs-3" for="Referralreasons">Reasons for Referral:</label>
            <div class="col-xs-5">
                <textarea rows="4" class="form-control" name="Referralreasons" placeholder="Reasons for referral" required></textarea>
				
				
				
				
            </div>
			
			</div>
			<div class="form-group">
				
				<label class="control-label col-xs-3" for="PreferredPhysician">Preferred Physician or Provider Name if Applicable:</label>
				<div class="col-xs-5">
                <input type="text" class="form-control" name="PreferredPhysician" placeholder="PCP" required>
            </div>
				
        </div>
		<div class="form-group">
				
				<label class="control-label col-xs-3" for="dept">Department or Speciality Area:</label>
				<div class="col-xs-5">
                <input type="text" class="form-control" name="dept" placeholder="Department or Speciality Area" required>
            </div>
				
        </div>
		
		<div class="form-group">
            <label class="control-label col-xs-3"></label>
            <div class="col-xs-3">
                <label class="radio-inline">
                    <input type="radio" name="typeofreferral" value="Consult or Second Opinion" required> <b>Consult or second opinion</b>
                </label>
            </div>
            <div class="col-xs-3">
                <label class="radio-inline">
                    <input type="radio" name="typeofreferral" value="Transfer or Care" required> <b>Transfer or Care</b>
                </label>
            </div>
        </div>
		<h6> <i> Referring Provider Information:</i></h6>
		<div class="form-group">

            <label class="control-label col-xs-3" for="providerfirstName">Provider First Name:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providerfirstName" placeholder="Provider First Name" required>
            </div>
			</div>
			<div class="form-group">

            <label class="control-label col-xs-3" for="providerlastName">Provider Last Name:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providerlastName" placeholder="Provider Last Name" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="providertitle">Provider Title:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providertitle" placeholder="Provider Title" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="npinumber">NPI number:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="npinumber" placeholder="NPI Number" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="streetaddress">Street Address:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="streetaddress" placeholder="Street Address" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="providercity">City:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providercity" placeholder="City" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="providerstate">State:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providerstate" placeholder="State" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="providerzip">Zip:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providerzip" placeholder="Zip" required>
            </div>
			</div>
			<div class="form-group">
			<label class="control-label col-xs-3" for="providerphone">Phone:</label>
            <div class="col-xs-5">
                <input type="text" class="form-control" name="providerphone" placeholder="Phone" required>
            </div>
			</div>
			<div class="form-group">
						<label class="control-label col-xs-3" for="providerextension">Extension:</label>

			<div class="col-xs-5">
                <input type="text" class="form-control" name="providerextension" placeholder="Extension" required>
            </div>
			</div>
			
			<div class="form-group">
						<label class="control-label col-xs-3" for="providerfax">Fax:</label>

			<div class="col-xs-5">
                <input type="text" class="form-control" name="providerfax" placeholder="Fax" required>
            </div>
			</div>
			<div class="form-group">
						<label class="control-label col-xs-3" for="PhysicianSignature">Physician Signature:</label>

			<div class="col-xs-5">
    <hr><b></b></hr>
            </div>
			</div>
			
       
			
			
			
			
			
       
        <div class="form-group">
            <div class="col-xs-offset-3 col-xs-6">
                <input type="submit" class="btn btn-default"  value="Submit" name="submit"/>
                <input type="reset" class="btn btn-default" value="Reset"/>
					<br><br> <i>Please print out this form and include any relevant clinical documentation. Fax all documents to 614-293-1456. A scheduling representative will work
with your patient to coordinate the appointment. Your ofce will receive notification via fax once the appointment has been scheduled. To contact via
telephone, please call 614-293-5123 to speak with a scheduling representative.</i></br></br>
            </div>
        </div>
	

</body>
</form>
</html>                                		


<% }

else

{ %>


<html>
<head>
<title> <strong> Details</strong></title>
<link rel=STYLESHEET
 HREF="JSP-Styles.css" TYPE="text/css">
</head>
<body>
<table width="100%" border="1" align="center">
<tr bgcolor="#949494">
<th>Param Name</th>
<th>Param Value(s)</th>
</tr>



<%
   Enumeration paramNames = request.getParameterNames();

   while(paramNames.hasMoreElements())
		{
			Object objOri=paramNames.nextElement();
			String param=(String)objOri;
			out.print("<tr><td>" + param + "</td>\n");
			String value=request.getParameter(param);
			out.println("<td> " + value + "</td></tr>\n");
		}		
%>
</table>
</body>
</html>

<%} %>




