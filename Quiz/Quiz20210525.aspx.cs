using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Quiz
{
    public partial class Quiz20210525 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void gv_data_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "calc")
            {
                int total = 0;
                int i_row = Convert.ToInt32(e.CommandArgument);
                for (int i = 2; i < 5; i++)
                {
                    total += Convert.ToInt32(gv_data.Rows[i_row].Cells[i].Text);
                }
                lb_Show.Text = gv_data.Rows[i_row].Cells[1].Text + "的總分：" + total.ToString();
            }
        }
    }
}