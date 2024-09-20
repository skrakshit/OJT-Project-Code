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
    doc.setFontSize(16);
    doc.setFont("helvetica", "bold");
    doc.setTextColor(0, 0, 0);  // Black text color
    doc.setFontSize(14);
    doc.text('Department of Wildlife Conservation', 10, 30);
    doc.setFontSize(12);
    

    // Add a line break after the header
    doc.setDrawColor(0, 0, 0);  // Black color for the line
    doc.line(10, 45, 200, 45);

    // Add Report Date
    doc.setFontSize(12);
    doc.setTextColor(0, 0, 0);
    doc.text(`Report Date: ${new Date().toLocaleDateString()}`, 10, 55);

    // Add Reporter Information section
    doc.setFontSize(12);
    doc.setFont("helvetica", "bold");
    doc.text('Reporter Information', 10, 70);

    doc.setFont("helvetica", "normal");
    doc.text(`Full Name: ${fullName}`, 10, 80);
    doc.text(`Email Address: ${email}`, 10, 90);
    doc.text(`Contact Number: ${contactNumber}`,10, 100);

    // Add Incident Details section as a table
    doc.setFont("helvetica", "bold");
    doc.text('Incident Details', 10, 115);

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
    const startY = 125;
    const cellHeight = 10;
    const cellPadding = 2;
    const tableWidth = 190;
    const columnWidth = tableWidth / 2;

    // Draw table headers
    doc.setFontSize(12);
    doc.setFont("helvetica", "bold");
    doc.setFillColor(200, 200, 200);  // Light gray color for the header background
    doc.rect(startX, startY, tableWidth, cellHeight, 'F');  // Draw table header background
    doc.setTextColor(0, 0, 0);  // Black text color
    doc.text(tableHeaders[0], startX + cellPadding, startY + 7);
    doc.text(tableHeaders[1], startX + columnWidth + cellPadding, startY + 7);

    // Draw table rows
    doc.setFont("helvetica", "normal");
    let yPosition = startY + cellHeight;
    tableData.forEach(row => {
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
