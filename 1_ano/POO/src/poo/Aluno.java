package poo;

public class Aluno extends Pessoa{
    private Date dataInsc;
    private int nmec;
    public Aluno(String name, int cc, Date bd, Date dataInsc, int nmec){
        super(name, cc, bd);
        this.dataInsc = dataInsc;
        this.nmec = nmec;
    }
    public void setNMec(int nmec){
        this.nmec = nmec;
    }
    public void setDataInsc(Date dataInsc){
        this.dataInsc = dataInsc;
    }
    public int getNMec(){
        return this.nmec;
    }
    public Date getDataIsnc(){
        return this.dataInsc;
    }

    @Override
    public String toString(){
        return String.format(super.toString() + "Data de Inscrição:%s\nNº Mecanográfico: %d\n", this.dataInsc, this.nmec);
    }
}