using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Threading;
namespace WebFaceAttendence
{
    public partial class MakeAt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DayOfWeek today = DateTime.Today.DayOfWeek;
            int weekdayNumber = 5;
            if (today >= DayOfWeek.Monday && today <= DayOfWeek.Friday)
            {
                weekdayNumber = (int)today - (int)DayOfWeek.Monday + 1;
            }
            Literal1.Text = DateTime.Now.ToString("dddd") + "<br> Week day No. " + weekdayNumber;
            HiddenField1.Value=weekdayNumber.ToString ();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            TextReader reader = File.OpenText(Server.MapPath("~/Python/nm.txt"));
            string nm=reader.ReadToEnd();
            nm.TrimEnd();
            reader.Close();
            Literal2.Text = "Faculty Name :" + nm;
            Image1.ImageUrl = "~/Python/img.jpg";
            Image2.ImageUrl = "~/Python/accuracy_graph.png";
            TTable tt = new TTable();
            string[] value = tt.GetValues("TName", nm,3);
            ATable at = new ATable();
            at.updatetext("Id", HiddenField1.Value, DropDownList2.SelectedItem.Text, value[0]);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextWriter writer = File.CreateText(Server.MapPath("~/Python/tt.txt"));
            writer.WriteLine("Hello World");
            writer.Close();
            Thread.Sleep(5000);
            Timer1.Enabled = true;
        }
    }
}