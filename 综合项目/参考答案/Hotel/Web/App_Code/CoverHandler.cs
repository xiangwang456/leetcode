using System;
using System.Web;
using System.IO;
using System.Drawing;


public class CoverHandler:IHttpHandler
{

    //数字水印路径
    private const string WATERMARK_URL = "~/img/WaterMark.png";
    //默认图片路径
    private string DEFAULTIMAGE_URL = "~/img/noperson.jpg";

    public void ProcessRequest(HttpContext context)
    {
        Image Cover;
        //判断请求的物理路径中，是否存在文件
        if (File.Exists(context.Request.PhysicalPath))
        {
            //加载文件
            Cover = Image.FromFile(context.Request.PhysicalPath);
            //加载水印图片
            Image watermark = Image.FromFile(context.Request.MapPath(WATERMARK_URL));
            //实例化画布
            Graphics g = Graphics.FromImage(Cover);

            //在image 上绘制水印
            g.DrawImage(watermark, new Rectangle(Cover.Width - watermark.Width, Cover.Height - watermark.Height,
              watermark.Width, watermark.Height), 0, 0, watermark.Width, watermark.Height, GraphicsUnit.Pixel);
           
            //释放画布
            g.Dispose();
            //释放水印图片
            watermark.Dispose();

        }
        else
        {
            //加载默认图片
            Cover = Image.FromFile(context.Request.MapPath(DEFAULTIMAGE_URL));
        }
        context.Response.ContentType = "image/jpeg";
        Cover.Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);
        Cover.Dispose();
        context.Response.End();
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
    public CoverHandler()
    {
 
    }

}
