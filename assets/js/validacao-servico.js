<script>
	$.validator.setDefaults({
		submitHandler: function() {
			alert("submitted!");
		}
	});

	$().ready(function() {
		// validate the comment form when it is submitted
		$("#servicoForm").validate();

		// validate signup form on keyup and submit
		$("#servicoForm").validate({
			rules: {
				 {
					required: true,
					minlength: 2
				},
				descricao: {
					required: true,
					minlength: 2
				},
				preco: {
					required: true,
					
				},
			},
			messages: {
				
				descricao: {
					required: "Preenchimento do campo obrigatório",
					minlength: "Quantidade mínima de 2 caracteres",
				},
				preco: {
					required: "Preenchimento do campo obrigatório",
				
					},
				
				
			}
		});

	});
	</script>