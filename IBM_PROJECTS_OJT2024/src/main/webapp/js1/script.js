function generatePDF() {
    // Get form values
    const fullName = document.getElementById('fullName').value;
    const email = document.getElementById('email').value;
    const contactNumber = document.getElementById('contactNumber').value;
    const incidentType = document.getElementById('incidentType').value;
    const species = document.getElementById('species').value;
    const location = document.getElementById('location').value;
    const dateTime = document.getElementById('dateTime').value;
    const description = document.getElementById('description').value;
    const severity = document.getElementById('severity').value;
    const witnesses = document.getElementById('witnesses').value;
    const witnessContact = document.getElementById('witnessContact').value;
    const actionRequired = document.getElementById('actionRequired').value;
    const additionalNotes = document.getElementById('additionalNotes').value;

    // Create a new jsPDF instance
    const { jsPDF } = window.jspdf;
    const doc = new jsPDF();

    // Add a formal header
    doc.setFont("helvetica", "bold");
    doc.setFontSize(18);
    doc.setTextColor(0, 51, 102);  // Dark Blue for the main title
    doc.text('Wildlife Conservation Report', 105, 20, null, null, 'center');

    // Add a subtitle for the department
    doc.setFontSize(14);
    doc.setTextColor(102, 102, 102);  // Gray for the subtitle
    doc.text('Department of Wildlife Conservation', 105, 30, null, null, 'center');

    // Add a line break after the header
    doc.setDrawColor(0, 51, 102);  // Dark Blue for the line
    doc.line(10, 40, 200, 40);

    // Add Report Date
    doc.setFontSize(12);
    doc.setTextColor(0, 0, 0);  // Black for the date
    doc.text(`Report Date: ${new Date().toLocaleDateString()}`, 10, 50);

    // Add Reporter Information section
    doc.setFont("helvetica", "bold");
    doc.setFontSize(14);
    doc.setTextColor(0, 51, 102);  // Dark Blue for section titles
    doc.text('Reporter Information', 10, 65);

    doc.setFont("helvetica", "normal");
    doc.setFontSize(12);
    doc.setTextColor(0, 0, 0);  // Black for normal text
    doc.text(`Full Name: ${fullName}`, 10, 75);
    doc.text(`Email Address: ${email}`, 10, 85);
    doc.text(`Contact Number: ${contactNumber}`, 10, 95);

    // Add Incident Details section
    doc.setFont("helvetica", "bold");
    doc.setFontSize(14);
    doc.setTextColor(0, 51, 102);  // Dark Blue for section titles
    doc.text('Incident Details', 10, 110);

    // Create a table for incident details
    const tableHeaders = ['Field', 'Details'];
    const tableData = [
        ['Type of Wildlife Incident:', incidentType],
        ['Species Identified:', species],
        ['Location of Incident:', location],
        ['Date and Time of Incident:', dateTime],
        ['Severity Level:', severity],
        ['Description of Incident:', description],
        ['Witness Names:', witnesses],
        ['Witness Contact Information:', witnessContact],
        ['Action Required:', actionRequired],
        ['Additional Notes:', additionalNotes]
    ];

    const startX = 10;
    const startY = 120;
    const cellHeight = 10;
    const cellPadding = 3;
    const tableWidth = 190;
    const columnWidth = tableWidth / 2;

    // Draw table headers
    doc.setFont("helvetica", "bold");
    doc.setFontSize(12);
    doc.setFillColor(0, 102, 204);  // Medium Blue for the header background
    doc.rect(startX, startY, tableWidth, cellHeight, 'F');  // Draw table header background
    doc.setTextColor(255, 255, 255);  // White text color for headers
    doc.text(tableHeaders[0], startX + cellPadding, startY + 7);
    doc.text(tableHeaders[1], startX + columnWidth + cellPadding, startY + 7);

    // Draw table rows
    doc.setFont("helvetica", "normal");
    doc.setFontSize(12);
    doc.setTextColor(0, 0, 0);  // Black text color for table data
    let yPosition = startY + cellHeight;
    tableData.forEach(row => {
        doc.setFillColor(240, 240, 240);  // Light Gray for alternating row background
        doc.rect(startX, yPosition, tableWidth, cellHeight, 'F');  // Draw row background
        doc.text(row[0], startX + cellPadding, yPosition + 7);
        doc.text(row[1], startX + columnWidth + cellPadding, yPosition + 7, { maxWidth: columnWidth - cellPadding * 2 });
        yPosition += cellHeight;
    });

    // Add Footer with Page Number and Timestamp
    const pageCount = doc.internal.getNumberOfPages();
    for (let i = 1; i <= pageCount; i++) {
        doc.setPage(i);
        doc.setFontSize(10);
        doc.setTextColor(128, 128, 128);  // Grey color for the footer text
        doc.text(`Page ${i} of ${pageCount}`, 10, 290);
        doc.text(`Generated on: ${new Date().toLocaleString()}`, 150, 290);
    }

    // Save the PDF to a blob (for sharing)
    pdfData = doc.output('blob');

    // Trigger download for local save
    doc.save('wildlife_conservation_report.pdf');
}
