<style type="text/css">
#employee_avatar_display
{
	transition:all 200ms ease-in-out;
}
.img-remove-btn
{
	background: #FF7070;
    border: none;
    width: 30px;
    height: 30px;
    color: white;
}
</style>
<div class="row">
	<div class="col-xs-12 col-md-6">
		<h4>REGISTER NEW EMPLOYEE</h4>
	</div>
	<div class="col-xs-12 col-md-6">
		<a onclick="load_employee();" href="javascript:void(0);">
			<h5 class="pull-right"><i class="fa fa-chevron-left"></i> RETURN TO LIST&emsp;</h5>
		</a>
		<a onclick="submitNewEmployee()" href="javascript:void(0);">
			<h5 class="pull-right"><i class="fa fa-check"></i> REGISTER EMPLOYEE&emsp;|&emsp;</h5>
		</a>
	</div>
</div>
<div class="row">
	<form id="form-new_employee">
	<input type="submit" id="submit-btn" hidden>
	<div class="col-xs-12 plr10">
		<div class="col-xs-12 col-md-8 plr5">
			<div class="row">
				<div class="col-xs-12">
					<div class="my-container mt10">
						<div class="row">
							<div class="col-xs-12">
								<h4 class="mt0 mb0"><small><i class="fa fa-user-o"></i> PERSONAL & EMPLOYMENT DETAILS</small></h4>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12 plr10">
								<div class="col-xs-12 col-sm-5 col-md-4 plr5">
									<!-- <div class="row" hidden>
										<div class="col-xs-12">
											<label class="mt10">AVATAR</label>
										</div>
										<div class="col-xs-12 img img100" id="image-preview">
											<div class="img img100" style="background:url('http://127.0.0.1/sbes/resources/theme/dist/img/user2-160x160.jpg');">
											</div>
											<label for="image-upload" id="image-label">Choose File</label>
											<input type="file" name="image" id="image-upload" />
										</div>
									</div> -->
									<div class="row">
										<div class="col-xs-12">
											<div class="col-xs-12 plr0">
												<label class="mt5 mb0">AVATAR</label>
												<input type="file" name="image" id="employee_avatar" class="hidden"  accept="image/*"/>
												<p id="employee_avatar_remove_cont" style="position: absolute; right:0; margin:0px;"></p>
												<label for="employee_avatar" style="width:100%; display:absolute;">
													<div id="employee_avatar_display" class="img img100" style="background:url('https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png') #676767;">
													</div>
												</label>
											</div>
										</div>
									</div>
								</div>
								<div class="col-xs-12 col-sm-7 col-md-8">
									<div class="row">
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">FIRST NAME</label>
											<input 
												type="text" 
												name="firstname"
												class="form-control pull-right" 
												placeholder="Enter first name..."
												required
											/>
										</div>
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">MIDDLE NAME</label>
											<input
												type="text" 
												name="middlename"
												class="form-control pull-right" 
												placeholder="Enter middle name..."
												required
											/>
										</div>
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">LAST NAME</label>
											<input 
												type="text" 
												name="lastname"
												class="form-control pull-right" 
												placeholder="Enter last name..."
												required
											/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">POSITION</label>
											<select 
												class="form-control"
												name="position"
												id="position"
												required												
											>
											</select>
										</div>
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">STATUS</label>
											<select 
												class="form-control"
												name="status"
											>
												<option>Contractual</option>
												<option>Job Order</option>
												<option>Regular</option>
											</select>
										</div>
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">WAGE</label>
											<div class="input-group">
														<div class="input-group-addon">
													<b>&#8369;</b>
												</div>
												<input 
													type="number" 
													name="wage"
													class="form-control pull-right align-right"
													placeholder="0.00"
													min="0"
													step="0.1"
													required													
												>
											</div>
										</div>
										<div class="col-xs-12 col-md-4 plr5">
											<label class="mt10">ASSIGNMENT</label>
											<select 
												class="form-control"
												name="assignment"
												id = "assignment"
											>
												<option value="0"> None </option>	
											</select>
										</div>
										<div class="col-md-8 plr5">
											<label class="mt10">NOTE</label>
											<textarea 
												class="form-control" 
												placeholder="Enter note for this employee..." 
												name="remarks"
												rows="1"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12 plr10">
					<div class="col-xs-12 col-sm-6 col-md-6 plr5">
						<div class="my-container mt10">
							<div class="row">
								<div class="col-xs-12">
									<h4 class="mt0 mb0"><small><i class="fa fa-list"></i> BONUSES</small></h4>
								</div>
							</div>
							<div class="row mt10">
								<div class="col-xs-12 bonuses-list">
								</div>
							</div>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 plr5">
						<div class="my-container mt10">
							<div class="row">
								<div class="col-xs-12">
									<h4 class="mt0 mb0"><small><i class="fa fa-list"></i> DEDUCTIONS</small></h4>
								</div>
							</div>
							<div class="row mt10">
								<div class="col-xs-12 deduction-list">
									
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-xs-12 col-md-4 plr5">
			<div class="my-container mt10">
				<div class="row">
					<div class="col-xs-12">
						<h4 class="mt0 mb0"><small><i class="fa fa-clock-o"></i> SCHEDULE DETAILS</small></h4>
					</div>
				</div>


				<?php
					$days = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];
					foreach ($days as $key => $value) {
						?>
						<div class="row">
							<div class="col-xs-12 plr10">
								<div class="col-xs-12 plr5">
									<label class="mt10 mb0 my-cb-label"><?=$value?>
										<input type="checkbox" class="my-cb" name="schedule_days[]" data-index=<?=$key?> value="<?=$value?>" checked>
										<span></span>
									</label>
								</div>
								<div class="col-xs-6 plr5 bootstrap-timepicker">
									<h5 class="mt5 mb5"><small>FROM</small></h5>
									<div class="input-group">
										<input type="text" class="form-control timepicker from-time" name="time-from[]">
										<div class="input-group-addon">
											<i class="fa fa-clock-o"></i>
										</div>
									</div>
								</div>
								<div class="col-xs-6 plr5 bootstrap-timepicker">
									<h5 class="mt5 mb5"><small>TO</small></h5>
									<div class="input-group">
										<input type="text" class="form-control timepicker to-time" name="time-to[]">
										<div class="input-group-addon">
											<i class="fa fa-clock-o"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<?php
					}
				?>

			</div>
		</div>
	</div>
	</form>
