$(document).ready(function () {
    console.log("I was loaded");
    $('#evidence-filter').on("ajax:success", function (e, data, stat, xhr) {
        $('#evidence tbody').replaceWith(data);
    })
})
