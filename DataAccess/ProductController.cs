using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entity;
using System.Data;
using System.Data.SqlClient;
namespace DataAccess
{
    public class ProductController :SqlDataProvider
    {
        public static DataTable GetAll()
        {
            string str = "select * from tbProduct";
            return GetData(str);
        }
        public static DataTable GetBy_Id(tbProductInfo tbProductInfo)
        {
            string str = "select * from [tbProduct] where [Id]=" + tbProductInfo.Id;
            return GetData(str);
        }


        public static DataTable GetByColumn(string Col, string Pal)
        {
            int Param = int.Parse(Pal);


            string str = "Select * from tbProduct where " + Col + "= " + "'" + Param + "'";
            return GetData(str);

        }

        // dbCmd.Parameters.Add(new SqlParameter("@CusName", data.CusName));
        public static void Insert(tbProductInfo tbProduct)
        {
            string q = "insert into [tbProduct]([Tag],[Name],[Content],[Detail],[Priority],";
            q=q+"[Index],[Price],[Image],[Date],[CatId],[CatTag],[Title],[Description],";
            q=q+"[Keyword],[Active],[Ord],[Lang],[BrandId],[PiceOld],[Image1],[Image2],";
            q = q + "[Image3],[Image4],[Image5],[Codepro],[Count],[DateBegin],[DateEnd]) values(";
            q = q + "@Tag,@Name,@Content,@Detail,@Priority,@Index,@Price,@Image,@Date,@CatId,";
            q = q + "@CatTag,@Title,@Description,@Keyword,@Active,@Ord,@Lang,@BrandId,@PiceOld,";
            q=q+"@Image1,@Image2,@Image3,@Image4,@Image5,@Codepro,@Count,@DateBegin,@DateEnd)";
           // new SqlParameter("@Id", tbProduct.Id),
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Tag", tbProduct.Tag));
             cmd.Parameters.Add(new SqlParameter("@Name", tbProduct.Name));
             cmd.Parameters.Add(new SqlParameter("@Content", tbProduct.Content));
             cmd.Parameters.Add(new SqlParameter("@Detail", tbProduct.Detail));
             cmd.Parameters.Add(new SqlParameter("@Priority", tbProduct.Priority));
             cmd.Parameters.Add(new SqlParameter("@Index", tbProduct.Index));
             cmd.Parameters.Add(new SqlParameter("@Price", tbProduct.Price));
             cmd.Parameters.Add(new SqlParameter("@Image", tbProduct.Image));
             cmd.Parameters.Add(new SqlParameter("@Date", tbProduct.Date));
             cmd.Parameters.Add(new SqlParameter("@CatId", tbProduct.CatId));
             cmd.Parameters.Add(new SqlParameter("@CatTag", tbProduct.CatTag));
             cmd.Parameters.Add(new SqlParameter("@Title", tbProduct.Title));
             cmd.Parameters.Add(new SqlParameter("@Description", tbProduct.Description));
             cmd.Parameters.Add(new SqlParameter("@Keyword", tbProduct.Keyword));
             cmd.Parameters.Add(new SqlParameter("@Active", tbProduct.Active));
             cmd.Parameters.Add(new SqlParameter("@Ord", tbProduct.Ord));
             cmd.Parameters.Add(new SqlParameter("@Lang", tbProduct.Lang));
             cmd.Parameters.Add(new SqlParameter("@BrandId", tbProduct.BrandId));
             cmd.Parameters.Add(new SqlParameter("@PiceOld", tbProduct.PiceOld));
             cmd.Parameters.Add(new SqlParameter("@Image1", tbProduct.Image1));
            cmd.Parameters.Add(new SqlParameter("@Image2", tbProduct.Image2));
            cmd.Parameters.Add(new SqlParameter("@Image3", tbProduct.Image3));
            cmd.Parameters.Add(new SqlParameter("@Image4", tbProduct.Image4));
            cmd.Parameters.Add(new SqlParameter("@Image5", tbProduct.Image5));
            cmd.Parameters.Add(new SqlParameter("@Codepro", tbProduct.Codepro));
            cmd.Parameters.Add(new SqlParameter("@Count", tbProduct.Count));
            cmd.Parameters.Add(new SqlParameter("@DateBegin", tbProduct.DateBegin));
            cmd.Parameters.Add(new SqlParameter("@DateEnd", tbProduct.DateEnd));
        
            ExecuteNonQuery(cmd);

        }
        public static void Update(tbProductInfo tbProduct)
        {

            string q = "update [tbProduct] set [Tag] = @Tag,[Name] = @Name,[Content] = @Content,";
	q=q+"[Detail] = @Detail,[Priority] = @Priority,[Index] = @Index,[Price] = @Price,";
            q=q+"[Image] = @Image,[Date] = @Date,[CatId] = @CatId,[CatTag] = @CatTag,[Title] = @Title,";
            q=q+"[Description] = @Description,[Keyword] = @Keyword,[Active] = @Active,[Ord] = @Ord,";
            q=q+"[Lang] = @Lang,[BrandId] = @BrandId,[PiceOld] = @PiceOld,[Image1] = @Image1,";
            q=q+"[Image2] = @Image2,[Image3] = @Image3,[Image4] = @Image4,[Image5] = @Image5,";
            q=q+"[Codepro] = @Codepro,[Count] = @Count,[DateBegin] = @DateBegin,";
            q=q+"[DateEnd] = @DateEnd where [Id] = @Id";
            
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = q;
            cmd.Connection = GetConnection();
            cmd.Parameters.Add(new SqlParameter("@Tag", tbProduct.Tag));
            cmd.Parameters.Add(new SqlParameter("@Name", tbProduct.Name));
            cmd.Parameters.Add(new SqlParameter("@Content", tbProduct.Content));
            cmd.Parameters.Add(new SqlParameter("@Detail", tbProduct.Detail));
            cmd.Parameters.Add(new SqlParameter("@Priority", tbProduct.Priority));
            cmd.Parameters.Add(new SqlParameter("@Index", tbProduct.Index));
            cmd.Parameters.Add(new SqlParameter("@Price", tbProduct.Price));
            cmd.Parameters.Add(new SqlParameter("@Image", tbProduct.Image));
            cmd.Parameters.Add(new SqlParameter("@Date", tbProduct.Date));
            cmd.Parameters.Add(new SqlParameter("@CatId", tbProduct.CatId));
            cmd.Parameters.Add(new SqlParameter("@CatTag", tbProduct.CatTag));
            cmd.Parameters.Add(new SqlParameter("@Title", tbProduct.Title));
            cmd.Parameters.Add(new SqlParameter("@Description", tbProduct.Description));
            cmd.Parameters.Add(new SqlParameter("@Keyword", tbProduct.Keyword));
            cmd.Parameters.Add(new SqlParameter("@Active", tbProduct.Active));
            cmd.Parameters.Add(new SqlParameter("@Ord", tbProduct.Ord));
            cmd.Parameters.Add(new SqlParameter("@Lang", tbProduct.Lang));
            cmd.Parameters.Add(new SqlParameter("@BrandId", tbProduct.BrandId));
            cmd.Parameters.Add(new SqlParameter("@PiceOld", tbProduct.PiceOld));
            cmd.Parameters.Add(new SqlParameter("@Image1", tbProduct.Image1));
            cmd.Parameters.Add(new SqlParameter("@Image2", tbProduct.Image2));
            cmd.Parameters.Add(new SqlParameter("@Image3", tbProduct.Image3));
            cmd.Parameters.Add(new SqlParameter("@Image4", tbProduct.Image4));
            cmd.Parameters.Add(new SqlParameter("@Image5", tbProduct.Image5));
            cmd.Parameters.Add(new SqlParameter("@Codepro", tbProduct.Codepro));
            cmd.Parameters.Add(new SqlParameter("@Count", tbProduct.Count));
            cmd.Parameters.Add(new SqlParameter("@DateBegin", tbProduct.DateBegin));
            cmd.Parameters.Add(new SqlParameter("@DateEnd", tbProduct.DateEnd));
            cmd.Parameters.Add(new SqlParameter("@Id", tbProduct.Id));
            ExecuteNonQuery(cmd);

        }

        public static void Delete(tbProductInfo tb)
        {
            string q = "Delete from tbProduct where Id=" + tb.Id;
            ExecuteNonQuery(q);
        }
    }
}
