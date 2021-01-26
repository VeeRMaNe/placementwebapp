<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
  <head>
    <title>Student Feedback Form</title>
    
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      font-weight: 400;
      }
      h4 {
      margin: 15px 0 4px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 3px;
      }
      form {
      width: 100%;
      padding: 20px;
      background: #fff;
      box-shadow: 0 2px 5px #ccc; 
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      border: 1px solid #ccc;
      border-radius: 3px;
      vertical-align: middle;
      }
     
      input:hover, textarea:hover {
      outline: none;
      border: 1px solid #095484;
      }
      th, td {
      width: 15%;
      padding: 15px 0;
      border-bottom: 1px solid #ccc;
      text-align: center;
      vertical-align: unset;
      line-height: 18px;
      font-weight: 400;
      word-break: break-all;
      }
      .first-col {
      width: 16%;
      text-align: left;
      }
      table {
      width: 100%;
      }
      textarea {
      width: calc(100% - 6px);
      }
      .btn-block {
      margin-top: 20px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      -webkit-border-radius: 5px; 
      -moz-border-radius: 5px; 
      border-radius: 5px; 
      background-color: #095484;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background-color: #0666a3;
      }
      @media (min-width: 568px) {
      th, td {
      word-break: keep-all;
      }
      }
    </style>
  </head>
  <body>
  <%
  	String prn=request.getParameter("prn");
  	HttpSession hs =request.getSession();
  	hs.setAttribute("prn",prn);
  	
  			
  
  %>
    <div class="testbox">
      <form action="submitfeedback.jsp" method="post">
        <h1>Student Feedback Form</h1>
        
        <hr />
        <h3>Give Feedback To Student Based On His Performance   </h3>
        <table>
          <tr>
            <th class="first-col"></th>
            <th>Very Good</th>
            <th>Good</th>
            <th>Fair</th>
            <th>Poor</th>
            <th>Very Poor</th>
          </tr>
          <tr>
            <td class="first-col">Technical skills</td>
            <td><input type="radio" value="5" name="technical" /></td>
            <td><input type="radio" value="4" name="technical" /></td>
            <td><input type="radio" value="3" name="technical" /></td>
            <td><input type="radio" value="2" name="technical" /></td>
            <td><input type="radio" value="1" name="technical" /></td>
          </tr>
          <tr>
            <td class="first-col">Communication skills</td>
            <td><input type="radio" value="5" name="communication" /></td>
            <td><input type="radio" value="4" name="communication" /></td>
            <td><input type="radio" value="3" name="communication" /></td>
            <td><input type="radio" value="2" name="communication" /></td>
            <td><input type="radio" value="1" name="communication" /></td>
          </tr>
          <tr>
            <td class="first-col">Candidate Enthusiasm</td>
            <td><input type="radio" value="5" name="enthusiasm" /></td>
            <td><input type="radio" value="4" name="enthusiasm" /></td>
            <td><input type="radio" value="3" name="enthusiasm" /></td>
            <td><input type="radio" value="2" name="enthusiasm" /></td>
            <td><input type="radio" value="1" name="enthusiasm" /></td>
          </tr>
          <tr>
            <td class="first-col">Knowledge of company</td>
            <td><input type="radio" value="5" name="companyknowledge" /></td>
            <td><input type="radio" value="4" name="companyknowledge" /></td>
            <td><input type="radio" value="3" name="companyknowledge" /></td>
            <td><input type="radio" value="2" name="companyknowledge" /></td>
            <td><input type="radio" value="1" name="companyknowledge" /></td>
          </tr>
          <tr>
            <td class="first-col">Project and work experience</td>
            <td><input type="radio" value="5" name="expirience" /></td>
            <td><input type="radio" value="4" name="expirience" /></td>
            <td><input type="radio" value="3" name="expirience" /></td>
            <td><input type="radio" value="2" name="expirience" /></td>
            <td><input type="radio" value="1" name="expirience" /></td>
          </tr>
          <tr>
            <td class="first-col">Problem solving skills</td>
            <td><input type="radio" value="5" name="solvingskills" /></td>
            <td><input type="radio" value="4" name="solvingskills" /></td>
            <td><input type="radio" value="3" name="solvingskills" /></td>
            <td><input type="radio" value="2" name="solvingskills" /></td>
            <td><input type="radio" value="1" name="solvingskills" /></td>
          </tr>
          <tr>
            <td class="first-col">Planning ,Organizing and decision making skills</td>
            <td><input type="radio" value="5" name="podskills" /></td>
            <td><input type="radio" value="4" name="podskills" /></td>
            <td><input type="radio" value="3" name="podskills" /></td>
            <td><input type="radio" value="2" name="podskills" /></td>
            <td><input type="radio" value="1" name="podskills" /></td>
          </tr>
        </table>
        <h4>Overall impressions and comments</h4>
        <textarea rows="6" name="comments"></textarea>
        
        <div class="btn-block">
          <button type="submit" >Send Feedback</button>
        </div>
      </form>
    </div>
  </body>
</html>