package com.hotel.pojo;

public class Meal {
    private int Id;
    private String Name;
    private long Price;
    private String M_Type;
    private String Text;

    public Meal() {
    }

    public Meal(int id, String name, long price, String m_Type, String text) {
        Id = id;
        Name = name;
        Price = price;
        M_Type = m_Type;
        Text = text;
    }

    public int getId() {return Id;}

    public void setId(int id) {Id = id;}

    public String getName() {return Name;}

    public void setName(String name) {Name = name;}

    public long getPrice() {return Price;}

    public void setPrice(long price) {Price = price;}

    public String getM_Type() {return M_Type;}

    public void setM_Type(String m_Type) {M_Type = m_Type;}

    public String getText() {return Text;}

    public void setText(String text) {Text = text;}
}
