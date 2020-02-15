package struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;
import modele.Utilisateur;

import java.util.Map;

public class LoginInterceptor extends AbstractInterceptor {
    @Override
    public String intercept(final ActionInvocation invocation) throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        Utilisateur user = (Utilisateur) session.get("user");

        if (user != null) {
            return invocation.invoke();
        }

        Object action = invocation.getAction();

        if (!(action instanceof LoginRequired)) {
            return invocation.invoke();
        }

        if (!(action instanceof ActionConnection)) {
            return "loginRedirect";
        }

        return invocation.invoke();
    }
}