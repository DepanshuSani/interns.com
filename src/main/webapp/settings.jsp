<br /><br /><br />
<center>
<input type="Button" data-toggle="modal" data-target="#viewdetail1" value ="Change Password" class="btn btn-primary" /> 
<br /><br /><br />
<input type="Button" value = "Deactivate" class="btn btn-primary" />
</center>
<!-- Modal -->
	<div class="modal fade" id="viewdetail1" tabindex="-1" role="dialog" aria-labelledby="Label1" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
	<div class="modal-content">
	<div class="modal-header">
	<h5 class="modal-title" id="Label1">Change Password</h5>
	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
	<span aria-hidden="true">&times;</span>
	</button>
	</div>
	<div class="modal-body">
		<form action="" method="post">
			<table class="tabular-form">
			   	<tr>
			       	<td>Enter New Password :</td>
			           <td><input type="password" class="pass" required/></td>
			       </tr>
			   	<tr>
			       	<td>Retype Password :</td>
			           <td><input type="password" class="cpass" required/></td>
			       </tr>
		   	</table> 
		   	<input type="submit" value="Update Password" />            	
		</form>
	</div>
	<div class="modal-footer">
	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	</div>
	</div>
	</div>
	</div>