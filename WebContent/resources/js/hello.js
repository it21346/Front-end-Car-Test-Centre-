$(document).ready(function() {
    $.ajax({
        url: "http://localhost:8080/intranet/api/customer/all"
    }).then(function(data) {
       $('.customer-name').append(data.name);
       $('.customer-surname').append(data.surname);
       $('.customer-email').append(data.email);
    });
});