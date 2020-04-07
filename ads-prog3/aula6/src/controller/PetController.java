package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PetDAO;
import dao.PetDAOImpl;

import java.text.ParseException;

import model.Pet;
@WebServlet("/PetController")
public class PetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	private PetDAO petDao = new PetDAOImpl();
	public PetController() {
        super();
    }

	protected void doPost(HttpServletRequest request, 
						  HttpServletResponse response) 
				throws ServletException, IOException {
		List<Pet> lista = getLista();
		Pet p = toPet(request);
		String cmd = request.getParameter("CMD");
		String msg = null;
		if ("adicionar".equals(cmd)) { 
			// lista.add(p);
			petDao.adicionar(p);
			msg = "Pet cadastrado com sucesso";
		} else if ("pesquisar".equals(cmd)) {
			// List<Pet> encontrados = new ArrayList<>();
			List<Pet> encontrados = petDao.pesquisarPorNome(p.getNome());
			// for (Pet pet : lista) { 
			// 	if (pet.getNome().contains(p.getNome())) { 
			// 		encontrados.add(pet);
			//	}
			request.getSession().setAttribute("ENCONTRADOS", encontrados);
			// }
			msg = String.format("Foram encontrados %d pets com este nome", encontrados.size());
		}
		
		request.getSession().setAttribute("MENSAGEM", msg);
		response.sendRedirect("./pet.jsp");
	}
	
	public List<Pet> getLista() { 
		List<Pet> lista = (List<Pet>)getServletContext().getAttribute("LISTA");
		if (lista == null) { 
			lista = new ArrayList<>();
			getServletContext().setAttribute("LISTA", lista);
		}
		return lista;
	}
	
	public Pet toPet(HttpServletRequest request) { 
		String txtNome = request.getParameter("TXTNOME");
		String txtTipo = request.getParameter("TXTTIPO");
		String txtRaca = request.getParameter("TXTRACA");
		String txtPeso = request.getParameter("TXTPESO");
		String txtNasc = request.getParameter("TXTNASC");
		
		Pet p = new Pet();
		p.setNome(txtNome);
		p.setTipo(txtTipo);
		p.setRaca(txtRaca);
		try { 
			p.setPeso(Double.parseDouble(txtPeso));
			p.setNascimento(sdf.parse(txtNasc));
		} catch(NumberFormatException e) { 
			e.printStackTrace();
		} catch(java.text.ParseException e) { 
			e.printStackTrace();
		}		
		return p;
	}

}
