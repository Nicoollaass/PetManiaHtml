<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#produtoForm").validate();

		// validate signup form on keyup and submit
		$("#produtoForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				descricao: {
					required: true,
					minlength: 2
				},
				categoria: {
					required: true,
					minlength: 2
				},
				marca: {
					required: true,
					
				},
				preco: {
					required: true,
					
				},
				quantidade: {
					required: true,
					
				},
			},
			messages: {
				descricao: "Preenchimento do campo obrigatório",
				categoria: "Preenchimento do campo obrigatório",
				marca: {required: "Preenchimento do campo obrigatório",
						minlength: "Quantidade mínima de 2 caracteres",
				},
				preco: {
					required: "Preenchimento do campo obrigatório",
					
				},
				quantidade: {
					required: "Preenchimento do campo obrigatório",
					
					},
				
				
			}
		});

	});
	</script>