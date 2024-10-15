function validateForm() {
    let firstName = document.getElementById('first_name').value;
    let lastName = document.getElementById('last_name').value;
    let phoneNumber = document.getElementById('phone_number').value;
    let email = document.getElementById('email_id').value;
    let address = document.getElementById('address').value;

    if (firstName == "" || lastName == "" || phoneNumber == "" || email == "" || address == "") {
        alert("All fields must be filled out");
        return false;
    }

    let phonePattern = /^[0-9]{10}$/;
    if (!phonePattern.test(phoneNumber)) {
        alert("Please enter a valid 10-digit phone number");
        return false;
    }

    return true;
}
