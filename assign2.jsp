<!DOCTYPE html>
<html>
<head>
<style>

body {
    font-family: Arial, Helvetica, sans-serif;
    margin: 0;
}

/* Style the header */
.header {
    padding: 80px;
    text-align: center;
    background: #1abc9c;
    color: white;
}

/* Increase the font size of the h1 element */
.header h1 {
    font-size: 40px;
}

/* Style the top navigation bar */
.navbar {
    overflow: hidden;
    background-color: #333;
}

/* Style the navigation bar links */
.navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
    float: right;
}

/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: black;
}
</style>
</head>
<body>

<div class="header">
    <h1> ASSIGNED COURSES</h1>
 
</div>

<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

@media screen and (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
</head>
<body>




<div class="container">
  <form action="assign.jsp">
    <div class="row">
      <div class="col-25">
        <label for="sname">student  Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="sname" name="sname" >
      </div>
    </div>
<div class="row">
      <div class="col-25">
        <label for="batch">batch</label>
      </div>
      <div class="col-75">
        <select id="batch" name="batch">
          <option value="2016">2016</option>
          <option value="2017">2017</option>
          <option value="2018">2018</option>
        </select>
      </div>
    </div>
<div class="row">
      <div class="col-25">
        <label for="stream">stream</label>
      </div>
      <div class="col-75">
        <select id="stream" name="stream">
          <option value="ece">ece</option>
          <option value="cse">cse</option>
          <option value="ce">ce</option>

        </select>
      </div>
    </div>

     <div class="row">
      <div class="col-25">
        <label for="cname">couse name</label>
      </div>
      <div class="col-75">
        <select id="cname" name="cname">
          <option value="java">java</option>
          <option value="python">python</option>
          <option value="c++">c++</option>
<option value="c">c</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="ccode">couse code</label>
      </div>
      <div class="col-75">
        <select id="ccode" name="ccode">
          <option value="csl4321">csl4321</option>
          <option value="csl5101">csl5101</option>
          <option value="csl6789">csp6789</option>
<option value="c">c</option>
        </select>
      </div>
    </div>
   <div class="row">
      <div class="col-25">
        <label for="batch">study period</label>
      </div>
      <div class="col-75">
        <select id="speriod" name="speriod">
          <option value="2016">1 sem</option>
          <option value="2017">2 sem</option>
          <option value="2018">3 sem</option>
          <option value="2016">4 sem</option>
          <option value="2017">5 sem</option>
          <option value="2018">6 sem</option>
        </select>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>

</body>
</html>