</div>

<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">
		<div class="modal-content br13">
			<div class="modal-body plr15" id="selection_cont">
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" >
	$('.timepicker').timepicker({
		showInputs: false,
		timeFormat: 'HH:mm'
	});
	$('.from-time').val('8:00 AM');
	$('.to-time').val('5:00 PM');

	function addAdditionalDetails(emp_id, val){
		$.ajax({
			url : "http://localhost/sbes/api?q=InsertDeductions&emp_id="+emp_id,
			method: "POST",
			data: val,
			dataType: 'json'
        });
		$.ajax({
			url : "http://localhost/sbes/api?q=InsertBonuses&emp_id="+emp_id,
			method: "POST",
			data: val,
			dataType: 'json'
        });
		$.ajax({
			url : "http://localhost/sbes/api?q=InsertSchedule&emp_id="+emp_id,
			method: "POST",
			data: val,
			dataType: 'json'
        });

		alert("Employee Added!");
		load_employee();
	}

	function submitNewEmployee(){
        $('#submit-btn').click();
	}

	$('#form-new_employee').submit(function(e){
        var values = $(this).serializeArray();        
		$.ajax({
			url : "http://localhost/sbes/api?q=InsertNewEmployee",
			method: "POST",
			data: values,
			dataType: 'json',
			success: function(response){
				var emp_id = response.values[0].emp_id;

				addAdditionalDetails(emp_id, values);

			}
        });
        e.preventDefault();
	});

	$.ajax({
		url : "http://localhost/sbes/api?q=GetBonuses",
		method: "POST",
		dataType: 'json',
		success: function(response){
			$('.bonuses-list').empty();
			var cbox;
			$.each(response.values, function(key, v){
				cbox = 	'<label class="label-data">' + 
						'<input type="checkbox" name="bonus[]" value="'+v.bonus_id+'"  checked/> ' +  v.bonus_name +
						'</label>';
				$('.bonuses-list').append(cbox);
			});
		}
	});

	$.ajax({
		url : "http://localhost/sbes/api?q=GetDeductions",
		method: "POST",
		dataType: 'json',
		success: function(response){
			var cbox;
			$.each(response.values, function(key, v){
			cbox = 	'<label class="label-data">' + 
					'<input type="checkbox" name="deduction[]" value="'+v.deduction_id+'"  checked/> ' +  v.deduction_name +
					'</label>';

			$('.deduction-list').append(cbox);
			});
		}
	});

	$.ajax({
		url : "http://localhost/sbes/api?q=GetApprovedProjects",
		method: "POST",
		dataType: 'json',
		success: function(response){
			var cbox;
			$.each(response.values, function(key, v){
			cbox = 	'<option value="'+v.project_id+'">' + v.project_name + '</option>';
			$('#assignment').append(cbox);
			});
		}
	});

	$.ajax({
		url : "http://localhost/sbes/api?q=GetAllPositions",
		method: "POST",
		dataType: 'json',
		success: function(response){
			var cbox;
			$.each(response.values, function(key, v){
			cbox = 	'<option value="'+v.position_id+'">' + v.position_name + '</option>';
			$('#position').append(cbox);
			});
		}
	});

	$('.my-cb').click(function(){
		var idx = $(this).data('index');
		var isDisabled = !$(this).prop('checked');
		$($('.from-time')[idx]).prop('disabled', isDisabled);		
		$($('.to-time')[idx]).prop('disabled', isDisabled);
	});

	$('.timepicker').change(function(){
		console.log($(this).val());
	});
</script>



<script type="text/javascript">
  

$("#employee_avatar").change(function(){
  readURL(this,'#employee_avatar_display');

  $(this).val() ?
    $("#employee_avatar_remove_cont").html(
      "<button onclick='removeURL();' type='button' class='img-remove-btn enTrans'>"+
        "<i class='fa fa-times'></i>"+
      "</button>"
    ) : removeURL('featured');
});

function readURL(input,targetObj) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
      $(targetObj).css('background', 'url("' + e.target.result + '")');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

function removeURL(targetObj){
  var oldPath = "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png";
  
  $("#employee_avatar").val("");
  $("#employee_avatar_remove_cont").html("");
  $("#employee_avatar_display").css('background', 'url("'+oldPath+'") #676767');
}
</script>