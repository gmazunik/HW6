<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>
<%@ Import Namespace="System.Web.Mail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<h2>CONTACT</h2>
		<div class="centerWrapper">

		<!--HTML & VB code behind for search page slightly modified from -->
		<!-- http://csharpdotnetfreak.blogspot.com/2012/06/create-contactus-form-in-aspnet.html -->

		<div class="shortExplanation">* required fields</div>
 
			<div class="contact">
				<table id="right"></table>
				<asp:Label ID="lblName" runat="server" 
					         Text="Your Name*:" /><br/>
        <asp:TextBox ID="txtName" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                    runat="server" 
                                    ControlToValidate="txtName" 
                                    ErrorMessage="Enter Your Name" 
                                    SetFocusOnError="True">*
        </asp:RequiredFieldValidator><br />
			</div>
        
      <div class="contact">
				<asp:Label ID="lblEmail" runat="server" 
                   Text="Email*:" /><br/>
        <asp:TextBox ID="txtMail" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                                    runat="server" 
                                    ControlToValidate="txtMail" 
                                    ErrorMessage="Please Provide Your Email Address" 
                                    SetFocusOnError="True">*
        </asp:RequiredFieldValidator><br />
			</div>
        
			<div class="contact">
				<asp:Label ID="lblSubject" runat="server" 
                   Text="Subject*:" /><br/>
        <asp:TextBox ID="txtSubject" runat="server"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                                    runat="server" 
                                    ControlToValidate="txtSubject" 
                                    ErrorMessage="Please provide reason to contact us" 
                                    SetFocusOnError="True">*
        </asp:RequiredFieldValidator><br />
			</div>
        
			<div class="contact">
				<asp:Label ID="lblMessage" runat="server" 
                   Text="Feedback:" /><br/>
        <asp:TextBox ID="txtMessage" runat="server" 
                     TextMode="MultiLine" Width="268px"/>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                                    runat="server" 
                                    ControlToValidate="txtMessage" 
                                    ErrorMessage="Write your feedback" 
                                    SetFocusOnError="True">*
        </asp:RequiredFieldValidator><br />
      </div>
        
      <div class="contact">
        <asp:Button ID="btnSubmit" runat="server" 
                    Text="Submit" onclick="btnSubmit_Click"/>
      </div>
				<asp:ValidationSummary ID="ValidationSummary1" 
                               runat="server" CssClass="error"/>
        <asp:Label ID="Label1" runat="server" Text=""/>
			</div>
</asp:Content>

