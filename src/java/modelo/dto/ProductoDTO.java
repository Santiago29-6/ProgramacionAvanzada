package modelo.dto;

import java.io.Serializable;

/**
 *
 * @author Santiago
 */
public class ProductoDTO implements Serializable{
    private int id_prod;
    private String nombre_prod;
    private String descripcion;
    private int und;
    private long valor;

    public ProductoDTO() {
    }
    
    public ProductoDTO(int id_prod, String nombre_prod, String descripcion, int und, long valor) {
        this.id_prod = id_prod;
        this.nombre_prod = nombre_prod;
        this.descripcion = descripcion;
        this.und = und;
        this.valor = valor;
    }

    public ProductoDTO(String nombre_prod, String descripcion, int und, long valor) {
        this.nombre_prod = nombre_prod;
        this.descripcion = descripcion;
        this.und = und;
        this.valor = valor;
    }

    public int getId_prod() {
        return id_prod;
    }

    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    public String getNombre_prod() {
        return nombre_prod;
    }

    public void setNombre_prod(String nombre_prod) {
        this.nombre_prod = nombre_prod;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getUnd() {
        return und;
    }

    public void setUnd(int und) {
        this.und = und;
    }

    public long getValor() {
        return valor;
    }

    public void setValor(long valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return nombre_prod;
    }
    
}
