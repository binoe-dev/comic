/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Connection;
import static java.sql.DriverManager.getConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PC
 */
public class DatabaseConnect implements Serializable{
    
    private static Connection conn=null;
    
    public static Connection makeConnect(){
        try {
            
            Class.forName("org.gjt.mm.mysql.Driver");
            
            conn= getConnection("jdbc:mysql://localhost:3306/webqtl", "root", "");
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
    
    public static List<Categories> getCategory(){
        List<Categories> categories= new ArrayList<>();
        String sql="Select * from category";
        conn= makeConnect();
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs= ps.executeQuery();
            while(rs.next()){
                int idCategory= rs.getInt("ID_Category");
                String name= rs.getString("Name_Category");
                categories.add(new Categories(idCategory, name));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return categories;
    }
    
    public static Categories getCategories(int id_category){
        Categories category = null;
        String sql="Select * from category where ID_Category = ?";
        conn= makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_category);
            ResultSet rs = ps.executeQuery();
            rs.next();
            category= new Categories(rs.getInt("ID_Category"), rs.getString("Name_Category"));
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return category;
    }
    
    public static void addHistory(int id_member,int id_comic){
        String sql="Select * from history where id_comic = ? and id_member = ?";
        int id_history=0;
        conn = makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_comic);
            ps.setInt(2, id_member);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                updateHistory(id_comic, id_member);
            }
            else{
                insertHistory(id_history, id_comic, id_member);
                //sql="INSERT INTO `history` (`id_member`, `id_comic`,`day_views`,`id_history`) VALUES (?,?,?,?)";
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
    }
    
    public static void insertHistory(int id_history,int id_comic,int id_member){
        String sql="INSERT INTO `history` (`id_member`, `id_comic`,`day_views`,`id_history`) VALUES (?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_member);
            ps.setInt(2, id_comic);
            ps.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            ps.setInt(4, id_history+1);
            
            int s=ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static void updateHistory(int id_comic,int id_member){
        String sql="Update history set day_views = ? where id_comic = ? and id_member = ?";
        //conn= makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(3, id_member);
            ps.setInt(2, id_comic);
            ps.setTimestamp(1, Timestamp.valueOf(LocalDateTime.now()));
            
            ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static boolean checkPassword(Member member, String password){
        boolean check = false;
        String sql= "Select * from member where username = ? and password = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, member.getUsername());
            ps.setString(2, password);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                return true;
            }else{
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return check;
    }
    public static Member updatePassword(Member member,String newPass){
        Member updatedMember =new Member();
        String sql="Update member set password = ? where id_member=?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, newPass);
            ps.setInt(2, member.getIdMember());
            int i=ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        closeConnect();
        }
        updatedMember=getMember(member.getUsername(), member.getPassword());
        
        return updatedMember;
    }
    public static boolean removeHistory(int id_member,int id_comic){
        String sql="Delete from history where id_member = ? and id_comic = ?";
        conn= makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_member);
            ps.setInt(2, id_comic);
            int i=ps.executeUpdate();
            if(i>0){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
           closeConnect();
        }
        return false;
    }
    
    public static List<History> getAllHistory(Member member){
        List<History> histories = new ArrayList<>();
        String sql = "Select * from `history` Where id_member = ? ORDER BY day_views desc";
        conn = makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, member.idMember);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                histories.add(new History(rs.getInt("id_history"),rs.getInt("id_member"),rs.getInt("id_comic"),rs.getTimestamp("day_views")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            closeConnect();
        }
        return histories;
    }
    
    public static Member getAuthor(int id_member){
        Member member=null;
        String sql= "Select * from member where id_member = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_member);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                member=new Member(rs.getInt("id_member"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getDate("birthday"), rs.getString("phone"), rs.getBoolean("role"));
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return member;
    }
    
    public static Member getMember(String username,String password){
        Member member=null;
        String sql= "Select * from member where username = ? and password = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                member=new Member(rs.getInt("id_member"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getDate("birthday"), rs.getString("phone"), rs.getBoolean("role"));
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return member;
    }
    
    public static boolean checkRegister(String username,String email){
        boolean check = false;
        String sql= "Select * from member where username = ? or email = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                return false;
            }else{
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return check;
    }
    
   
    public static boolean checkUsername(String username){
        boolean check = false;
        String sql= "Select * from member where username = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs= ps.executeQuery();
            if(rs.next()){
                return false;
            }else{
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return check;
    }
    
    public static boolean insertMember(Member member){
        String sql="SELECT * FROM `member` ORDER BY id_member DESC";
        conn=makeConnect();
        int i=1;
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            rs.next();
            i=rs.getInt("id_member");
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        sql="Insert into member value(?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1, i+1);
            ps.setString(2, member.getUsername());
            ps.setString(3, member.getPassword());
            ps.setString(4, member.getEmail());
            ps.setDate(5, member.getBirthday());
            ps.setString(6, member.getPhone());
            ps.setBoolean(7, member.isRole());
            int c = ps.executeUpdate();
            if(c>0){
                return true;
            }else{
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return false;
    }
    
    public static Member updateMember(Member member){
        Member updatedMember =new Member();
        String sql="Update member set birthday = ?, phone = ?, role=? where id_member=?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setDate(1, member.getBirthday());
            ps.setString(2, member.getPhone());
            ps.setBoolean(3, member.isRole());
            ps.setInt(4, member.getIdMember());
            int i=ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        closeConnect();
        }
        updatedMember=getMember(member.getUsername(), member.getPassword());
        
        return updatedMember;
    }
    
    public static List<Image> getImage(){
        List<Image>  images= new ArrayList<>();
        String sql="Select * from images where id_chapter = ? ORDER BY id_image ";
        conn= makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, 1);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int id_image= rs.getInt("id_image");
                String link = rs.getString("image");
                int id_chapter=rs.getInt("id_chapter");
                images.add(new Image(id_image, link, id_chapter));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return images;
    }
    
    public static List<Follow> getFollows(Member member){
        List<Follow> follows = new ArrayList<>();
        String sql = "Select * from `follows` Where id_member = ? ORDER BY day_follow";
        conn = makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, member.idMember);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                follows.add(new Follow(rs.getInt("id_follow"),rs.getInt("id_comic"),rs.getTimestamp("day_follow")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            closeConnect();
        }
        return follows;
    }
    
    public static List<Comic> getAllFromNewComics(){
        List<Comic> comics = new ArrayList<>();
        String sql="Select * from `comics` order by date_update Desc";
        conn = makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                comics.add(new Comic(rs.getInt("id_comic"), rs.getString("name_comic"), rs.getTimestamp("date_update"), rs.getString("image"), rs.getString("description"),rs.getBoolean("static")));
            }
            
        }catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return comics;
    }
    
    public static Comic getComic(int id_comic){
        Comic comic=null;
        String sql = "Select * from comics Where id_comic = ?";
        List<Author> authors = new ArrayList<>();
        List<Integer> id_authors= new ArrayList<>();
        List<Categories> categories = new ArrayList<>();
        List<Integer> id_categories = new ArrayList<>();
        conn = makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_comic);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                comic=new Comic(rs.getInt("id_comic"), rs.getString("name_comic"), rs.getTimestamp("date_update"), rs.getString("image"), rs.getString("description"),rs.getBoolean("static"),rs.getInt("count"));
            }
            
        }catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
            sql="Select * from `authors-comics` where id_comic = ?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_comic);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                id_authors.add(rs.getInt("id_author"));
            }
        }catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        sql="Select * from authors where id_author = ?";
        try{
            for(int i:id_authors){
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, i);
                ResultSet rs = ps.executeQuery();
                rs.next();
                authors.add(new Author(rs.getInt("id_author"), rs.getInt("id_member"), rs.getString("description")));
            }
            comic.setAuthors(authors);
        }catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            sql="Select * from `categories-comics` where id_comic =?";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_comic);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                id_categories.add(rs.getInt("id_category"));
            }
        }catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
            sql="Select * from category where ID_Category = ?";
        try{
            for(int i:id_categories){
                PreparedStatement ps = conn.prepareStatement(sql);
                ps.setInt(1, i);
                ResultSet rs = ps.executeQuery();
                rs.next();
                categories.add(new Categories(rs.getInt("ID_Category"), rs.getString("Name_Category")));
            }
            comic.setCategories(categories);
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            closeConnect();
        }
        return comic;
    }
    
   public static void addViews(int id_comic, int count){
       String sql="Update comics set count = ? where id_comic=?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, count);
            ps.setInt(2, id_comic);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
        closeConnect();
        }
   }
   
   public static int getIdHistory(){
       String sql="SELECT * FROM `history` ORDER BY id_history DESC";
        conn=makeConnect();
        int i=0;
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                i=rs.getInt("id_history");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return i;
   }
   
    public static boolean addFollow(int id_comic,int id_member){
        String sql="SELECT * FROM `follows` ORDER BY id_follow DESC";
        conn=makeConnect();
        int i=0;
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                i=rs.getInt("id_follow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        sql="INSERT INTO `follows` (`id_member`, `id_comic`,`day_follow`,`id_follow`) VALUES (?,?,?,?)";
        conn= makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_member);
            ps.setInt(2, id_comic);
            ps.setTimestamp(3, Timestamp.valueOf(LocalDateTime.now()));
            ps.setInt(4, i+1);
            
            int s=ps.executeUpdate();
            if(s>0){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return false;
    }
    
    public static List<Image> getImages(int id_chapter,int id_comic){
        List<Image> images = new ArrayList<>();
        String sql= "Select * from images where id_chapter = ? and id_comic = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_chapter);
            ps.setInt(2, id_comic);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                images.add(new Image(rs.getInt("id_image"), rs.getString("image"), id_chapter, id_comic));
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return images;
    }
    
    public static Chapter getChapter(int id_comic,int id_chapter){
        Chapter chapter=null;
        List<Image> images = getImages(id_chapter,id_comic);
        String sql= "Select * from chapters where id_chapter = ? and id_comic = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_chapter);
            ps.setInt(2, id_comic);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                chapter = new Chapter(id_chapter, rs.getString("name_chapter"), id_comic, rs.getTimestamp("day_update"), images);
                //member=new Member(rs.getInt("id_member"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getDate("birthday"), rs.getString("phone"), rs.getBoolean("role"));
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return chapter;
    }
    
    public static List<Chapter> getAllChapter(int id_comic){
        List<Chapter> chapters = new ArrayList<>();
        String sql= "Select * from chapters where id_comic = ?";
        conn=makeConnect();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_comic);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                chapters.add(new Chapter(rs.getInt("id_chapter"), rs.getString("name_chapter"), id_comic, rs.getTimestamp("day_update")));
                //member=new Member(rs.getInt("id_member"), rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getDate("birthday"), rs.getString("phone"), rs.getBoolean("role"));
            }
                
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        closeConnect();
        return chapters;
    }
    
    public static int checkFollow(int id_member,int id_comic){
        String sql="Select * from follows where id_member = ? and id_comic = ?";
        conn= makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_member);
            ps.setInt(2, id_comic);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                return rs.getInt("id_follow");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
           closeConnect();
        }
        return 0;
    }
    
    public static List<Comic> getAllRankingComics(){
        List<Comic> comics = new ArrayList<>();
        String sql="Select * from `comics` order by count Desc";
        conn = makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                comics.add(new Comic(rs.getInt("id_comic"), rs.getString("name_comic"), rs.getTimestamp("date_update"), rs.getString("image"), rs.getString("description"),rs.getBoolean("static"),rs.getInt("count")));
            }
            
        }catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        return comics;
    }
    
    public static List<Comic> getAllCategoryComics(int id_category){
        String sql="Select * from `categories-comics` where id_category = ?";
        conn= makeConnect();
        List<Integer> id_comics= new ArrayList<>();
        List<Comic> comics= new ArrayList<>();
        try {
            PreparedStatement ps= conn.prepareStatement(sql);
            ps.setInt(1, id_category);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                id_comics.add(rs.getInt("id_comic"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            closeConnect();
        }
        for(int i:id_comics){
            comics.add(getComic(i));
        }
        return comics;
    }
    
    public static boolean removeFollow(int id_member,int id_comic){
        String sql="Delete from follows where id_member = ? and id_comic = ?";
        conn= makeConnect();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id_member);
            ps.setInt(2, id_comic);
            int i=ps.executeUpdate();
            if(i>0){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
           closeConnect();
        }
        return false;
    }
    
    public static void closeConnect(){
        try {
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DatabaseConnect.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
