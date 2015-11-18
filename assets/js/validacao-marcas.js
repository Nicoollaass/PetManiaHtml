<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#marcaForm").validate();

		// validate signup form on keyup and submit
		$("#marcaForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				marca: {
					required: true,
					minlength: 2
				},
				
			},
			messages: {
				marca: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				
			}
		});

	});
	</script>