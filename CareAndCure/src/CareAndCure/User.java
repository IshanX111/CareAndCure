package CareandCure;
class User {
    public int ID;
    public String W_N_Name;
    public int Age;
    public String Address;
       
    public User(int ID,String W_N_Name,int Age,String Address)
    {   
        
        this.ID = ID;
        this.W_N_Name = W_N_Name;
        this.Age= Age;
        this.Address=Address;
        
        
    }
    
    public int getID()
    {
        return ID;
    }
    
    public String getW_N_Name()
    {
        return W_N_Name;
    }
    
    
    public int getAge()
    {
        return Age;
    }
    
    public String getAddress()
    {
        return Address;
    }
    
    
    
    
}
