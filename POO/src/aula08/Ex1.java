package aula08;

interface KmPercorridosInterface { 
    void trajeto(int quilometros); 
    int ultimoTrajeto(); 
    int distanciaTotal(); 
}

abstract class Veiculo{
    String matricula, marca, modelo;
    double potencia;
    public abstract void setMatricula(String matricula);
    public abstract void setMarca(String marca);
    public abstract void setModelo(String modelo);
    public abstract void setPotencia(double potencia);
    public abstract String getMatricula();
    public abstract String getMarca();
    public abstract String getModelo();
    public abstract double getPotencia();
}

class Motociclo extends Veiculo{
    String tipo;    //desportivo ou estrada

    public void setTipo(String tipo){
        this.tipo=tipo;
    }

    public String getTipo(){
        return this.tipo;
    }

    @Override
    public void setMatricula(String matricula) {
        this.matricula=matricula;
    }

    @Override
    public void setMarca(String marca) {
        this.marca=marca;        
    }

    @Override
    public void setModelo(String modelo) {
        this.modelo=modelo;    
    }

    @Override
    public void setPotencia(double potencia) {
        this.potencia=potencia;        
    }

    @Override
    public String getMatricula() {
        return this.matricula;
    }

    @Override
    public String getMarca() {
        return this.marca;
    }

    @Override
    public String getModelo() {
        return this.modelo;
    }

    @Override
    public double getPotencia() {
        return this.potencia;
    }

}

class Automovel extends Veiculo{

    @Override
    public void setMatricula(String matricula) {
        this.matricula=matricula;
    }

    @Override
    public void setMarca(String marca) {
        this.marca=marca;        
    }

    @Override
    public void setModelo(String modelo) {
        this.modelo=modelo;    
    }

    @Override
    public void setPotencia(double potencia) {
        this.potencia=potencia;        
    }

    @Override
    public String getMatricula() {
        return this.matricula;
    }

    @Override
    public String getMarca() {
        return this.marca;
    }

    @Override
    public String getModelo() {
        return this.modelo;
    }

    @Override
    public double getPotencia() {
        return this.potencia;
    }

}

class Taxi extends Automovel{
    int numLicensa;

}

class PesadoMerc extends Veiculo{

    @Override
    public void setMatricula(String matricula) {
        this.matricula=matricula;
    }

    @Override
    public void setMarca(String marca) {
        this.marca=marca;        
    }

    @Override
    public void setModelo(String modelo) {
        this.modelo=modelo;    
    }

    @Override
    public void setPotencia(double potencia) {
        this.potencia=potencia;        
    }

    @Override
    public String getMatricula() {
        return this.matricula;
    }

    @Override
    public String getMarca() {
        return this.marca;
    }

    @Override
    public String getModelo() {
        return this.modelo;
    }

    @Override
    public double getPotencia() {
        return this.potencia;
    }

}

class PesadoPass extends Veiculo{

    @Override
    public void setMatricula(String matricula) {
        this.matricula=matricula;
    }

    @Override
    public void setMarca(String marca) {
        this.marca=marca;        
    }

    @Override
    public void setModelo(String modelo) {
        this.modelo=modelo;    
    }

    @Override
    public void setPotencia(double potencia) {
        this.potencia=potencia;        
    }

    @Override
    public String getMatricula() {
        return this.matricula;
    }

    @Override
    public String getMarca() {
        return this.marca;
    }

    @Override
    public String getModelo() {
        return this.modelo;
    }

    @Override
    public double getPotencia() {
        return this.potencia;
    }

}

enum EmpresaAluguer{

}

public class Ex1 {
    public static void main(String[] args) {
        
    }
}
