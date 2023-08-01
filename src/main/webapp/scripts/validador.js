/**
 *validação de formulario (nov.html)
 *  
 */

function validar() {
	//alert("teste")

	let nome = frmContato.nome.value
	let fone = frmContato.telefone.value

	if (nome === "") {
		alert('Preencha o Campo Nome')
		frmContato.nome.focus()
		return false
	} else if (fone === "") {
		alert('Preencha o Campo Telefone')
		frmContato.telefone.focus()
		return false
	} else {
		document.forms["frmContato"].submit()

	}




}
