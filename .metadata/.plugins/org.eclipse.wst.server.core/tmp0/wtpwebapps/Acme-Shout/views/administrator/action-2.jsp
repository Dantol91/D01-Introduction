<%--
 * action-2.jsp
 *
 * Copyright (C) 2018 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<p><spring:message code="administrator.action.2" /></p>


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <title>Action-2 Chart</title>
</head>
<body>
  <div class="container">
    <canvas id="myChart" width="400" height="400"></canvas>
  </div>

  <script>
   var ctx = document.getElementById("myChart");
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['<spring:message code="administrator.count.all.shouts" />', 
             '<spring:message code="administrator.count.short.shouts" />', 
             '<spring:message code="administrator.count.long.shouts" />'],
    datasets: [{
      label: '<spring:message code="administrator.report" />',
      data: [4, 3, 1],
      backgroundColor: [
	    'rgba(140, 70, 210, 1)',
	    'rgba(140, 70, 210, 1)',
	    'rgba(140, 70, 210, 1)'],
      borderColor: [
        'rgba(140, 70, 210, 1)',
        'rgba(140, 70, 210, 1)',
        'rgba(140, 70, 210, 1)'
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: false,
    scales: {
      xAxes: [{
        ticks: {
          maxRotation: 0,
          minRotation: 0
        }
      }],
      yAxes: [{
        ticks: {
          beginAtZero: true,
          fixedStepSize: 1,
          max: 5
        }
      }]
    }
  }
});
    
  </script>
</body>
