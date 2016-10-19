/* Power.java */
/* Date  : 18 October 2016
 * Author: Ankit Pati
 */

package in.edu.sitpune;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class Power extends BodyTagSupport {
    final static long serialVersionUID = 0l;
    
    private double base, power;
      
    public void setBase(double base) {
        this.base = base;
    }
    
    public void setPower(double power) {
        this.power = power;
    }
  
    @Override
    public int doStartTag() throws JspException {
        try {
            pageContext.getOut().println(Math.pow(base, power));
        } catch(IOException e) {
            System.err.println("IO Pipe Broken!");
        }
        return SKIP_BODY;
    }
}
/* end of Power.java */
