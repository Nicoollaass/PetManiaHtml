<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#clienteForm").validate();

		// validate signup form on keyup and submit
		$("#clienteForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				nome: {
					required: true,
					minlength: 2
				},
				dataNasc: {
					required: true,
					minlength: 2
				},
				cpf: {
					required: true,
					
				},
				telefone: {
					required: true,
					minlength: 2
				},
				e-mail: {
					required: true,
					minlength: 2
				},
				sexo: required: true,
					minlength: 2
			},
			messages: {
				nome: "Preenchimento do campo obrigatório",
				dataNasc: {required: "Preenchimento do campo obrigatório",
						minlength: "Quantidade mínima de 2 caracteres",
				},
				cpf: {required: "Preenchimento do campo obrigatório",
						minlength: "Quantidade mínima de 2 caracteres",
				},
				telefone: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
				},
				e-mail: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				sexo: "Preenchimento do campo obrigatório",
				
			}
		});

	});
	</script>