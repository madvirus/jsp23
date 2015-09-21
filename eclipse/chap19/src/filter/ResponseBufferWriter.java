package filter;

import java.io.PrintWriter;
import java.io.StringWriter;

public class ResponseBufferWriter extends PrintWriter {
	public ResponseBufferWriter() {
		super(new StringWriter(4096));
	}

	public String toString() {
		return ((StringWriter) super.out).toString();
	}
}