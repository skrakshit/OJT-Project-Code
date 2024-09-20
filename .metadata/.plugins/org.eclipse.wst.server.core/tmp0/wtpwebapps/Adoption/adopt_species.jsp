<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="userheader.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adopt a Species</title>

<style>
/* Container Styling for Full Width */
.adopt-container-fullwidth {
    width: 90%; /* Use 90% of the viewport width */
    margin: 0 auto;
    padding: 20px;
    background-color: #f8f9fa;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Heading Styling for Full Width */
.adopt-heading-fullwidth {
    text-align: center;
    color: #2c3e50;
    font-size: 28px;
    margin-bottom: 20px;
}

/* Form Styling for Full Width */
.adopt-form-fullwidth {
    display: flex;
    flex-direction: column;
}

/* Form Group Styling for Full Width */
.form-group-fullwidth {
    margin-bottom: 15px;
    display: flex;
    flex-direction: column;
}

/* Label Styling for Full Width */
.adopt-label-fullwidth {
    font-size: 16px;
    margin-bottom: 5px;
    color: #34495e;
}

/* Input and Textarea Styling for Full Width */
.adopt-input-fullwidth,
.adopt-textarea-fullwidth {
    width: 100%; /* Make input fields full width */
    padding: 15px; /* Slightly larger padding for a modern feel */
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    transition: border-color 0.3s ease-in-out;
}

.adopt-input-fullwidth:focus,
.adopt-textarea-fullwidth:focus {
    border-color: #3498db;
    outline: none;
}

/* Button Styling for Full Width */
.adopt-button-fullwidth {
    padding: 15px;
    background-color: #3498db;
    color: white;
    font-size: 18px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease-in-out;
    width: 100%; /* Full-width button */
}

.adopt-button-fullwidth:hover {
    background-color: #2980b9;
}

</style>
</head>
<body>


<div class="adopt-container-fullwidth">
    <h2 class="adopt-heading-fullwidth"><b>Adopt a Species</b></h2>
    <form action="AdoptSpeciesServlet" method="post" class="adopt-form-fullwidth">
        <div class="form-group-fullwidth">
            <label for="species" class="adopt-label-fullwidth">Species:</label>
            <input type="text" id="species" name="species" class="adopt-input-fullwidth" required>
        </div>

        <div class="form-group-fullwidth">
            <label for="fullName" class="adopt-label-fullwidth">Full Name:</label>
            <input type="text" id="fullName" name="fullName" class="adopt-input-fullwidth" required>
        </div>

        <div class="form-group-fullwidth">
            <label for="email" class="adopt-label-fullwidth">Email:</label>
            <input type="email" id="email" name="email" class="adopt-input-fullwidth" required>
        </div>

        <div class="form-group-fullwidth">
            <label for="message" class="adopt-label-fullwidth">Message:</label>
            <textarea id="message" name="message" rows="4" class="adopt-textarea-fullwidth"></textarea>
        </div>

        <button type="submit" class="adopt-button-fullwidth">Adopt Now</button>
    </form>
</div>



  
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

<jsp:include page="userfooter.jsp" />
</body>
</html>
