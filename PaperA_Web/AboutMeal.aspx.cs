using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PaperA_Web.PaperA_Service;

namespace PaperA_Web
{
    public partial class AboutMeal : System.Web.UI.Page
    {
        //
        PaperAServiceClient sc = new PaperAServiceClient();
        string id = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                    {
                    id = Request.QueryString["Id"];
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
                {
                    id = Request.QueryString["Id"];
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }

            if (id != null)
            {
                var item = sc.GetMenuItem(int.Parse(id));

                //display the menu item if located
                if (item != null)
                {
                    string about_item = "";
                    about_item += "<div class='col-md-5 site-animate mb-5'>";
                    about_item += "<h4 class='site-sub-title'>About Meal</h4>";
                    about_item += "<h2 class='site-primary-title display-4'>"+ item.Name +"</h2>";
                    about_item += "<p> "+item.Description+" </p>";
                    about_item += "<h6 class='text-primary menu-price'>R"+item.Price.ToString("F2")+"</h6><br />";
                    about_item += "<p><a href='Home.aspx#section-reserve' class='btn btn-secondary btn-lg'> Book Reservation! </a></p></div>";
                    about_item += "<div class='col-md-1'></div>";
                    about_item += "<div class='col-md-6 site-animate img' data-animate-effect='fadeInRight'>";
                    about_item += "<img src='"+item.Image+"' alt='Free Template by colorlib.com' class='img-fluid'></div>";

                    about_meal.InnerHtml = about_item;
                }
            }
        }
    }
}