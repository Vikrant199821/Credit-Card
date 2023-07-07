<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Financial Frauds Wrong CVV</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #FF0000;
}
.style4 {color: #CC6600}
.style5 {color: #660000}
.style7 {color: #000000;
		 font-size: 14px}
.style8 {font-weight: bold}
.style9 {color:#FF3300;
		font-size: 14px}
.style10 {color:#2C83B0;
		font-size: 14px}
.style11 {font-size: 12px}
.style12 {font-size: 22px;
			color:#006666}
.style14 {color:#663366}
.style16 {color:#FF0000;
		font-size:18px;
		}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 align="center"><a href="index.html" class="style1">Credit card fraud detection using AdaBoost and majority voting</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp"><span>Bank Admin</span></a></li>
          <li><a href="EcommerceLogin.jsp"><span>Ecommerce</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="#"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="285" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="285" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article"> 
          <h2 class="style4" style="color:#CC6600">All Financial Frauds with Wrong Credit Card CVV..</h2>
          <div class="clr"></div>          
          <div class="post_content">
            <p>&nbsp;</p>
					
					<p>
                    
                  <%
				  
	String bank=(String)application.getAttribute("adbank");

    int num=1,count=0;
try 
{
	String str= "select distinct(user) from financial_fraud where fraud_type='"+"Wrong CVV"+"' and bank='"+bank+"'";
	Statement st = connection.createStatement();
	ResultSet rs= st.executeQuery(str);
	
	while(rs.next())
	{	
		String usr=rs.getString(1);
		
		%><p class="style14 style12"><span class="style5"><%=num%> . <%="  "+"Wrong Credit Card CVV User"%></span> <br />
                  <br /><%
		
		String str1= "select id,site from financial_fraud where user='"+usr+"' and fraud_type='"+"Wrong CVV"+"' ";
		Statement st1 = connection.createStatement();
		ResultSet rs1 = st1.executeQuery(str1);
		while(rs1.next())
		{	
			
			int i=rs1.getInt(1);
			String site=rs1.getString(2);
			
			
			
				count++;
			
			out.print("<input type=\"radio\" name=\"t_task\" ");
			
			%>
                  <p class="style16"><span class="style16"><a href="Admin_ViewWrongCvvFraudsDetails.jsp?id=<%=i%>&user=<%=usr%>&site=<%=site%>"><%=""+usr%> [<%=" "+site%>]</a></span></p><p><%
		}
		num++;
	    }    
	connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}

	if(count==0){out.print("No Fraud details Found");}

     %>
			  </table>
			</p>
        	
		<p align="left"><a href="AdminMain.jsp" class="style95">Back</a></p>
		  
		  
		  
		  
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
			<li><a href="AdminLogin.jsp">Logout</a></li>
            
          </ul>
        </div>
        
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>
