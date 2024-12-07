<%@page import="controller.UsuarioDao"%>
<%@page import="model.Usuario"%>
<%
	String nome = request.getParameter("nome");
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	String id = request.getParameter("id");
	
	if(nome != null && nome != ""&& email != null && email != "" && senha != null && senha != ""){
		Usuario usuario = new Usuario();
		Usuario dao = new Usuario();
		usuario.setNome(nome);
		usuario.setEmail(email);
		usuario.setCpf(senha);
		usuario.setId(Integer.parseInt(id));
		dao.atualizar(usuario);
		response.sendRedirect("home.jsp");
		
	}else{
		response.sendRedirect("updateconta.jsp");
	}

%>
