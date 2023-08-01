/**
 * confirmar a exclusao de um contato 
 * 
 */

 function confirmar(idcon){
	 let resposta = confirm("confirma a exclusao deste contato")
	 if (resposta === true){
		//alert(idcon)
		window.location.href = "delete?idcon=" + idcon
		
	 } 
	 
 }