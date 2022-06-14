package exercicio_aula;

public class Person {
    private String name;
    private int cc;
    private Date bd;

    public Person(String name, int cc, DateYMD bd){
        if (valid(cc)){
        this.name = name;
        this.cc = cc;
        this.bd = bd;
        }
    }
    public boolean valid(int cc){
        if (String.valueOf(cc).length()==8){
            return true;
        } else{
            return false;
        }
    }
    public void setName(String name){
        this.name = name;
    }
    public void setCC(int cc){
        this.cc = cc;
    }
    public void setBD(Date bd){
        this.bd = bd;
    }
    public String getName(){
        return this.name;
    }
    public int getCC(){
        return this.cc;
    }
    public Date getBD(){
        return this.bd;
    }

    @Override
    public String toString(){
        return String.format("Nome: %s\nCC: %d\nData Nascimento: %s\n", this.name, this.cc, this.bd);
    }
}
