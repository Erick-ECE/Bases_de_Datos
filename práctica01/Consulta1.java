import java.util.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import com.csvreader.CsvReader;
//import Cliente;

class Consulta1 {
	
	public static void main(String[] args) {
		
		List<Cliente> clientlist = new ArrayList<Cliente>();
		try{
			CsvReader datos = new CsvReader("./P1.csv"); 
        datos.readHeaders(); // Leemos las Cabeceras, las cuales nos dan informacion de cada campo

        while (datos.readRecord()){
        	
        	Cliente c = new Cliente(datos.get(0),datos.get(1),datos.get(2),datos.get(3),
        		datos.get(4),datos.get(5),datos.get(6));
        	clientlist.add(c);    

        }

    }catch (FileNotFoundException e) {
    	e.printStackTrace();
    } catch (IOException e) {
    	e.printStackTrace();
    }


    int cont=0;
    int inmueble = 0;
    Set<String> norep= new HashSet<>();
    Set<String> rep = new HashSet<>();
    List<Double> propiedades = new ArrayList<>();
    List<Double> ganancia = new ArrayList<>();

    for (Cliente c1 : clientlist ) {  	
    	if (Integer.parseInt(c1.getM2())<= 200) {
    		if (Double.parseDouble(c1.getValprop())>=500 && Double.parseDouble(c1.getValprop())<=50000) {
    			cont++;
    		}
    	}
    	if(!norep.add(c1.getNombre()))
    		rep.add(c1.getNombre());
    	propiedades.add(Double.parseDouble(c1.getValprop()));
    	ganancia.add(Double.parseDouble(c1.getValventa())-Double.parseDouble(c1.getValprop()));    
    }
    Collections.sort(propiedades);
    Collections.sort(ganancia);
    System.out.println("hay un total de " + cont + " terrenos con 200m² y entre $ 500 y 50000");
    System.out.println("clientes con mas de 1 inmueble:" + rep.toString());
    System.out.println("Las 10 propiedades mas baratas son:");
    for(int i = 0; i < propiedades.size(); i++){
    	if(i<11){
    		System.out.println(propiedades.get(i));
    	}
    }
    System.out.println("Las 5 propiedades mas caras son:");
    for(int i = 0; i < propiedades.size(); i++){
    	if(i>=propiedades.size()-5){

    		System.out.println(propiedades.get(i));
    	}
    }
    System.out.println("Las 5 propiedades con mayor margen de gancias \n");
    for(int i = 0; i < ganancia.size(); i++){
    	if(i>=ganancia.size()-5){
          
    		System.out.println(ganancia.get(i));
    	}
    }

}
}
