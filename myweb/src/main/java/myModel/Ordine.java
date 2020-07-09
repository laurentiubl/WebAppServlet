package myModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class Ordine {
	
	static java.util.Map memory = new java.util.HashMap();
	   int progressivo=-1;
	   String descrizione=null;
	private static Statement stm;

	   public Ordine(int int1, String string) {
		this.progressivo = int1;
		this.descrizione = string;
	}

	public int getProgressivo()
	   {
	      return progressivo;
	   }

	   public void setProgressivo(int progressivo)
	   {
	      this.progressivo=progressivo;
	   }
	  
	   public String getDescrizione()
	   {
	      return descrizione;
	   }

	   public void setDescrizione(String descrizione)
	   {
	      this.descrizione=descrizione;
	   }
	   
	   public boolean insert()
	   {
		   try {
			   Connection con = ConnectionDB.getConnection();
			   String query = "insert into Ordine values (?,?)";
			   PreparedStatement psm = con.prepareStatement(query);
			   psm.setInt(1, this.progressivo);
			   psm.setString(2, this.descrizione);
			   int i = psm.executeUpdate();
				if(i>0) {
					System.out.println("add successfully");
					return true;
				}
		   }catch(Exception ex) {
			   System.out.println("Exception sql");
		   }
		   
		   return false;

	   }
	   
	   
//	   public void update()
//	   {
//	     //... prossima lezione per accesso DB
//	     memory.put(new Integer(progressivo),this);
//	   }
	   
	   
	   
	   static public Ordine load(int id)
	   {
		   
	     //... prossima lezione per accesso DB
	     return (Ordine) memory.get(new Integer(id));
	   }
	   
	   
	   public static ArrayList<Ordine> loadd() {
		   try {
			   Connection con = ConnectionDB.getConnection();
			   stm = null;
			   stm = con.createStatement();
			   String query = "select * from Ordine";
			   ResultSet rst;
			   rst = stm.executeQuery(query);
			   ArrayList<Ordine> list = new ArrayList<>();
			   while(rst.next()) {
				   Ordine ordine = new Ordine(rst.getInt("progressivo"), rst.getString("descrizione"));
				   list.add(ordine);
			   }
			   // mio test...
			   for(Ordine oo : list) {
				   System.out.println(oo.getDescrizione());
			   }
			   return list;
			   
		   }catch(Exception ex){
			   System.out.println("Exceptie..load");
		   }
		return null;
	   }
	   
}
