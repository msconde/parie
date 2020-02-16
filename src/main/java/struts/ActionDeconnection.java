package struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

public class ActionDeconnection extends ActionSupport {
    Map<String, Object> session = ActionContext.getContext().getSession();
    Map<String,Object> application = ActionContext.getContext().getApplication();

    public String deconnect()
    {
        session.clear();
        application.clear();
        return SUCCESS;
    }
}
