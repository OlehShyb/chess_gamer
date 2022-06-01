function validatePhone()
{
    var phoneNumber = document.getElementById('phone_number').value;
    var phoneRGEX = /^\+?\d.\s?\(?\d{3}\)?[-.\s]?\d{3}[-.\s]?\d{4}?$/;
    var phoneResult = phoneRGEX.test(phoneNumber);
    if(document.getElementById('phone_number').value !== "")
        if(phoneResult === false)
        {
            document.getElementById('phone_number').value = "";
            alert("\t\t\t\t    Wrong!!!⛔⛔⛔⛔⛔\n\t\t\t  Enter your mobile phone number \n\t\t   in the correct format: +38 999 999 9999");
        }
}


