<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#animalForm").validate();

		// validate signup form on keyup and submit
		$("#animalForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				cliente: {
					required: true,
					minlength: 2
				},
				nomeAnimal: {
					required: true,
					minlength: 2
				},
				idade: {
					required: true,
					
				},
				tipoAnimal: {
					required: true,
					minlength: 2
				},
				raca: {
					required: true,
					minlength: 2
				},
				cor: required: true,
					minlength: 2
			},
			messages: {
				cliente: "Preenchimento do campo obrigatório",
				nomeAnimal: "Preenchimento do campo obrigatório",
				idade: {required: "Preenchimento do campo obrigatório",
						
				},
				tipoAnimal: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
				},
				raca: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				cor: "Preenchimento do campo obrigatório",
				
			}
		});

	});
	</script>