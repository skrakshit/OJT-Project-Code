<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="userheader.jsp" /> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wildlife:Report</title>
   
    <style>
        h1 {
            text-align: center;
            color: #2c3e50;
        }

      #reportForm {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    max-width: 1200px;
    margin: 0 auto;
    padding: 1rem;
}

.form-container {
    display: flex;
    flex-wrap: wrap;
    gap: 1rem;
    width: 100%;
}

.form-section {
    flex: 1;
    min-width: 300px;
    box-sizing: border-box;
}

.form-section h2 {
    border-bottom: 2px solid #007bff;
    padding-bottom: 0.5rem;
    margin-bottom: 1rem;
}

label {
    display: block;
    margin-bottom: 0.5rem;
}

input[type="text"], input[type="email"], input[type="tel"], input[type="datetime-local"], select, textarea {
    width: 100%;
    padding: 0.5rem;
    margin-bottom: 1rem;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="file"] {
    padding: 0.5rem 0;
}


#a1 {

    display: inline-block; /* Adjusts to fit content */
    min-width: 50px; /* Minimum width for consistency */
    height:50px; /* Auto height to fit content */
    transition: background-color 0.3s ease, transform 0.2s ease; 
    margin-top:100px;/* Smooth transition for hover effects */
}



        .social-buttons {
            text-align: center;
            margin-top: 20px;
        }

        .social-buttons  {
            width: auto;
            margin: 5px;
            font-size: 20px;
            color: #ffffff;
            padding: 10px 15px;
            border-radius: 50%;
            border: none;
            cursor: pointer;
        }

        .social-buttons button i {
            margin-right: 0;
        }

        .social-buttons .email { background-color: #ea4335; }
        .social-buttons .facebook { background-color: #3b5998; }
        .social-buttons .twitter { background-color: #1da1f2; }
        .social-buttons .linkedin { background-color: #0077b5; }
        .social-buttons .whatsapp { background-color: #25d366; } 
    </style>
</head>
<body>

   <form id="reportForm">
    <div class="form-container">
        <div class="form-section">
            <h2 class="text-primary">Reporter Information</h2>
            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required>

            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>

            <label for="contactNumber">Contact Number:</label>
            <input type="tel" id="contactNumber" name="contactNumber" required>
        </div>

        <div class="form-section">
            <h2 class="text-primary">Incident Details</h2>
            <label for="incidentType">Type of Wildlife Incident:</label>
            <select id="incidentType" name="incidentType" required>
                <option value="">Select Incident Type</option>
                <option value="sighting">Sighting</option>
                <option value="poaching">Poaching</option>
                <option value="injury">Injury</option>
                <option value="habitatDestruction">Habitat Destruction</option>
                <option value="illegalTrade">Illegal Trade</option>
                <option value="other">Other</option>
            </select>

            <label for="species">Species Identified:</label>
            <input type="text" id="species" name="species" required>

            <label for="location">Location of Incident:</label>
            <input type="text" id="location" name="location" required placeholder="Address or Coordinates">

            <label for="dateTime">Date and Time of Incident:</label>
            <input type="datetime-local" id="dateTime" name="dateTime" required>

            <label for="description">Description of Incident:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <label for="severity">Severity Level:</label>
            <select id="severity" name="severity" required>
                <option value="">Select Severity Level</option>
                <option value="low">Low</option>
                <option value="medium">Medium</option>
                <option value="high">High</option>
            </select>
        </div>
    </div>

    <div class="form-section">
        <h2 class="text-primary">Media Uploads</h2>
        <label for="photos">Upload Photos:</label>
        <input type="file" id="photos" name="photos" accept="image/*" multiple>

        <label for="videos">Upload Videos:</label>
        <input type="file" id="videos" name="videos" accept="video/*" multiple>
    </div>

    <div class="form-section">
        <h2 class="text-primary">Witnesses</h2>
        <label for="witnesses">Witness Names (Optional):</label>
        <input type="text" id="witnesses" name="witnesses" placeholder="Separate names with commas">

        <label for="witnessContact">Witness Contact Information (Optional):</label>
        <input type="text" id="witnessContact" name="witnessContact" placeholder="Separate contacts with commas">
    </div>

    <div class="form-section">
        <h2 class="text-primary">Action Required</h2>
        <label for="actionRequired">Action Required:</label>
        <select id="actionRequired" name="actionRequired" required>
            <option value="">Select Action Required</option>
            <option value="immediateIntervention">Immediate Intervention</option>
            <option value="monitoring">Monitoring</option>
            <option value="awarenessCampaign">Awareness Campaign</option>
            <option value="legalAction">Legal Action</option>
            <option value="other">Other</option>
        </select>
    </div>

    <div class="form-section">
        <h2 class="text-primary">Additional Notes</h2>
        <label for="additionalNotes">Additional Notes:</label>
        <textarea id="additionalNotes" name="additionalNotes" rows="4"></textarea>
    </div>

    <button type="button" onclick="generatePDF()" id="a1">Generate Report</button>
</form>

    <div class="social-buttons">
        <button class="email" onclick="shareViaEmail()" title="Share via Email"><i class="fas fa-envelope"></i></button>
        <button class="facebook" onclick="shareOnSocialMedia('facebook')" title="Share on Facebook"><i class="fab fa-facebook-f"></i></button>
        <button class="twitter" onclick="shareOnSocialMedia('twitter')" title="Share on Twitter"><i class="fab fa-twitter"></i></button>
        <button class="linkedin" onclick="shareOnSocialMedia('linkedin')" title="Share on LinkedIn"><i class="fab fa-linkedin-in"></i></button>
        <button class="whatsapp" onclick="shareOnWhatsApp()" title="Share on WhatsApp"><i class="fab fa-whatsapp"></i></button>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <script src="js1/script.js"></script>
    
  	<jsp:include page="userfooter.jsp" />
  <script>
function shareViaEmail() {
    window.location.href = 'mailto:?subject=Wildlife Conservation Report&body=Check out this report!';
}

function shareOnSocialMedia(platform) {
    let url = encodeURIComponent('http://example.com/wildlife-report');
    let shareUrl = '';

    switch(platform) {
        case 'facebook':
            shareUrl = `https://www.facebook.com/sharer/sharer.php?u=${url}`;
            break;
        case 'twitter':
            shareUrl = `https://twitter.com/intent/tweet?url=${url}&text=Check out this Wildlife Conservation Report!`;
            break;
        case 'linkedin':
            shareUrl = `https://www.linkedin.com/shareArticle?url=${url}&title=Wildlife Conservation Report`;
            break;
    }

    window.open(shareUrl, '_blank');
}

function shareOnWhatsApp() {
    let url = encodeURIComponent('http://example.com/wildlife-report');
    let shareUrl = `https://api.whatsapp.com/send?text=Check out this Wildlife Conservation Report! ${url}`;
    window.open(shareUrl, '_blank');
}
</script>
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
