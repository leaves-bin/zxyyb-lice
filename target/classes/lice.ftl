<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Lice</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	</head>
	<body>
	
		<div class="container-fluid">
	      <div class="row">
	        <div class="col-sm-12 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	          <h1 class="page-header">${title}</h1>
	
	          <h2 class="sub-header">${desc}</h2>
	          <div class="table-responsive">
	            <table class="table table-striped">
	              <thead>
	                <tr>
	                  <th>IP</th>
	                  <th>Header</th>
	                  <th>Header</th>
	                  <th>Header</th>
	                  <th>Header</th>
	                </tr>
	              </thead>
	              <tbody>
	              	<#if liceList?? && (liceList?size>0)>
	              	<#list liceList as lice>
	              		<tr>
		                  <td>${lice.ip}</td>
		                  <td>Lorem</td>
		                  <td>ipsum</td>
		                  <td>dolor</td>
		                  <td>sit</td>
		                </tr>
	              	</#list>
	              	</#if>
	              </tbody>
	            </table>
	          </div>
	        </div>
	      </div>
	    </div>
	    
	    <form method="post" action="/lice">
	    	<input type="text" name="name" value="123"/>
	    	<input type="submit"/>
	    </form>
		
	</body>
</html>
