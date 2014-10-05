using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing.Drawing2D;
using System.Drawing;


public class ValidateCode
{
    private Bitmap validateImage;
    private Graphics g;
    public ValidateCode()
    {
        validateImage = new System.Drawing.Bitmap(50, 24, System.Drawing.Imaging.PixelFormat.Format24bppRgb);
        g = System.Drawing.Graphics.FromImage(validateImage);
    }
    public void DrawValidate(Page e, string s)
    {
        g.FillRectangle(new LinearGradientBrush(new Point(0, 0), new Point(50, 25), Color.FromArgb(225, 225, 225), Color.FromArgb(225, 225, 225)), new Rectangle(0, 0, 50, 24));
        g.DrawString(s,new Font("宋体",14,FontStyle.Bold),new SolidBrush(Color.Black),new PointF(2,4));
        g.Save();

        System.IO.MemoryStream ms = new System.IO.MemoryStream();
        validateImage.Save(ms, System.Drawing.Imaging.ImageFormat.Gif);
        e.Response.ClearContent();
        e.Response.ContentType = "image/gif";
        e.Response.BinaryWrite(ms.ToArray());
        e.Response.End();
    }
    public string MakeValidate()
    {
        Char[] str = new char[] { '1', '2', '3', '4', '5', '6', '7', '8', '9', '0',};
        string num = "";
        Random rom=new Random();
        for (int i = 0; i <4; i++)
        {
            int id = rom.Next(0,str.Length);
            num+=str[id].ToString();
        }
        System.Web.HttpContext.Current.Session["code"] = num.Trim();
        return num.Trim();
           
    }
    public void RenderPictrue(Page page)
    {
        string s=MakeValidate();
        DrawValidate(page, s);
    }
}
