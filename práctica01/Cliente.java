class Cliente {

	String nombre;
     String tel;
     String direccion;
     String correo;
     String m2 ;
     String val_prop;
     String val_venta;

     public Cliente(String nombre,String tel, String direccion,
     	              String correo, String m2, String val_prop, String val_venta){
     	this.nombre = nombre;
     	this.tel=tel;
     	this.direccion=direccion;
     	this.correo=correo;
     	this.m2=m2;
     	this.val_prop= val_prop;
     	this.val_venta= val_venta;
     }

     public String getNombre(){
     	return nombre;
     }
	
	public String getTel(){
     	return tel;
     }

     public String getDireccion(){
     	return direccion;
     }     

     public String getCorreo(){
     	return correo;
     }

     public String getM2(){
     	return m2;
     }

     public String getValprop(){
     	return val_prop;
     }

     public String getValventa(){
     	return val_venta;
     }

     public String toString() {
        return String.format("Nombre: ", nombre + "\n") + 
               String.format("Télefono: "+ tel+ "\n") +
               String.format("Dirección: "+ direccion + "\n") +
               String.format("Correo: "+ correo + "\n") +
               String.format("Dirección: "+ direccion + "\n") +
               String.format("Metros cuadrados: "+ m2 + "\n") +
               String.format("Valor de propiedad: "+ val_prop + "\n") +
               String.format("Valor de venta: "+ val_venta + "\n/*************************************/") ;
      
    }


}