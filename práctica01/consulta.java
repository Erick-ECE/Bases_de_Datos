import java.util.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import com.csvreader.CsvReader;

class consulta {
	        try {
         
        CsvReader mi_csv = new CsvReader("./P1.csv"); 
        mi_csv.readHeaders(); // Leemos las Cabeceras, las cuales nos dan informacion de cada campo
         
        while (mi_csv.readRecord())
        {
            String nombre = mi_csv.get(0);
            String tel = mi_csv.get(1);
            String direccion = mi_csv.get(2);
            String correo = mi_csv.get(3);
            String m2 = mi_csv.get(4);
            String val_prop = mi_csv.get(5);
            String val_venta = mi_csv.get(6);
            
        }
         
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }


}