package com.bstu.lab5.Tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;

public class Dossier extends TagSupport
{
    static String in =  "<label>Surname&nbsp &nbsp</label>"
                        + "<input name =\"surname \" type = \"text\" width =\"150\" "
                        + " maxlength= \"30\" ";

    public String action = "";

    public String getAction()
    {
        return this.action;
    }

    public void setAction(String action)
    {
        this.action = action;
    }

    public int doStartTag() throws JspException
    {
        String in =     "<form id =\"f01\" name = \"f01\" method =\"POST\""
                        + " action= \"" + this.action + "\">";

        JspWriter out = pageContext.getOut();

        try
        {
            out.print(in);
        }
        catch (IOException e)
        {
            System.out.println("Dossier: " + e);
        }

        return EVAL_BODY_INCLUDE;
    }
    public int doEndTag() throws JspException
    {
        String in = "</form>";

        JspWriter out = pageContext.getOut();
        try
        {
            out.print(in);
        }
        catch (IOException e)
        {
            System.out.println("stafftag.Dossier: " + e);
        }

        return EVAL_BODY_INCLUDE;
    }
}
