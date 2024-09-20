<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="userheader.jsp" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank You!</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: url("img/Thanks.png") no-repeat center center fixed;
        background-size: cover; /* Cover the entire viewport while maintaining aspect ratio */
        margin: 0;
        padding: 0;
        overflow: hidden;
        position: relative;
        height: 100vh; /* Full viewport height */
    }

    .balloon {
        position: absolute;
        width: 60px;
        height: 80px;
        border-radius: 50% 50% 40% 40%;
        background-color: #ff6f61;
        animation: balloonBurst 3s ease-out forwards;
        opacity: 0;
    }
    .balloon:nth-child(1) {
        background-color: #ff6f61;
        width: 50px;
        height: 70px;
        left: 10%;
        animation-delay: 0s;
    }
    .balloon:nth-child(2) {
        background-color: #f7c6c7;
        width: 70px;
        height: 90px;
        left: 30%;
        animation-delay: 0.5s;
    }
    .balloon:nth-child(3) {
        background-color: #6a1b9a;
        width: 60px;
        height: 80px;
        left: 50%;
        animation-delay: 1s;
    }
    .balloon:nth-child(4) {
        background-color: #43a047;
        width: 80px;
        height: 100px;
        left: 70%;
        animation-delay: 1.5s;
    }
    .balloon:nth-child(5) {
        background-color: #039be5;
        width: 90px;
        height: 110px;
        left: 90%;
        animation-delay: 2s;
    }
    @keyframes balloonBurst {
        0% {
            transform: scale(0);
            top: 0;
            opacity: 1;
        }
        50% {
            transform: scale(1.2);
            top: -50%;
            opacity: 1;
        }
        100% {
            transform: scale(1);
            top: 100vh;
            opacity: 0;
        }
    }
    .confetti {
        position: absolute;
        width: 10px;
        height: 10px;
        background-color: #ffeb3b;
        border-radius: 50%;
        animation: confettiFall 4s linear infinite;
    }
    .confetti:nth-child(6) {
        background-color: #ffeb3b;
        left: 10%;
        animation-delay: 0s;
    }
    .confetti:nth-child(7) {
        background-color: #e91e63;
        left: 25%;
        animation-delay: 1s;
    }
    .confetti:nth-child(8) {
        background-color: #00bcd4;
        left: 40%;
        animation-delay: 2s;
    }
    .confetti:nth-child(9) {
        background-color: #4caf50;
        left: 55%;
        animation-delay: 3s;
    }
    .confetti:nth-child(10) {
        background-color: #ff5722;
        left: 70%;
        animation-delay: 4s;
    }
    @keyframes confettiFall {
        0% {
            transform: translateY(-100%);
            opacity: 1;
        }
        100% {
            transform: translateY(100vh);
            opacity: 0;
        }
    }
    
    
   
.message {
  position: absolute;
  bottom: 0;
  width: 100%;
  text-align: center;
  
  
  background-color: #f0f0f0; /* Optional background color */
  box-shadow: 0px -2px 5px rgba(0,0,0,0.1); /* Optional shadow for visual effect */
 
}

.message h2, 
.message p {
  margin: 0;
  margin:25px;
  font-size: 18px; /* Adjust as needed */
  color:green;
}

 table {
            width: 50%;
            margin: 50px auto;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
      

</style>
</head>
<body>


    <div class="message">
       <h2>Thank you for your incredible dedication and support in protecting wildlife. Your efforts make a real difference, and we’re grateful to have you as part of our team!</h2>

    <table>
        <tr>
            <th>Name</th>
            <td>${name}</td>
        </tr>
        <tr>
            <th>Address</th>
            <td>${address}</td>
        </tr>
        <tr>
            <th>Phone Number</th>
            <td>${phoneNumber}</td>
        </tr>
        <tr>
            <th>Your Email ID</th>
            <td>${email}</td>
        </tr>
    </table>

    <p>We will get in touch with you soon!</p>
    </div>
    
    <!-- Balloons -->
    <div class="balloon"></div>
    <div class="balloon"></div>
    <div class="balloon"></div>
    <div class="balloon"></div>
    <div class="balloon"></div>
    
    <!-- Confetti -->
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
    <div class="confetti"></div>
      <!-- Template Javascript -->
  <script src="js1/main.js"></script>
  <script>
  window.watsonAssistantChatOptions = {
    integrationID: "40f6535b-f4fd-4da5-9334-91599b86c0b0", // The ID of this integration.
    region: "au-syd", // The region your integration is hosted in.
    serviceInstanceID: "eab37542-ac5e-4718-8d4f-787f12a29357", // The ID of your service instance.
    onLoad: async (instance) => { await instance.render(); }
  };
  setTimeout(function(){
    const t=document.createElement('script');
    t.src="https://web-chat.global.assistant.watson.appdomain.cloud/versions/" + (window.watsonAssistantChatOptions.clientVersion || 'latest') + "/WatsonAssistantChatEntry.js";
    document.head.appendChild(t);
  });
</script>

</body>
</html>

