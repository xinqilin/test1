package hello;

public class HelloBean implements java.io.Serializable{
  private String name1 = "World1";
  private String name2 = "World2";

  public String getName1() {
    return name1;
  }
    public String getName2() {
    return name2;
  }
  
  public void setName1(String name1) {
  	System.out.println("name1"+name1);
    this.name1 = name1;
  }
    public void setName2(String name2) {
  	System.out.println("name2"+name2);
    this.name2 = name2;
  }
  
}