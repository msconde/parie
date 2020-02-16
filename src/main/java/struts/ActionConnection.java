package struts;

import com.opensymphony.xwork2.ActionSupport;
import facade.FacadeParis;
import facade.FacadeParisStaticImpl;
import facade.exceptions.InformationsSaisiesIncoherentesException;
import facade.exceptions.UtilisateurDejaConnecteException;
import modele.Utilisateur;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class ActionConnection extends ActionSupport implements SessionAware, ApplicationAware {
    private Map<String,Object> session;
    private Map<String, Object> application;

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

    @Override
    public void setApplication(Map<String, Object> map) {
        this.application = map;
    }

    private FacadeParis getModel()
    {
        FacadeParis model = (FacadeParis) application.get("model");
        if(model == null)
        {
            model = new FacadeParisStaticImpl();
            application.put("model", model);
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
                application.putIfAbsent("fp", model);
            } catch (UtilisateurDejaConnecteException | InformationsSaisiesIncoherentesException e) {
                return INPUT;
            }
            return SUCCESS;
        }
        return INPUT;
    }


}
