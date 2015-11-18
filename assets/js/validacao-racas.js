<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#racaForm").validate();

		// validate signup form on keyup and submit
		$("#racaForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				raca: {
					required: true,
					minlength: 2
				},
			},
			messages: {
				
				raca: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				}
		});

	});
	</script>