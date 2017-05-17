using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1525585_CO5027_MuslimLifestyle
{
    public partial class viewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["ProdID"];
            int entryId = int.Parse(entryIdString);
            DatabaseEntities db = new DatabaseEntities();
            var entry = db.tblProducts.Single(p => p.ProdID == entryId);

            //build the filename
            string filename = entry.ProdID.ToString() + entry.ImgExt;
            //set the image control's attributes
            imageControl.AlternateText = entry.ImgAlt;
            //imageControl.Width = (Unit)entry.ImgWidth;
            //imageControl.Height = (Unit)entry.ImgHeight;
            imageControl.ImageUrl = ("UploadedImages/" + filename).Trim();
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            //ShoppingCart.Instance.AddItem(1);
            Response.Redirect("Cart.aspx");
        }
    }
}