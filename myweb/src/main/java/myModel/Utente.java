package myModel;

public class Utente {
	 public Utente() {
	    }

	    public Utente(String account)
	    {
	        setNome(account);
	    }
	    /**
	     * Holds value of property nome.
	     */
	    private String nome;

	    /**
	     * Getter for property nome.
	     * @return Value of property nome.
	     */
	    public String getNome() {
	        return this.nome;
	    }

	    /**
	     * Setter for property nome.
	     * @param nome New value of property nome.
	     */
	    public void setNome(String nome) {
	        this.nome = nome;
	    }
	   
	    public boolean checkPassword(String password)
	    {
	        if ("pass".equals(password))
	            return true;
	        else
	            return false;
	    } 
}
