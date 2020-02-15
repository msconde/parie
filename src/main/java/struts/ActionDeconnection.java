package struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class ActionDeconnection extends ActionSupport {
    Map<String, Object> session = ActionContext.getContext().getSession();

    public String deconnect()
    {
        session.clear();
        return SUCCESS;
    }
}
