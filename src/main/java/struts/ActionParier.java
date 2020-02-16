package struts;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import facade.FacadeParis;
import facade.exceptions.MatchClosException;
import facade.exceptions.ResultatImpossibleException;
import modele.Pari;
import modele.Utilisateur;

import java.util.Map;

public class ActionParier extends ActionSupport {
    private int id;
    private int mise;
    private String verdict;
    private Pari pariSelectionner;
    private Pari pariRealise;
    Map<String, Object> session = ActionContext.getContext().getSession();
    Map<String, Object> application;
    private FacadeParis fp;
    private Utilisateur user = (Utilisateur) session.get("user");

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMise() {
        return mise;
    }

    public void setMise(int mise) {
        this.mise = mise;
    }

    public String getVerdict() {
        return verdict;
    }

    public void setVerdict(String verdict) {
        this.verdict = verdict;
    }

    public Pari getPariSelectionner() {
        return pariSelectionner;
    }

    public void setPariSelectionner(Pari pariSelectionner) {
        this.pariSelectionner = pariSelectionner;
    }

    public Pari getPariRealise() {
        return pariRealise;
    }

    public void setPariRealise(Pari pariRealise) {
        this.pariRealise = pariRealise;
    }

    public String parier()
    {
        if(application.get("Pari") != null)
        {
            Pari pari = (Pari)application.get("Pari");

            if(verdict != null && mise > 0)
            {
                try {
                    fp.parier(user.getLogin(), pari.getIdPari(), verdict, mise);
                    pariRealise = (Pari) fp.getMesParis(user.getLogin()).toArray()[fp.getMesParis(user.getLogin()).size()-1];
                    application.remove("Pari");
                    return SUCCESS;
                } catch (MatchClosException | ResultatImpossibleException e) {
                    return INPUT;
                }
            }
        }
        return INPUT;
    }

    @Override
    public void validate()
    {
        application = ActionContext.getContext().getApplication();
        fp = (FacadeParis) application.get("fp");
        if(id != 0) {
            pariSelectionner = fp.getPari(id);
            application.put("Pari", pariSelectionner);
        }
    }


}
