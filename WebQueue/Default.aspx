<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QueueWebApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Queue Implementation</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
  
    
    <link href="css/s.css" rel="stylesheet" />
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="js/angular.min.js"></script>
    <script src="js/components.js"></script>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">
    <div data-ng-app="components">

        <div class="jumbotron">
    <h1>Queue Implementation</h1> 
    <p>Use this application to maintain a queue.</p> 
  </div>

          <div class="container">              
        <tabs>
        <pane title="Enqueue">
            
            

            <div class="header">
                <h2>Enter an element to add to the Queue.</h2>
            </div>
            
            <asp:TextBox ID="data" CssClass="input-lg" runat="server" placeholder="Enter something..."></asp:TextBox>

            <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="data" errormessage="Please enter something. A number or a string!" ValidationGroup="vg1" />
    

            <br /><br />
            <asp:Button CssClass="btn  btn-success  btn-lg" ID="enqueue" runat="server" Text="Enqueue" OnClick="enqueue_Click" ValidationGroup="vg1"/>
             <asp:Label CssClass="label-danger" Visible="false" runat="server" ID="eqerror"></asp:Label>

        </pane>
        <pane title="Dequeue">
            
            <div class="header">
                <h2>Remove an element from the Queue.</h2>
            </div>

            <asp:Button CssClass="btn btn-primary  btn-lg" ID="dequeue" runat="server" Text="Dequeue" OnClick="dequeue_Click"/>
            <asp:Label CssClass="label label-danger" Visible="false" runat="server" ID="dqerror"></asp:Label>
            <br /><br />

            

        </pane>
            <pane title="Show Queue">
            <div class="header">
                <h2>Your Queue.</h2>

               <asp:Label runat="server" text="Front -> "></asp:Label>
                <asp:PlaceHolder ID="show" runat="server" ></asp:PlaceHolder>
                <asp:Label ID="emptyqueue" CssClass="label label-danger eq" runat="server" Visible="false" Text="Queue is empty!"></asp:Label>
                <asp:Label runat="server" text=" <- Rear"></asp:Label>
                       
            </div>
        </pane>
    </tabs>
              </div>

  

    </div>
    </form>
        </div>

</body>
</html>
