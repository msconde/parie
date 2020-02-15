package struts;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.validator.annotations.RequiredStringValidator;
import facade.FacadeParis;
import facade.FacadeParisStaticImpl;
import facade.exceptions.InformationsSaisiesIncoherentesException;
import facade.exceptions.UtilisateurDejaConnecteException;
import modele.Utilisateur;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class ActionConnection extends ActionSupport implements SessionAware {
    private FacadeParis facadeParis;

    private Map<String,Object> session;

    private String username,password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.session = map;
    }

    public Map<String, Object> getSession() {
        return session;
    }

    private FacadeParis getModel()
    {
        FacadeParis model = (FacadeParis) session.get("model");
        if(model == null)
        {
            model = new FacadeParisStaticImpl();
            session.put("model", model);
        }
        return model;
    }

    public String connect()
    {
        FacadeParis model = getModel();
        if(username != null && password != null)
        {
            try {
                Utilisateur currentUser = model.connexion(username, password);
                session.put("user", currentUser);
                session.put("fp", model);
            } catch (UtilisateurDejaConnecteException | InformationsSaisiesIncoherentesException e) {
                return INPUT;
            }
            return SUCCESS;
        }
        return INPUT;
    }


}
