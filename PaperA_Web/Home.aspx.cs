using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PaperA_Web.PaperA_Service;

namespace PaperA_Web
{
    public partial class index : System.Web.UI.Page
    {
        //creating an instance of the service client
        PaperAServiceClient sc = new PaperAServiceClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int lcount = 1, dcount = 1, bcount = 1;

                //retrieving items from the database
                dynamic items = sc.GetMenuItems();

                if (items != null)
                {
                    breakfast_1.InnerHtml = "";
                    breakfast_2.InnerHtml = "";
                    lunch_1.InnerHtml = "";
                    lunch_2.InnerHtml = "";
                    dinner_1.InnerHtml = "";
                    dinner_2.InnerHtml = "";

                    foreach (PaperA_Service.MenuItem item in items)
                    {
                        if (item.Category.Equals("Breakfast"))
                        {
                            if (bcount % 2 != 0)
                            {
                                breakfast_1.InnerHtml += populate(item);
                            }
                            else
                            {
                                breakfast_2.InnerHtml += populate(item);
                            }
                            bcount++;
                        }
                        else if (item.Category.Equals("Lunch"))
                        {
                            if (lcount % 2 != 0)
                            {
                                lunch_1.InnerHtml += populate(item);
                            }
                            else
                            {
                                lunch_2.InnerHtml += populate(item);
                            }
                            lcount++;
                        }
                        else if (item.Category.Equals("Dinner"))
                        {
                            if (dcount % 2 != 0)
                            {
                                dinner_1.InnerHtml += populate(item);
                            }
                            else
                            {
                                dinner_2.InnerHtml += populate(item);
                            }
                            dcount++;
                        }
                    }
                }
            }
        }
    
        private string populate(PaperA_Service.MenuItem item)
        {
            string display_item = "";

            display_item += "<a href='AboutMeal.aspx?Id=" + item.Id + "'>";
            display_item += "<div class='media menu-item'>";
            display_item += "<img class='mr-3' src='" + item.Image + "' class='img-fluid' alt='Free Template by colorlib.com'>";
            display_item += "<div class='media-body'>";
            display_item += "<h5 class='mt-0'>" + item.Name + "</h5>";
            display_item += "<p>" + item.Description + "</p>";
            display_item += "<h6 class='text-primary menu-price'>R" + item.Price.ToString("F2") + "</h6>";
            display_item += "</div></div></a>";

            return display_item;
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            if(m_fname.Value=="" || m_lname.Value == "" || m_email.Value == "" || m_people.Value == ""
                || m_phone.Value == "" || m_date.Value == "" && m_time.Value == "")
            {
                feedback.InnerHtml = "";               
            }
            else if (m_email.Value != "")
            {
                Reservation reservation = sc.GetReservation(m_email.Value);

                if (reservation != null)
                {
                    m_fname.Value = reservation.Name;
                    m_lname.Value = reservation.LName;
                    m_email.Value = reservation.Email;
                    m_people.Value = (reservation.Persons).ToString();
                    m_phone.Value = reservation.Phone;
                    m_date.Value = reservation.Date.ToString();
                    m_time.Value = reservation.Time;
                    m_message.Value = reservation.Note;
                }
                else
                {
                    feedback.InnerHtml = "<p> Failed To Find Booking! </P>";
                    //reservation not found!
                }

            }
            else
            {
                Reservation reservation = new Reservation
                {
                    Name = m_fname.Value,
                    LName = m_lname.Value,
                    Email = m_email.Value,
                    Persons = int.Parse(m_people.Value),
                    Phone = m_phone.Value,
                    Date = DateTime.Parse(m_date.Value),
                    Time = m_time.Value,
                    Note = m_message.Value
                };

                string response = sc.Book_Reservation(reservation);

                if(response.Equals("exists!"))
                {
                    //
                } else if (response.Equals("booked!"))
                {
                    //
                }
                else if (response.Equals("failed!"))
                {
                    //
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (m_email.Value != "")
            {
                Reservation reservation = new Reservation
                {
                    Name = m_fname.Value,
                    LName = m_lname.Value,
                    Email = m_email.Value,
                    Persons = int.Parse(m_people.Value),
                    Phone = m_phone.Value,
                    Date = DateTime.Parse(m_date.Value),
                    Time = m_time.Value,
                    Note = m_message.Value
                };

                string update = sc.Update_Reservation(reservation);

                if (update.Equals("updated!"))
                {
                    //
                }
                else if (update.Equals("failed!"))
                {
                    //
                }
                else if (update.Equals("UNF!"))
                {
                    //
                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (m_email.Value != "")
            {
                Reservation reservation = sc.GetReservation(m_email.Value);

                if (reservation != null)
                {
                    m_fname.Value = reservation.Name;
                    m_lname.Value = reservation.LName;
                    m_email.Value = reservation.Email;
                    m_people.Value = (reservation.Persons).ToString();
                    m_phone.Value = reservation.Phone;
                    m_date.Value = reservation.Date.ToString();
                    m_time.Value = reservation.Time;
                    m_message.Value = reservation.Note;
                }
                else
                {
                    feedback.InnerHtml = "<p> Failed To Find Booking! </P>";
                    //reservation not found!
                }

            }
        }
    }
}