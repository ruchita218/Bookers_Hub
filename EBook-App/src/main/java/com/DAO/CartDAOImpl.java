package com.DAO;

public class CartDAOImpl implements CartDAO{
private connection conn;

public CartDAOImpl(Connection conn)
{
this.conn=conn;
}

public boolean addCart (Cart c)
{
boolean f=false;
try {
String sql="insert into cart(cid, bid , uid ,bookName ,author ,price ,total_price) values(?,?,?,?,?,?)";
PreparedStatement ps=prepareStatement(sql);
ps.setInt(1, c.getbid);
ps.setInt(2, c.getUserid());
ps.setString(3, c.getBookName());
ps.setString(3, c.getAuthor());
ps.setDouble(5, c.getPrice());
ps.setDouble(6, c.getTotalPrice());

ps.executeUpdate();
if(i==1)
{
f=true;
}

}catch(Exception e){
e.printStackTrace();
}
return f;
}