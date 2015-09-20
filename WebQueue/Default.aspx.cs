using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QueueLibrary;

namespace QueueWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                     GetQueue();

        }

        protected void enqueue_Click(object sender, EventArgs e)
        {
            try {
                ((MyQueue<string>)Application["queue"]).Enqueue(Request.Form["data"]);
                GetQueue();
                eqerror.Visible = false;
                dqerror.Visible = false;
            }

            catch(Exception ex)
            {
                eqerror.Text = ex.Message;
                eqerror.Visible = Visible;
            }
        }

        private void GetQueue()
        {
            try
            {
                MyQueue<string> queue = (MyQueue<string>)Application["queue"];

                show.Controls.Clear();
               
                
                if(queue.Count==0)
                {
                    emptyqueue.Visible = true;
                    return;
                }
                emptyqueue.Visible = false;

                for (int i = 0; i < queue.Count; i++)
                {
                    
                    Label l = new Label();
                    l.Text = queue.Show(i);
                    l.Visible = Visible;
                    l.CssClass = "label label-success q";
                    show.Controls.Add(l);
                    
                    
                }
                dqerror.Visible = false;
                eqerror.Visible = false;


            }
            catch (Exception ex)
            {
                emptyqueue.Visible = true;
            }
        }

        protected void dequeue_Click(object sender, EventArgs e)
        {
            try {
                ((MyQueue<string>)Application["queue"]).Dequeue();
                GetQueue();
                dqerror.Visible = false;
            }
            catch
            {
                
                dqerror.Text = "Queue is empty. Unable to dequeue.";
                dqerror.Visible = Visible;
            }
        }


    }
}