<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#funcionarioForm").validate();

		// validate signup form on keyup and submit
		$("#funcionarioForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				nome: {
					required: true,
					minlength: 2
				},
				funcionario: {
					required: true,
					minlength: 2
				},
				filial: {
					required: true,
					minlength: 2
				},
				funcao: {
					required: true,
					minlength: 2
				},
				dataNasc: {
					required: true,
					minlength: 8
				},
				cpf: {
					required: true,
					minlength: 2
				},
				telefone: {
					required: true,
					minlength: 2
				},
				email: required: true,
					minlength: 2
			},
			messages: {
				nome: "Preenchimento do campo obrigatório",
				funcionario: "Preenchimento do campo obrigatório",
				filial: {required: "Preenchimento do campo obrigatório",
						minlength: "Quantidade mínima de 2 caracteres",
				},
				funcao: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
				},
				dataNasc: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				cpf: "Preenchimento do campo obrigatório",
				telefone: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				email: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
					},
				
			}
		});

	});
	</script>