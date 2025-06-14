using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.MSSQLServer;
using System.Configuration;
namespace WebFaceAttendence
{
    public class DBConnection
    {
        public static string Connection
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["FaceAttendenceConnectionString"].ToString();
            }
        }
    }
    public class ATable:SQLDBTable
    {
        public ATable():base ("ATable",DBConnection.Connection)
        {
            
        }
    }
    public class TTable : SQLDBTable
    {
        public TTable() : base("TeacherTable", DBConnection.Connection)
        {

        }
    }
}