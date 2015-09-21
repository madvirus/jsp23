package filter;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

@WebFilter(filterName = "xsltFilter", urlPatterns = { "/xml/*" })
public class XSLTFilter implements Filter {

	private String xslPath = null;

	@Override
	public void init(FilterConfig config) throws ServletException {
		xslPath = config.getServletContext().getRealPath("/WEB-INF/xsl/book.xsl");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		XSLTResponseWrapper responseWrapper = 
				new XSLTResponseWrapper((HttpServletResponse) response);
		chain.doFilter(request, responseWrapper);

		// XSL/T 변환
		try {
			TransformerFactory factory = TransformerFactory.newInstance();
			Reader xslReader = new BufferedReader(new FileReader(xslPath));

			StreamSource xslSource = new StreamSource(xslReader);

			Transformer transformer = factory.newTransformer(xslSource);

			String xmlDocument = responseWrapper.getBufferedString();
			Reader xmlReader = new StringReader(xmlDocument);
			StreamSource xmlSource = new StreamSource(xmlReader);

			StringWriter buffer = new StringWriter(4096);

			transformer.transform(xmlSource, new StreamResult(buffer));

			writer.print(buffer.toString());
		} catch (Exception ex) {
			throw new ServletException(ex);
		}

		writer.flush();
		writer.close();
	}

	@Override
	public void destroy() {
	}
}