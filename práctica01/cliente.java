class cliente {

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
     	this.nombre;
     }

     public Void setNombre(String nombre){
     	this.nombre=nombre;
     }
	
	public String getTel(){
     	this.tel;
     }

     public Void setTel(String tel){
     	this.tel=tel;
     }

     public String getDireccion(){
     	this.direccion;
     }     

     public Void setDireccion(String direccion){
     	this.direccion=direccion;
     }     


     public String getCorreo(){
     	this.correo;
     }

     public Void setCorreo(String correo){
     	this.correo=correo;
     }

     public String getM2(){
     	this.m2;
     }

     public Void setM2(String m2){
     	this.m2=m2;
     }

     public String getValprop(){
     	this.val_prop;
     }

     public Void getValprop(String val_prop){
     	this.val_prop= val_prop;
     }

     public String getValventa(){
     	this.val_venta;
     }

     public Void getValventa(String val_venta){
     	this.val_venta= val_venta;
     }
}