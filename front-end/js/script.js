// Initialize Firebase
// (Credentials are omitted for security. Replace with your own credentials if needed.)

// Function to toggle between light and dark mode
function toggleDarkMode() {
  document.body.classList.toggle('dark-mode');
}

// Function to track a job based on job ID (Firebase functionality)
function trackJob() {
  const jobId = prompt("Enter your Job ID:");
  if (!jobId) return;
  db.collection("jobs").doc(jobId).get().then((doc) => {
    if (doc.exists) {
      alert("Job Details:\n" + JSON.stringify(doc.data(), null, 2));
    } else {
      alert("Job not found!");
    }
  }).catch((error) => {
    console.error("Error retrieving job:", error);
    alert("Error retrieving job data.");
  });
}

// Function to handle the repair booking form submission
function bookRepair(e) {
  e.preventDefault();

  // Collecting values from the form fields
  const name = document.getElementById('name').value;
  const email = document.getElementById('email').value;
  const phone = document.getElementById('phone').value;
  const device = document.getElementById('device').value;
  const issue = document.getElementById('issue').value;

  // Add the booking data to Firebase Firestore (replacing with actual Firebase details)
  db.collection("bookings").add({
    name,
    email,
    phone,
    device,
    issue,
    timestamp: new Date()
  }).then(() => {
    alert("Booking submitted successfully!");
    document.getElementById('bookingForm').reset();
  }).catch((error) => {
    console.error("Error booking repair:", error);
    alert("Error submitting booking. Please try again.");
  });

  return false;
}

