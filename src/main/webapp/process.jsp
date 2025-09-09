<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title>Form Result</title></head>
<body>
  
  <h3>Star Pattern for n = <%= request.getParameter("n") %></h3>
  
  <pre>
  <% 
    String nStr = request.getParameter("n");
    if(nStr != null) {
      try {
        int n = Integer.parseInt(nStr);
        out.println();
        for(int i = 1; i <= n; i++) {
          for(int j = 1; j <= i; j++) {
            out.print("*");
          }
          out.println();
        }
      } catch(NumberFormatException e) {
        out.println("Invalid number format for n.");
      }
    } else {
      out.println("Parameter n not provided.");
    }
  %>
  </pre>
  
</body>
</html>
