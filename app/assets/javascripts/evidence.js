$(document).ready(function () {
    $('#evidence-filter').on("ajax:success", function (e, data, stat, xhr) {
        $('#evidence').html(data);
    })
})
