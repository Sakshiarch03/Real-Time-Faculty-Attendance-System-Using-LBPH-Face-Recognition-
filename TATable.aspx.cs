using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFaceAttendence
{
    public partial class TATable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Literal1.Text = "<h1>Room No. : - C1</h1>";
            DayOfWeek today = DateTime.Today.DayOfWeek;
            int weekdayNumber = 5;
            if (today >= DayOfWeek.Monday && today <= DayOfWeek.Friday)
            {
                weekdayNumber = (int)today - (int)DayOfWeek.Monday + 1;
            }
            ATable at = new ATable();
            TTable tt = new TTable();
            DataTable dt = at.GetTable("ATable");
            string[] days = { "Monday", "Tuesday", "Wednusday", "Thursday", "Friday" };
            int x = 0;
            for (int a = 0; a < days.Length; a++)
            {
                TableRow row = new TableRow();
                TableCell[] cell = new TableCell[8];
                x = 0;
                for (int i = 0; i < cell.Length; i++)
                {
                    cell[i] = new TableCell();
                    if (i == 0)
                    {
                        cell[0].Text = days[a];
                        //x--;
                    }
                    else if (i == 4)
                    {
                        cell[4].Text = "--Break--";
                        x--;
                    }
                    else
                    {
                        if (a < weekdayNumber)
                        {
                            DataRow dr = dt.Rows[a];

                            int id = int.Parse(dr[x].ToString());
                            //Literal1.Text += dr[x].ToString() + " ";
                            if (id == 0)
                            {
                                cell[i].Text = "0";
                            }
                            else
                            {
                                string[] data = tt.GetValues("Id", id.ToString(), 3);
                                cell[i].Text = "<b>" + data[1] + "</b><br>Biometric code: " + data[0] + "<br>Subject : " + data[2];
                            }

                        }
                        else
                        {
                            cell[i].Text = "0";
                        }
                    }

                    row.Cells.Add(cell[i]);
                    x++;
                }
                //Literal1.Text += "<br>";
                Table1.Rows.Add(row);
            }
        }
    }
}