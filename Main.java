
import org.antlr.v4.runtime.ANTLRFileStream;
import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Token;
public class mymma {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try
		{
			CharStream input = new ANTLRFileStream("/Users/krish/eclipse-workspace1/ppp27/src/input");
	//	ANTLRInputStream input = new ANTLRInputStream("2+3*");
		hiiLexer lexer = new hiiLexer(input);
		CommonTokenStream tokens = new CommonTokenStream(lexer);
		hiiParser parser = new hiiParser(tokens);
		System.out.println(parser.compilation_unit());
		}
		catch(Exception e)
		{
		}
		}


	}