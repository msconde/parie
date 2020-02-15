package struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import facade.FacadeParis;
import facade.FacadeParisStaticImpl;
import facade.exceptions.OperationNonAuthoriseeException;
import modele.Pari;
import modele.Utilisateur;

import java.util.Collection;
import java.util.Map;

public class ActionParis extends ActionSupport {
    private Collection<Pari> mesParis;
    private Collection<Pari> parisOuverts;
    Map<String, Object> session = ActionContext.getContext().getSession();
    private int id;
    private Pari pariAnnule;
    private FacadeParis fp = (FacadeParis) session.get("fp");
    private Utilisateur user = (Utilisateur) session.get("user");

    public Collection<Pari> getMesParis() {
        return mesParis;
    }

    public void setMesParis(Collection<Pari> mesParis) {
        this.mesParis = mesParis;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Pari getPariAnnule() {
        return pariAnnule;
    }

    public void setPariAnnule(Pari pariAnnule) {
        this.pariAnnule = pariAnnule;
    }

    public Collection<Pari> getParisOuverts() {
        return parisOuverts;
    }

    public void setParisOuverts(Collection<Pari> parisOuverts) {
        this.parisOuverts = parisOuverts;
    }

    public String parisOuverts()
    {
        parisOuverts = fp.getAllParis();
        return SUCCESS;
    }

    public String mesParis()
    {
        mesParis = fp.getMesParis(user.getLogin());
        return SUCCESS;
    }

    public String supprimerParis()
    {
        if(id != 0)
        {
            try {
                pariAnnule = fp.getPari((id));
                fp.annulerPari(user.getLogin(), id);
            } catch (OperationNonAuthoriseeException e) {
                return INPUT;
            }
            return SUCCESS;
        }
        return INPUT;
    }

}
