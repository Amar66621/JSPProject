<h2><b>Technologies Used</b></h2>
<ul>
  <li>
JSP (JavaServer Pages): For handling the presentation layer and business logic within the same file.
  </li>
<li>
JDBC (Java Database Connectivity): For connecting to the MySQL database and performing CRUD operations.</li>
  <li>
Servlet (Embedded in JSP): Instead of using separate Servlet classes, all requests and responses are managed directly within JSP pages.</li>
  <li>
Apache Tomcat: Used as the server for deploying and running the project.
  </li>
</ul>

<h2>Project Structure</h2>
<p>The project consists of the following key pages:</p>
<ul>
<li>
  index.jsp: The main page, in which include  registration page nad connection file for connection.

</li>
<li>
  Connection.jsp: In this file there is connection with database and error handling.
</li>
  
</ul>

<h2>Database Structure</h2>
<ul>
<li>name (VARCHAR(10))</li>
<li>email (VARCHAR(20))</li>
<li>password (VARCHAR(20))</li>
<li>gender (VARCHAR(10))</li>

  
</ul>
