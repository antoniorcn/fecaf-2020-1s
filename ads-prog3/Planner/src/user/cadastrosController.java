package user;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastrosController")
public class cadastrosController extends HttpServlet{
		private List<Cadastro> lista = new ArrayList<>();
		private cadastroDAO dao = new cadastroDAO();
		private SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		
		@Override
		public void doPost(HttpServletRequest req, HttpServletResponse res) 
					throws IOException{

				String txtnome = req.getParameter("txtnome");
				String txtsobrenome = req.getParameter("txtsobrenome");
				String txtsenha = req.getParameter("txtsenha");
				String txtcsenha = req.getParameter("txtcsenha");
				String txtusuario = req.getParameter("txtusuario");
				String txtemail = req.getParameter("txtemail");
				String txtcemail = req.getParameter("txtcemail");
				String txttelefone = req.getParameter("txttelefone");
				String txtcelular = req.getParameter("txtcelular");
				String txtdata = req.getParameter("nascimento");
				String txtcpf = req.getParameter("txtcpf");
				
				Cadastro cad = new Cadastro();
				cad.setNome(txtnome);
				cad.setSobrenome(txtsobrenome);
				cad.setSenha(txtsenha);
				cad.setCsenha(txtcsenha);
				cad.setUsuário(txtusuario);
				cad.setEmail(txtemail);
				cad.setCemail(txtcemail);
				cad.setTelefone(txttelefone);
				cad.setCelular(txtcelular);
				cad.setCpf(txtcpf);
				try {
					cad.setData(sdf.parse(txtdata));
				} catch(java.text.ParseException e) {
					e.printStackTrace();
				}
					lista.add(cad);
				    try {
						dao.adicionar(cad);
					} catch (Exception e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		

				req.getSession().setAttribute("LISTA", lista);
				res.sendRedirect("./cadastro.jsp");
	}
 }

